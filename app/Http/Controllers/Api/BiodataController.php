<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Biodata;
use App\User;
use Auth;
use App\Helper;

class BiodataController extends Controller
{
    public function biodata(Request $request)   
    {

        if ($request->tgl_lahir != '') {
            $request['tgl_lahir'] = Helper::tglDB($request->tgl_lahir);
        }

        $user = Auth::user();

        if ($user->email != null) {
            $auth = User::where('id',$user->id)->first();
            $auth->email              = $request->email;
            $auth->update();
        }else{
            $auth = User::where('id',$user->id)->first();
            $auth->email              = $request->email;
            $auth->save();
        }



        $simpan_user = $user->id;

        $nomor = str_pad($simpan_user, 3, '0', STR_PAD_LEFT);
        $nama = explode(' ', $user->nama);
        $list_nama = [];
        foreach ($nama as $key => $value) {
        array_push($list_nama, $value[0]);
        }
        $list_nama = implode('', $list_nama);
        $tgl = explode('-', Helper::tglDB($request->tgl_lahir));
        $tgl = implode('', $tgl);
        $coba = $list_nama;
        $aku = strlen($coba);

        return$tahe = $list_nama.'XX'.$tgl.$nomor;
        if ($aku == 1) {
            $no_rekam_medis = $list_nama.'XX'.$tgl.$nomor;
        }
        else if($aku == 2){
            $no_rekam_medis = $list_nama.'X'.$tgl.$nomor;
        }else if($aku == 3){
            $no_rekam_medis  = $list_nama.$tgl.$nomor;
        }else{
            $value = substr($list_nama, 0,3);
            $no_rekam_medis = $value.$tgl.$nomor;
        }



        $biodata = Biodata::where('id_user',$user->id)->first();
        if ($biodata->no_rekam_medis == null || $biodata->no_rekam_medis == '') {
            $biodata->no_rekam_medis      = $no_rekam_medis;
            $biodata->no_bpjs             = $request->no_bpjs;
            $biodata->no_ktp              = $request->no_ktp;
            $biodata->jenis_kelamin       = $request->jenis_kelamin;
            if ($biodata->tgl_lahir == null) {
                $biodata->tgl_lahir           = $request->tgl_lahir;
            }
            $biodata->status_pernikahan   = $request->status_pernikahan;
            $biodata->agama               = $request->agama;
            $biodata->pendidikan_terakhir = $request->pendidikan_terakhir;
            $biodata->pekerjaan           = $request->pekerjaan;
            $biodata->alamat              = $request->alamat;
            $biodata->verifikasi          = 'verifikasi';
            $biodata->save();
        }else{
            $biodata->no_bpjs             = $request->no_bpjs;
            $biodata->no_ktp              = $request->no_ktp;
            $biodata->jenis_kelamin       = $request->jenis_kelamin;
            if ($biodata->tgl_lahir == null) {
                $biodata->tgl_lahir           = $request->tgl_lahir;
            }
            $biodata->status_pernikahan   = $request->status_pernikahan;
            $biodata->agama               = $request->agama;
            $biodata->pendidikan_terakhir = $request->pendidikan_terakhir;
            $biodata->pekerjaan           = $request->pekerjaan;
            $biodata->alamat              = $request->alamat;
            $biodata->verifikasi          = 'verifikasi';
            $biodata->update();
        }

      

        return response()->json([
            'message' => 'Biodata berhasil diedit'
        ]);
    }
}
