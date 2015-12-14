<?php
namespace App\Controller\Admin;


use App\Models\Posts;
use Symfony\Component\HttpFoundation\RedirectResponse;

class PostController extends BaseController
{

    public function index()
    {
        $data = Posts::with('postUser')->with('postCate')->paginate();
        return $this->render('Admin/Post/index',array('list'=>$data));

    }

    public function add()
    {
        return $this->render('Admin/Post/add');
    }

    public function addData()
    {

        $data = $this->request()->request->all();
        $data['user_id'] = $this->request()->getSession()->get('uid');
        $id = Posts::create($data);
        return new RedirectResponse('/admin/post');
    }
}
