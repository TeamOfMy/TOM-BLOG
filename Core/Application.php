<?php

namespace Core;

use Closure;
use Core\Config\Repository;
use Core\Exceptions\MethodNotAllowedException;
use Core\Exceptions\NotFoundHttpException;
use Core\Route\Url;
use Exception;
use ErrorException;
use FastRoute\Dispatcher;
// 调用了 laravel 依赖注入的容器机制
use Illuminate\Container\Container;

// 使用symfony的请求和响应类
use Illuminate\Database\DatabaseServiceProvider;
use Illuminate\Support\Facades\Facade;
use Illuminate\Support\ServiceProvider;
use Monolog\Formatter\LineFormatter;
use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Symfony\Component\HttpFoundation\Request as SymfonyRequest;
use Symfony\Component\HttpFoundation\Response as SymfonyResponse;
use Symfony\Component\HttpFoundation\Session\Session;

class Application extends Container
{
    /**
     * 请求对象
     * @var Request
     */
    protected $request;
    /**
     * 路由
     * @var
     */
    protected $router;

    /**
     * 分发
     *
     * @var
     */
    protected $dispatcher;

    /**
     * 路由的分组 做到可以简写controller的名字
     * @var
     */
    protected $decoratorParams;
    /**
     * 注册所有的路由
     *
     * @var array
     */
    protected $routes = [];

    /**
     * 路由名称对应的路由
     *
     * @var
     */
    public $namedRoutes;

    /**
     * 已执行过的 服务绑定方法
     *
     * @var array
     */
    protected $ranServiceBinders = [];

    /**
     * 加载过的配置的路径
     * @var
     */
    protected $configPath;

    /**
     * 请求最终执行的controller
     * @var
     */
    public $currentController;

    /**
     * 请求最终执行的方法method
     *
     * @var
     */
    public $currentMethod;

    /**
     * 应用默认路径
     * @var
     */
    protected $basePath;

    /**
     * 加载过的服务注册器
     * @var array
     */
    protected $loadedProviders = [];

    /**
     * 记录那些 加载过 的配置选项
     *
     * @var array
     */
    protected $loadedConfigurations = [];

    public function __construct()
    {
        // 分配时间区
        date_default_timezone_set('Asia/Shanghai');

//        $this->basePath = $basePath;

        // 实例化本身的容器
        $this->bootstrapContainer();
        // 注册错误处理的 工具
        $this->registerErrorHandling();
        // 加载配置文件config.php
        $this->configure('config');
    }

    /**
     * 框架中的核心容器
     *
     * @return void
     */
    protected function bootstrapContainer()
    {
        // 初始化本类
        static::setInstance($this);

        // 把本应用绑定到系统中也作为一种服务
        $this->instance('app', $this);

        // 注册容器中的服务别名
        $this->registerContainerAliases();
    }

    /**
     * 注册核心的错误异常处理
     *
     * @return void
     */
    protected function registerErrorHandling()
    {
        error_reporting(-1);

        set_error_handler(function ($level, $message, $file = '', $line = 0) {
            if (error_reporting() & $level) {
                throw new ErrorException($message, 0, $level, $file, $line);
            }
        });

        set_exception_handler(function ($e) {
            $this->handleUncaughtException($e);
        });

        register_shutdown_function(function () {
            if (!is_null($error = error_get_last()) && $this->isFatalError($error['type'])) {
                // TODO 构建处理错误的handler
//                $this->handleUncaughtException($handler);
            }
        });
    }

    /**
     * 从容器中解析给定的类型
     *
     * @param  string $abstract
     * @param  array $parameters
     * @return mixed
     */
    public function make($abstract, $parameters = [])
    {
        if (array_key_exists($abstract, $this->availableBindings) &&
            !array_key_exists($this->availableBindings[$abstract], $this->ranServiceBinders)
        ) {
            $this->{$method = $this->availableBindings[$abstract]}();

            $this->ranServiceBinders[$method] = true;
        }
        return parent::make($abstract, $parameters);
    }

