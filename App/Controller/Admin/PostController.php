<?php
namespace App\Controller\Admin;


class PostController extends BaseController
{

    public function index()
    {
        return $this->render('Admin/Index/index');

    }

}
