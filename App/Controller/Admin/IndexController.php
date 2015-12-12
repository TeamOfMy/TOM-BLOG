<?php
namespace App\Controller\Admin;


class IndexController extends BaseController
{

    public function index()
    {
        return $this->render('Admin/Index/index');

    }

}