    /**
     * 运行应用程序和发送响应 系统的核心部分
     *
     * @param  SymfonyRequest|null $request
     * @return void
     */
    public function goRun($request = null)
    {
        // TODO 修改session机制 复制的原来的 坑爹的写法
        $domain_true = explode(':', $_SERVER['HTTP_HOST']);
        $domain = explode('.', $domain_true[0]);
        $len = count($domain);
        for ($i = 0; $i < $len; $i++) {
            $status[] = is_numeric($domain[$i]);
        }
        if (in_array(false, $status)) {

            $_W['v_remember_encrypt'] = '.' . $domain[$len - 2] . '.' . $domain[$len - 1];//将domain注册到配置文件
        } else {
            $_W['v_remember_encrypt'] = $domain_true[0];
        }
        $GLOBALS['CUR_DOMAIN'] = $_W['v_remember_encrypt'];
        $GLOBALS['REMOTE_JS_URL'] = 'http://v' . $_W['v_remember_encrypt'];
        $GLOBALS['CUR_URL'] = 'http://' . $_SERVER['HTTP_HOST'];
        ini_set('session.cookie_domain', $_W['v_remember_encrypt']);//限制二级域名;

        // TODO 处理request的扩展性 支持其他的request
        $request = $this->make('request');
        $response = $this->dispatch($request);
        if ($response instanceof SymfonyResponse) {

            $response->send();
        } else {
            echo (string)$response;
        }
    }

    /**
     * 分发请求
     *
     * @param  SymfonyRequest|null $request
     * @return Response
     */
    public function dispatch($request = null)
    {
        if ($request) {
            $this->instance('Illuminate\Http\Request', $request);
            $this->ranServiceBinders['registerRequestBindings'] = true;

            $method = $request->getMethod();
            $pathInfo = rtrim($request->getPathInfo(), '/');
        } else {
            $method = $this->getMethod();
            $pathInfo = $this->getPathInfo();
        }
        if($pathInfo == ''){
            $pathInfo = '/';
        }
        try {
            // 非传参数类的路由直接调用 提高效率  如 /task
            if (isset($this->routes[$method . $pathInfo])) {
                return $this->handleFoundRoute([true, $this->routes[$method . $pathInfo]['action'], []]);
            } else {
                // 根据匹配去调用路由  /task/end/(123)
                return $this->handleDispatcherResponse(
                // 调用 fastRoute 类 进行匹配
                    $this->createDispatcher()->dispatch($method, $pathInfo));
            }

        } catch (NotFoundHttpException $e) {
            return $this->sendExceptionToHandler($e);
        }
    }

    /**
     * 为应用程序创建FastRoute调度实例
     *
     * 使用的是fastRoute的路由模块来处理的 addRoute是fastRoute中的方法
     * @return Dispatcher
     */
    protected function createDispatcher()
    {
        return $this->dispatcher ?: \FastRoute\simpleDispatcher(function ($r) {
            // 循环注册路由到系统中
            foreach ($this->routes as $route) {
                $r->addRoute($route['method'], $route['uri'], $route['action']);
            }
        });
    }

    /**
     * 向处理程序发送异常并返回响应。
     *
     * @param  Exception $e
     * @return Response
     */
    protected function sendExceptionToHandler($e)
    {
        $handler = $this->make('ExceptionHandler');

        $handler->report($e);

        return $handler->render($this->make('request'), $e);
    }

    /**
     * 从FastRoute 分发结果类型来处理响应
     *
     * @param  array $routeInfo
     * @throws
     * @return mixed
     */
    protected function handleDispatcherResponse($routeInfo)
    {
        switch ($routeInfo[0]) {
            case Dispatcher::NOT_FOUND:
                // TODO notFoundException 构建
                throw new NotFoundHttpException('你请求的地址不存在 路由错误');

            case Dispatcher::METHOD_NOT_ALLOWED:
                // TODO　需要构建方法不允许的的错误提示
                throw new MethodNotAllowedException('请求路由方法' . $routeInfo[1] . '不合法');

            case Dispatcher::FOUND:
                return $this->handleFoundRoute($routeInfo);
        }
    }

    /**
     * 根据路由去触发程序
     *
     * @param  array $routeInfo
     * @return mixed
     */
    protected function handleFoundRoute($routeInfo)
    {
        $this->currentRoute = $routeInfo;

        /**
         * 判断是否有修饰器，如果有就迭代的执行各个修饰器
         */
        $action = $routeInfo[1];
        if (isset($action['decorator'])) {
            $decorator = $action['decorator'];
            return $this->prepareResponse($this->execDecorator($decorator, function () use ($routeInfo) {
                return $this->callActionOnArrayBasedRoute($routeInfo);
            }));
        }

        return $this->prepareResponse(
            $this->callActionOnArrayBasedRoute($routeInfo)
        );
    }

