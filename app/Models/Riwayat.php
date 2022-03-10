<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Riwayat extends Model
{
    protected $table = 'riwayat';

	public $timestamps = true;

	protected $primaryKey = 'id';

	protected $fillable = ['id_biodata', 'tanggal','berat_badan','tinggi_badan','tekanan_darah','denyut_nadi','pernapasan','saturasi_oksigen','hemoglobin','glukosa','asam_urat','kolesterol','suhu_tubuh','leukosit','trombosit','hematokrit','eritrosit','mcv','mch','mchc','trigliserida','ldl','hdl','hba1c','ureum','kreatinin','komentar','keluhan','dokter'];

	public function biodata() {
	    return $this->belongsTo(Biodata::class,'id_biodata');
	}
}
