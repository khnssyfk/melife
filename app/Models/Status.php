<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Status extends Model
{
    protected $table = 'status';

	public $timestamps = true;

	protected $primaryKey = 'id';

	protected $fillable = ['nama'];

	public function biodata() {
	    return $this->belongsTo(Biodata::class,'id_status');
	}
}
