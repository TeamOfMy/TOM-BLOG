<?php
if (!defined('BASEDIR')) {
    exit('File not found');
}
// 暂时没用
return array(
    'fetch' => \PDO::FETCH_CLASS,
    'default' => 'mysql',
    'connections' => array(

        'mysql' => array(
            'driver' => 'mysql',
            'host' => '10.1.10.145',
            'port' => '3366',
            'database' => 'mf',
            'username' => 'halin',
            'password' => '123456',
            'charset' => 'utf8',
            'collation' => 'utf8_general_ci',
            'prefix' => ''
        )

    )

);