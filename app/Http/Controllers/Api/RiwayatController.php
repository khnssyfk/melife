<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use DB;
use Auth;
use App\Models\Biodata;
use App\Models\Riwayat;
use Response;
use App\Helper;

class RiwayatController extends Controller
{

	public function riwayat()
    {
  		 $id_create = auth('api')->user()->id;

  		 $biodata = Biodata::where('id_user',$id_create)->first();

       $riwayats = Riwayat::select('tanggal')->where('id_biodata',$biodata->id)->orderBy('id','asc')->get();

       $nama = ['id_biodata', 'tanggal','berat_badan','tinggi_badan','tekanan_darah','denyut_nadi','pernapasan','saturasi_oksigen','hemoglobin','glukosa','asam_urat','kolesterol','suhu_tubuh','leukosit','trombosit','hematokrit','eritrosit','mcv','mch','mchc','trigliserida','ldl','hdl','hba1c','ureum','kreatinin','komentar','keluhan','dokter'];

       $list = array();
       foreach ($riwayats as $riwayat) {
        $tanggal = array();
        $tanggal['tanggal'] = $riwayat->tanggal;

        $riwayatss = Riwayat::where('id_biodata',$biodata->id)->where('tanggal',$riwayat->tanggal)->orderBy('id','asc')->get();
        $data = array();
        foreach ($riwayatss as $riwayatsss) {
          for ($i=0; $i < count($nama); $i++) {
          if ($nama[$i] != 'id_biodata') {
                  $data2 = array();
            $nama1 = $nama[$i];
            $data2['nama'] = $nama[$i];
             if ($nama[$i] == 'tanggal') {
               $data2['nilai'] = date('Y-m-d',strtotime($riwayatsss->$nama1));
             }else{

              $data2['nilai'] = $riwayatsss->$nama1;
             }
            array_push($data, $data2);
           } 
     
        }
        }
        

        $tanggal['data'] = $data;
         array_push($list, $tanggal);
       }

           return response()->json([
            'message' => 'List Riwayat',
            'detail' => $list
        ]);
    }

}
