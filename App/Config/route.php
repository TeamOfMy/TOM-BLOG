<?php
if (!defined('BASEDIR')) {
    exit('File not found');
}

// 所有路由都在这里配置

// 任务api
$app->get('/admin', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\IndexController@index']);
$app->get('/admin/post', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\PostController@index']);
$app->get('/admin/post_add', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\PostController@add']);
$app->get('/admin/medal', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\MedalController@index']);
$app->get('/admin/medal_upload', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\MedalController@medalUpload']);