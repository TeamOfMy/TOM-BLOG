<?php
if (!defined('BASEDIR')) {
    exit('File not found');
}

// 所有路由都在这里配置

// 任务api
$app->get('/admin', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\IndexController@index']);
$app->get('/admin/post', ['as' => 'post', 'uses' => 'App\Controller\Admin\PostController@index']);
$app->get('/admin/post_add', ['as' => 'post_add', 'uses' => 'App\Controller\Admin\PostController@add']);
$app->post('/admin/post_add_data', ['as' => 'post_add_data', 'uses' => 'App\Controller\Admin\PostController@addData']);

$app->get('/admin/medal', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\MedalController@index']);
$app->get('/admin/medal_upload', ['as' => 'task_index', 'uses' => 'App\Controller\Admin\MedalController@medalUpload']);
$app->post('/admin/medal_upload_file', ['as' => '', 'uses' => 'App\Controller\Admin\MedalController@upload']);

$app->get('/admin/login', ['as' => 'login_index', 'uses' => 'App\Controller\Admin\PublicController@login']);
$app->post('/admin/check_login', ['as' => 'check_login', 'uses' => 'App\Controller\Admin\PublicController@checkLogin']);