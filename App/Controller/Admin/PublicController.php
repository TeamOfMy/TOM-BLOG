<?php
namespace App\Controller\Admin;


use App\Models\Users;
use Symfony\Component\HttpFoundation\RedirectResponse;

class PublicController extends BaseController
{

    public function login()
    {
        return $this->render('Admin/Public/login');
    }

    public function checkLogin()
    {
        $request = $this->request();
        $session = $request->getSession();
        $username = $request->get('username');
        $password = $request->get('password');
        if (empty($username) || empty($password)) {
            return json_encode(array(
                'status' => 0,
                'msg' => '用户名或密码不能为空'
            ), JSON_UNESCAPED_UNICODE);
        }
        $userinfo = Users::where('username',$username)->first();
        //如果获取不到用户信息，返回提示信息
        if (!$userinfo || $userinfo['password'] != md5($password)) {
            return array(
                'status' => 0,
                'msg' => '用户名或者密码错误！'
            );
        }
        $session->set('uid',$userinfo['id']);
        return new RedirectResponse('/admin');
    }

}
