<?php
namespace App\Controller\Admin;


class PostController extends BaseController
{

    public function index()
    {
        return $this->render('Admin/Post/index');

    }

    public function add()
    {
        return $this->render('Admin/Post/add');

    }
}
