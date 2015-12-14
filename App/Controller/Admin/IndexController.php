<?php
namespace App\Controller\Admin;


use App\Models\Users;

class IndexController extends BaseController
{

    public function index()
    {
        return $this->render('Admin/Index/index');

    }

}
