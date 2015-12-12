<?php

namespace Core\Exceptions;

class FlattenException extends \RuntimeException
{
    protected $code;
    protected $message;

    /**
     * @return int
     */
    public function getHttpCode()
    {
        return 500;
    }

    public function getHeaders()
    {
        return null;
    }

}