<?php

namespace Core;

use Illuminate\Container\Container;
use Symfony\Component\HttpFoundation\Response as SymfonyResqonse;

class Controller
{
    protected $twig;
    protected $request;
    protected $response;
    protected $data = array();

    /**
     * 初始化，注入container
     *
     * @param Container $container
     */
    public function __construct(Container $container)
    {
        $this->container = $container;

        // 初始化 DB类 TODO 应该用 事件监听的方式来初始化 因为有可能在不需要db的情况下也初始化了
        $container->make('db');

        /**
         * 初始化一些公用的数据
         */
        if(method_exists($this, '__init__')) {
            call_user_func_array(array($this, '__init__'),array());
        }
    }

    public function make($name)
    {
        return $this->container->make($name);
    }

    /**
     * 给变量赋值
     *
     * @param string|array $var
     * @param string $value
     */
    public function assign($var, $value = NULL)
    {
        if(is_array($var)) {
            foreach($var as $key => $val) {
                $this->data[$key] = $val;
            }
        } else {
            $this->data[$var] = $value;
        }
    }

    /**
     * 渲染模板
     *
     * @param $tpl
     * @param $params
     * @return Response
     */
    public function render($tpl, $params = [])
    {
        $twig = $this->container->make('view');
        $params = array_merge($this->data, $params);
        // 必须以html.twig结尾
        return new SymfonyResqonse($twig->render($tpl . '.html.twig', $params, true));
    }

    /**
     * request 请求
     */
    public function request()
    {
        return $this->container->make('request');
    }

    /**
     * response 响应
     */
    public function response()
    {
        return $this->container->make('response');
    }

}
