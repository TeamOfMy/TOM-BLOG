<?php 

namespace App\Models;

class Photos extends \Illuminate\Database\Eloquent\Model
{
    protected $table='photos';
    protected $primaryKey = 'id';
    protected $guarded = ['id'];
    
    public $timestamps= true;
}