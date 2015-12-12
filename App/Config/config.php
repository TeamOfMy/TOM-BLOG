<?php
if(!defined('BASEDIR')){
    exit('File not found');
}
//$config = include BASEDIR . '/app/cache/cli-files/php-conf-cache.php';

$config['WEB_CDN_STATIC'] = '/public/';
$config['REMOTE_PIC_URL'] = '/public/';
$config['debug'] = true;
return $config;