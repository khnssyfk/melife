<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Player extends Model
{
    protected $table = 'player';

	public $timestamps = true;

	protected $primaryKey = 'id';

	protected $fillable = ['id_user', 'player_id'];


	public function user() {
	    return $this->belongsTo('App\User','id_user');
	}
}
