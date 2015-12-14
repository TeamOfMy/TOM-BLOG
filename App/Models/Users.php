<?php
namespace App\Models;

class Users extends \Illuminate\Database\Eloquent\Model
{
    protected $table='users';
    protected $primaryKey = 'id';
    public $timestamps= false;

}