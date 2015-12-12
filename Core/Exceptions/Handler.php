<?php
namespace Core\Exceptions;

use Exception;
use Illuminate\Container\Container;
use Core\Exceptions\ErrorHandler;
use Symfony\Component\HttpFoundation\Response;

class Handler
{
    protected static $container;

    public function __construct(Container $container)
    {
        self::$container = $container;
    }

    /**
     * 记录异常日志
     * @param Exception $e
     */
    public function report(Exception $e)
    {
        Container::getInstance()->make('log')->error((string)$e);
    }

    public function render($request, Exception $e)
    {
        if (!method_exists($e, 'getHttpCode')) {
            $exc = new FlattenException();
        } else {
            $exc = $e;
        }
        return Response::create(ErrorHandler::exceptionError($e), $exc->getHttpCode())->setCharset('utf-8');
    }
}