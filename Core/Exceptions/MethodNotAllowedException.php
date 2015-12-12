<?php

namespace Core\Exceptions;

class MethodNotAllowedException extends \RuntimeException
{

    public function getHttpCode()
    {
        return 405;
    }

    public function getHeaders()
    {
        return null;
    }

}