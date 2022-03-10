<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Riwayat;
use App\Models\Biodata;
use DataTables;
use App\Helper;

class RiwayatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
             $riwayat = Biodata::orderBy('id','desc')->get();
            // return $kib_a;

            return DataTables::of($riwayat)
               ->addColumn('id_user', function($biodata){
                    $user = $biodata['user']['nama'];
                    return $user;
                })
                 ->editColumn('no_rekam_medis', function($biodata){
                      return $biodata->no_rekam_medis;
                })
                ->addColumn('id_status', function($biodata){
                    $status = $biodata['status']['nama'];
                    return $status;
                })
                ->addColumn('aksi', function($riwayat){
                    return '
                    <a href="'.url("pasien/riwayat/list/".$riwayat->id).'" class="btn btn-success btn-sm"><i class="la la-stethoscope"></i></a>';
                })
                ->rawColumns(['aksi','id_user','id_status','no_rekam_medis'])
                ->addIndexColumn()
                ->make(true);

        }
        return view('riwayat.index');
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function list(Request $request,$id)
    {
         if ($request->ajax()) {
             
             $riwayat = Riwayat::where('id_biodata',$id)->get();
            // return $kib_a;

            return DataTables::of($riwayat)
                ->editColumn('tanggal', function($riwayat){

                    $tanggal = Helper::tglIndo($riwayat->tanggal);
                    return '<a href="'.url("pasien/riwayat/detail/".$riwayat->id).'" class="btn btn-primary btn-sm">'.$tanggal.'</a>';
                })
                ->addColumn('aksi', function($riwayat){
                    return '
                    <a href="#" class="btn btn-primary btn-sm"><i class="la la-edit"></i></a>
                     <a href="#" class="btn btn-danger btn-sm"><i class="la la-trash"></i></a>';
                })
                ->rawColumns(['aksi','id_user','tanggal'])
                ->addIndexColumn()
                ->make(true);

        }


        $biodata = Biodata::where('id',$id)->first();

        return view('riwayat.list',compact('biodata'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

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
