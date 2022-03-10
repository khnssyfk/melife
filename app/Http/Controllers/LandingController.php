<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Biodata;
use DB;
use Response;
use RealRashid\SweetAlert\Facades\Alert;

class LandingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('landing.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function cetak(Request $request)
    {



          $cetak =  DB::table('biodata')
            ->select('no_rekam_medis','nama','tgl_lahir','jenis_kelamin')
            ->leftJoin('users','users.id', 'id_user')
            ->where('no_hp',$request->no_hp)
            ->where('no_rekam_medis',$request->no_rekam_medis)
            ->first();
        if($cetak == null)
        {
            Alert::toast('Nomor Hp Dan Nomor Rekam Medis Tidak Valid', 'error');
          return redirect()->back();
        }
           // return Response::json($cetak);

        return view('landing.cetak',compact('cetak'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       
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
}