    /**
     * 执行修饰器
     * <p>
     *  array_reduce 主要是把各个修饰器进行组装 每次上一个的结果就是下一个的参数
     *  就快一个形成 d3( d2( d1() ) ) 这样的调用结构；
     *  所以调用的修饰器是有顺序的
     *  如果
     * </p>
     * @param array $decorators
     * @param Closure $function
     * @return object response
     */
    protected function execDecorator(array $decorators, Closure $function)
    {
        $firstSlice = $this->makeClosure($function);
        return call_user_func(
            array_reduce($decorators, $this->getCallback(), $firstSlice), $this->make('request')
        );
    }

    /**
     * 迭代的去处理修饰器组件的方法
     *
     * 把每个修饰器都封装成一个 闭包函数
     * 这样的话 在execDecorator中用array_reduce 调用时就是以下结构：
     *  function(){ //d3
     *      function(){ //d2
     *          function(){ //d1
     *          }
     *      }
     *  }
     * 参数都带入了一个request对象
     *
     * @return \Closure
     */
    protected function getCallback()
    {
        return function ($result, $decorator) {
            return function ($request) use ($result, $decorator) {

                if ($decorator instanceof Closure) {
                    return call_user_func($decorator, $request, $result);
                } else {
                    list($name, $parameters) = $this->parseParameters($decorator);
                    if (strpos($name, '@')) {
                        list($name, $method) = explode('@', $name);
                    } else {
                        $method = 'doRun';
                    }
                    return call_user_func_array([$this->make($name), $method],
                        array_merge([$request, $result], $parameters));
                }
            };
        };
    }

    /**
     * 把请求方法封装成一个闭包
     *
     * @param  \Closure $destination
     * @return \Closure
     */
    protected function makeClosure(Closure $destination)
    {
        return function ($request) use ($destination) {
            return call_user_func($destination, $request);
        };
    }

    /**
     * 分解修饰器和名字和方法
     *
     * @param  string $decorator
     * @return array
     */
    protected function parseParameters($decorator)
    {
        list($name, $parameters) = array_pad(explode(':', $decorator, 2), 2, []);

        if (is_string($parameters)) {
            $parameters = explode(',', $parameters);
        }

        return [$name, $parameters];
    }


    /**
     * 调用基于数组的路由的闭包。
     *
     * @param  array $routeInfo
     * @return mixed
     */
    protected function callActionOnArrayBasedRoute($routeInfo)
    {
        $action = $routeInfo[1];

        // 如果是直接使用 controller的方法  调用controller的方法
        if (isset($action['uses'])) {
            return $this->prepareResponse($this->callControllerAction($routeInfo));
        }

        // TODO　如果不是controller的方式的话 回调函数的处理
        foreach ($action as $value) {
            // 如果是回调函数 直接就执行了
            if ($value instanceof Closure) {
                $closure = $value->bindTo(new Route\Closure);
                break;
            }
        }
        try {
            return $this->prepareResponse($this->call($closure, $routeInfo[2]));
        } catch (NotFoundHttpException $e) {
            throw new NotFoundHttpException;
        }
    }

    /**
     * 呼叫控制器为基础的路由。
     *
     * @param  array $routeInfo
     * @throws
     * @return mixed
     */
    protected function callControllerAction($routeInfo)
    {
        list($controller, $method) = explode('@', $routeInfo[1]['uses']);
        $this->currentController = $controller;
        $this->currentMethod = $method;
        if (!method_exists($instance = $this->make($controller), $method)) {
            throw new NotFoundHttpException;
        }
        return $this->callControllerCallable(
            [$instance, $method], $routeInfo[2]
        );

    }

    /**
     * 根据给定的参数调用对应的controller
     *
     * @param  array $callable
     * @param  array $parameters
     * @return mixed
     */
    protected function callControllerCallable(array $callable, array $parameters)
    {
        try {
            return $this->prepareResponse(
                $this->call($callable, $parameters)
            );
        } catch (HttpResponseException $e) {
            return $e->getResponse();
        }
    }

