<?php

namespace Core\Exceptions;

class ServiceException extends \RuntimeException
{

    public function getHttpCode()
    {
        return 404;
    }

    public function getHeaders()
    {
        return null;
    }

}