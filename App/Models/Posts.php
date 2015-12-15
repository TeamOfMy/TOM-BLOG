<?php
namespace App\Models;

class Posts extends \Illuminate\Database\Eloquent\Model
{
    protected $table='posts';
    protected $primaryKey = 'id';
//    public $timestamps= ;
    protected $guarded = ['id'];

    /**
     * 博客发布对应的用户信息
     * 一对一
     *
     * <p>
     * 关联用户表
     * 在获取时用 with('postUser') 用于twig 中可以直接调用
     * </p>
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function postUser()
    {
        return $this->hasOne('App\Models\Users','id','user_id');
    }

    /**
     * 博客发布对应的分类信息
     * 一对一
     *
     * <p>
     * 关联分类表
     * 在获取时用 with('postCate') 用于twig 中可以直接调用
     * </p>
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function postCate()
    {
        return $this->hasOne('App\Models\Cates','id','cate_id');
    }

}