    /**
     * 准备发送的响应。
     *
     * 这儿可以扩展成其他的很多响应类型
     *
     * @param  mixed $response
     * @return Response
     */
    public function prepareResponse($response)
    {
        if (!$response instanceof SymfonyResponse) {
            $response = new SymfonyResponse($response);
        }
        return $response;
    }

    /**
     * 设置路由的 前置 和 后置修饰器
     *
     * 循环内部的路由 都设置上修饰器
     *
     * @param array $params 修饰器参数
     * @param Closure $callback
     */
    public function routeDecorator(array $params, Closure $callback)
    {
        $this->decoratorParams = $params;
        call_user_func($callback, $this);
        $this->decoratorParams = null;
    }

    /**
     * 注册GET 方式请求的路由到系统
     *
     * @param  string $uri
     * @param  mixed $action
     * @return $this
     */
    public function get($uri, $action)
    {
        $this->addRoute('GET', $uri, $action);

        return $this;
    }

    /**
     * 注册POST 方式请求的路由到系统
     *
     * @param  string $uri
     * @param  mixed $action
     * @return $this
     */
    public function post($uri, $action)
    {
        $this->addRoute('POST', $uri, $action);

        return $this;
    }

    /**
     * 添加注册进来的路由到收集器中
     * $this->routes 就是收集器
     *
     * @param  string $method
     * @param  string $uri
     * @param  mixed $action
     */
    public function addRoute($method, $uri, $action)
    {
        $action = $this->parseAction($action);

        if (isset($this->decoratorParams)) {
            if (isset($this->decoratorParams['prefix'])) {
                $uri = trim($this->decoratorParams['prefix'], '/') . '/' . trim($uri, '/');
            }

            // 合并到路由域中 可以给路由分组的
            $action = $this->mergeDecoratorParams($action);
        }

        $uri = '/' . trim($uri, '/');

        if (isset($action['as'])) {
            $this->namedRoutes[$action['as']] = $uri;
        }
        if (is_array($method)) {
            foreach ($method as $me) {
                $this->routes[$me . $uri] = ['method' => $me, 'uri' => $uri, 'action' => $action];
            }
        } else {
            $this->routes[$method . $uri] = ['method' => $method, 'uri' => $uri, 'action' => $action];
        }
    }

    /**
     * 在定义路由的时候 合并统一的修饰器
     *
     * @param array $action
     * @return array
     */
    protected function mergeDecoratorParams(array $action)
    {
        if (isset($this->decoratorParams['decorator'])) {
            // 如果已经有设置了修饰，就合并公有的修饰
            if (isset($action['decorator'])) {
                $action['decorator'] = array_merge($action['decorator'], $this->decoratorParams['decorator']);
            } else {
                // 如果没有修饰的
                $action['decorator'] = $this->decoratorParams['decorator'];
            }
        }

        return $action;
    }

    /**
     * 匹配方法到一个数组中
     *
     * @param  mixed $action
     * @return array
     */
    protected function parseAction($action)
    {
        if (is_string($action)) {
            return ['uses' => $action];
        } elseif (!is_array($action)) {
            return [$action];
        }

        return $action;
    }

    /**
     * 获取 http 请求的方法
     *
     * @return string
     */
    protected function getMethod()
    {
        if (isset($_POST['_method'])) {
            return strtoupper($_POST['_method']);
        } else {
            return $_SERVER['REQUEST_METHOD'];
        }
    }

    /**
     * 获取请求的pathinfo
     *
     * @return string
     */
    public function getPathInfo()
    {
        $query = isset($_SERVER['QUERY_STRING']) ? $_SERVER['QUERY_STRING'] : '';

        return '/' . trim(str_replace('?' . $query, '', $_SERVER['REQUEST_URI']), '/');
    }

    /**
     * 处理未捕获的异常器
     *
     * TODO 这里可以重写handler
     *
     * @param  Exception $e
     * @return void
     */
    protected function handleUncaughtException($e)
    {
        $handler = $this->make('ExceptionHandler');

        $handler->report($e);
        $handler->render($this->make('request'), $e)->send();
    }

    /**
     * 确定错误类型，是否致命
     *
     * @param  int $type
     * @return bool
     */
    protected function isFatalError($type)
    {
        return in_array($type, [E_ERROR, E_CORE_ERROR, E_COMPILE_ERROR, E_PARSE]);
    }

