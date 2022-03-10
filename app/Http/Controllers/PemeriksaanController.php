<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Riwayat;
use App\Models\Biodata;
use App\Helper;
use App\User;
use App\Models\Player;

class PemeriksaanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        
        return view('pemeriksaan.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        if ($request->tanggal != '') {
            $request['tanggal'] = Helper::tglDB($request->tanggal);
        }

        $biodata = Biodata::where('id',$request->id_biodata)->first();

        $user = User::where('id',$biodata->id_user)->first();

        // $player = Player::where('id_user',$user->id)->pluck('player_id');

         $riwayat = Riwayat::create([
                'id_biodata'        => $request->id_biodata,
                'tanggal'           => $request->tanggal,
                'berat_badan'       => $request->berat_badan.'(kg)',
                'tinggi_badan'      => $request->tinggi_badan.'(cm)',
                'tekanan_darah'     => $request->tekanan_darah.'(mmHg)',
                'denyut_nadi'       => $request->denyut_nadi.'(x/menit)',
                'pernapasan'        => $request->pernapasan.'(x/menit)',
                'saturasi_oksigen'  => $request->saturasi_oksigen.'(oC)',
                'hemoglobin'        => $request->hemoglobin.'(%)',
                'glukosa'           => $request->glukosa.'(mg/dL)',
                'asam_urat'         => $request->asam_urat.'(mg/dL)',
                'kolesterol'        => $request->kolesterol.'(mg/dL)',
                'suhu_tubuh'        => $request->suhu_tubuh.'(g/dL)',
                'leukosit'          => $request->leukosit.'(103/μl)',
                'trombosit'         => $request->trombosit.'(103/μl)',
                'hematokrit'        => $request->hematokrit.'(%)',
                'eritrosit'         => $request->eritrosit.'(juta/μl)',
                'mcv'               => $request->mcv.'(fl)',
                'mch'               => $request->mch.'(pg)',
                'mchc'              => $request->mchc.'(g/dL)',
                'trigliserida'      => $request->trigliserida.'(mg/dL)',
                'ldl'               => $request->ldl.'(mg/dL)',
                'hdl'               => $request->hdl.'(mg/dL)',
                'hba1c'             => $request->hba1c.'(%)',
                'ureum'             => $request->ureum.'(mg/dL)',
                'kreatinin'         => $request->kreatinin.'(mg/dL)',
                'komentar'          => $request->komentar,
                'keluhan'           => $request->keluhan,
                'dokter'            => $request->dokter
            ]);

        $isiHeading = 'Me Life - Hasil Rekam Medis Terbaru';  

        $isiContent = $user->nama . ' Tanggal ' . Helper::excelTanggal($riwayat->tanggal);

        // Helper::sendMessage($isiContent,$isiHeading,$player);


        return response()->json([
            'status'    => (bool) $riwayat,
            'data'      => $riwayat,
            'message'   => $riwayat ? 'Berhasil Ditambah' : 'Gagal Ditambah'
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

     public function dataRekam(Request $request, $id)
    {
        $data = Biodata::findOrFail($id);

        $user = User::select('nama')->where('id', $data->id_user)->first();

        $data['user'] = $user->nama;

        return response()->json($data);
    }
}
