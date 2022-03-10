<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'role';

	public $timestamps = true;

	protected $primaryKey = 'id';

	protected $fillable = ['rolename', 'keterangan'];


	public function user() {
	    return $this->belongsTo('App\User','id_role');
	}

}