    /**
     * 注册错误处理器
     *
     * @return void
     */
    protected function registerErrorBindings()
    {
        if (!$this->bound('ExceptionHandler')) {
            $this->singleton(
                'ExceptionHandler', 'Core\Exceptions\Handler'
            );
        }
    }

    /**
     * 注册请求类到容器中
     *
     * @return void
     */
    protected function registerRequestBindings()
    {
        $this->singleton('request', function () {
            $request = Request::createFromGlobals();
            $request->setSession(new Session());
            return $request;
        });
    }

    /**
     * 加载配置文件到系统中
     *
     * @param string $name 配的选项key名  如：database
     * @return void
     */
    public function configure($name)
    {
        if (isset($this->loadedConfigurations[$name])) {
            return;
        }

        $this->loadedConfigurations[$name] = true;
        $path = $this->getConfigurationPath($name);
        if ($path) {
            $this->make('config')->set($name, require $path);
        }
    }

    /**
     * 通过配置和注册器注册相应的服务
     *
     * @param  string $config
     * @param  array|string $providers
     * @param  string|null $return
     * @return mixed
     */
    protected function loadComponent($config, $providers, $return = null)
    {
        $this->configure($config);

        foreach ((array)$providers as $provider) {
            $this->register($provider);
        }

        return $this->make($return ?: $config);
    }

    /**
     * 同构服务注册器注册服务到系统中
     *
     * @param  \Illuminate\Support\ServiceProvider|string $provider
     * @param  array $options
     * @param  bool $force
     * @return \Illuminate\Support\ServiceProvider
     */
    public function register($provider, $options = [], $force = false)
    {
        // 调用illuminate 的服务注册器，会注入本类的
        if (!$provider instanceof ServiceProvider) {
            $provider = new $provider($this);
        }

        if (array_key_exists($providerName = get_class($provider), $this->loadedProviders)) {
            return;
        }

        $this->loadedProviders[$providerName] = true;

        $provider->register();
        $provider->boot();
    }

    /**
     * 注册配置加载到容器中
     *
     * @return void
     */
    protected function registerConfigBindings()
    {
        $this->singleton('config', function () {
            return new Repository();
        });
    }

    /**
     * 根据给出的 配置选项的值获取对应的加载文件的路径
     *
     * @param  string $name
     * @return string
     */
    protected function getConfigurationPath($name)
    {
        $appConfigPath = ($this->configPath ?: $this->basePath('config')) . '/' . $name . '.php';
        if (file_exists($appConfigPath)) {
            return $appConfigPath;
        } elseif (file_exists($path = __DIR__ . '/../App/Config/' . $name . '.php')) {
            return $path;
        }
    }

    /**
     * 获取系统的准确路径
     * 用于加载配置文件之类的
     *
     * @param  string $path
     * @return string
     */
    public function basePath($path = null)
    {
        if (isset($this->basePath)) {
            return $this->basePath . ($path ? '/' . $path : $path);
        }

        // TODO 命令行模式可能会有问题 需要重写处理

        $this->basePath = realpath(getcwd() . '/../');


        return $this->basePath($path);
    }

    /**
     * 注册模板引擎
     *
     * @return void
     */
    protected function registerViewBindings()
    {
        $this->configure('template');
        $this->singleton('view', function () {
            $loader = new \Twig_Loader_Filesystem ($this->config['template.template_dir']);
            $twig = new \Twig_Environment ($loader, array(
                'cache' => $this->config['template.cache_dir'],// twig生成的缓存的路径
                'debug' => $this->config['config.debug'], // twig的debug模式是否开启
                'auto_reload' => $this->make('config')['auto_reload'],
            ));

            // 注册常用的全局变量到twig中 {{__CSS__}}
//            $twig->addGlobal('__CSS__', BASEDIR . '/App/Public/css');
//            $twig->addGlobal('__JS__', BASEDIR . '/App/Public/js');
//            $twig->addGlobal('__IMAGE__', BASEDIR . '/App/Public/image');

            $twig->addGlobal('STATIC_PATH', $this->config['config.WEB_CDN_STATIC']);
            $twig->addGlobal('IMG_PATH', $this->config['config.REMOTE_PIC_URL']);
            $twig->addGlobal('PICTURE_CDN_PATH', $this->config['config.PIC_CDN_STATIC']);

            // 注册到twig中的自定义的函数 可以注册很多个

            // 注册url生成函数 U
            $url = new \Twig_SimpleFunction('U', array($this->make('url'), 'route'));
            $twig->addFunction($url);

            return $twig;

        });
    }

