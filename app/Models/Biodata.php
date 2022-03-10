<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Biodata extends Model
{
    protected $table = 'biodata';

	public $timestamps = true;

	protected $primaryKey = 'id';

	protected $fillable = ['id_user', 'no_rekam_medis','tgl_lahir','jenis_kelamin','status_pernikahan','id_status','agama','pendidikan_terakhir','pekerjaan','alamat','verifikasi','no_ktp','no_bpjs'];

	public function riwayat() {
	    return $this->hasMany(Riwayat::class,'id_biodata');
	}

	public function user() {
	    return $this->belongsTo('App\User','id_user');
	}

	public function status() {
	    return $this->belongsTo(Status::class,'id_status');
	}
	
}