    /**
     * 注册Url构建组件
     * 用于构建一个url生成的类方法
     *
     */
    protected function registerUrlBindings()
    {
        $this->singleton('url', function () {
            return new Url($this);
        });
    }

    /**
     * 注册 DB 到容器中
     *
     * @return void
     */
    protected function registerDatabaseBindings()
    {
        // TODO 临时做了一个兼容原来配置的转换 以后要统一的
//        $db = array(
//            'fetch' => \PDO::FETCH_CLASS,
//            'default' => 'mysql',
//        );
//        $default = array(
//            'driver' => 'mysql',
//            'host' => $this->config['config.database_host'],
//            'database' => $this->config['config.database_name'],
//            'username' => $this->config['config.database_user'],
//            'password' => $this->config['config.database_password'],
//            'port' => $this->config['config.database_port'],
//            'charset' => 'utf8',
//            'collation' => 'utf8_unicode_ci',
//            'prefix' => '',
//        );
//        $this->config['database'] = $db;
//        $this->config['database.connections.mysql'] = $default;
//        $this->loadedConfigurations['database'] = true;

        $this->singleton('db', function () {
            $this->loadComponent('database', [
                'Illuminate\Database\DatabaseServiceProvider',
                'Illuminate\Pagination\PaginationServiceProvider'],
                'db');
        });

        Facade::setFacadeApplication($this);
        class_alias('Illuminate\Support\Facades\DB', 'DB');

    }

    /**
     * 注册事件出发去
     *
     * @return void
     */
    protected function registerEventBindings()
    {
        $this->singleton('events', function () {
            $this->register('Illuminate\Events\EventServiceProvider');

            return $this->make('events');
        });
    }

    /**
     * 注册核心容器中的别名
     *
     * @return void
     */
    protected function registerContainerAliases()
    {
        $this->aliases = [
            'Core\Config\Repository' => 'config',
            'Illuminate\Container\Container' => 'app',
        ];
    }

    /**
     * 注册日志记录工具 monolog 日志工具
     * @return void
     */
    protected function registerLogBindings()
    {
        $this->singleton('log', function () {
            return new Logger('h', [
                (new StreamHandler(BASEDIR . '/Cache/Logs/h_'.date('Y-m-d').'log', Logger::DEBUG))->setFormatter(new LineFormatter(null, null, true, true))
            ]);
        });
    }

    protected function registerRedisBindings()
    {
        $r_c = explode(':', $this->config['config.REDIS_CLI_IP_PORT']);
        $redis = array(
            'cluster' => false,
            'options' => array(
                \Redis::OPT_PREFIX => '',
                \Redis::OPT_SERIALIZER => \Redis::SERIALIZER_NONE,
            ),
            'timeout' => 5,
            'default' => array(
                'host' => $r_c[0],
                'port' => $r_c[1],
                'database' => 0,
            )
        );
        $this->config['database.redis'] = $redis;
        $this->singleton('redis', function () {
            return new \Core\Redis\RedisService($this->config['database.redis']);
        });

    }

    protected function registerMailBindings()
    {
        $this->singleton('mail', function () {
            return new \Core\Mailer($this->config['config.mailer_host'],
                $this->config['config.mailer_user'], $this->config['config.mailer_password'], $this->config['config.mailer_transport']);
        });
    }


    protected function registerCaptchaBindings()
    {

        $this->singleton('captcha', function () {
            return new \Core\Captcha\Captcha($this);
        });
    }

    /**
     * 可用容器绑定及其各自的加载方法
     *
     * @var array
     */
    public $availableBindings = [
        'config' => 'registerConfigBindings',
        'db' => 'registerDatabaseBindings', // 注册 DB 类
        'ExceptionHandler' => 'registerErrorBindings',// 错误处理类 需要重写
        'log' => 'registerLogBindings',
        'Psr\Log\LoggerInterface' => 'registerLogBindings',
        'request' => 'registerRequestBindings', // 生成请求类
        'events' => 'registerEventBindings',
        'view' => 'registerViewBindings',
        'url' => 'registerUrlBindings',
        'redis' => 'registerRedisBindings',
        'mail' => 'registerMailBindings',
        'captcha' => 'registerCaptchaBindings'
    ];
}
