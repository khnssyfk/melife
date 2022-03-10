<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Biodata;
use App\User;
use DataTables;
use App\Models\Status;
use App\Helper;
use Hash;
use SimpleSoftwareIO\QrCode\Facades\QrCode; 
// use BaconQrCode\Renderer\ImageRenderer;
// use BaconQrCode\Renderer\Image\ImagickImageBackEnd;
// use BaconQrCode\Renderer\RendererStyle\RendererStyle;
// use BaconQrCode\Writer;

class BiodataController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         if ($request->ajax()) {
             $biodata = Biodata::orderBy('id','desc')->get();

             // return$biodata->verifikasi;
            // return $kib_a;

            return DataTables::of($biodata)
                ->addColumn('id_user', function($biodata){
                    $user = $biodata['user']['nama'];
                    return '<a href="#" onclick="edit('.$biodata->id.')" class="text-primary" ><b>'.$user.'</b></a>';
                })
                ->addColumn('id_status', function($biodata){
                    $status = $biodata['status']['nama'];
                    return $status;
                })
                ->addColumn('verifikasi', function($biodata){
                        if ($biodata->verifikasi == 'verifikasi') {
                            return '<a class="btn btn-info btn-sm" style="color:white;"> Verifikasi</a>';
                        } else {
                            return '<button style="color:white;" href="'.url("pasien/biodata/edit/".$biodata->verifikasi).'" class="btn btn-danger btn-sm">Belum Verifikasi </button>';
                        }
                })
                ->addColumn('aksi', function($biodata){
                    return ' <div class="btn-group">
                    <a target="_blank" href="'.url("pasien/kartu/".$biodata->id).'" class="btn btn-primary btn-sm" ><i class="la la-qrcode"></i></a>&nbsp;
                    <a href="#" class="btn btn-danger btn-sm" onclick="hapus('.$biodata->id.')"><i class="la la-trash-o"></i></a></div>';
                })
                ->rawColumns(['aksi','id_user','id_status','verifikasi'])
                ->addIndexColumn()
                ->make(true);

        }

        $status = Status::all();
        return view('biodata.index',compact('status'));
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
         if ($request->tgl_lahir != '') {
            $request['tgl_lahir'] = Helper::tglDB($request->tgl_lahir);
        }

   
       

        $user = User::create( [
            'nama'       => $request->nama,
            'email'       => $request->email,
            'no_hp'        => $request->no_hp,
            'id_role'        => 3,
            'password'         => Hash::make($request->password),
        ]);

        $simpan_user = $user->id;

        $nomor = str_pad($simpan_user, 3, '0', STR_PAD_LEFT);
        $nama = explode(' ', $request->nama );
        $list_nama = [];
        foreach ($nama as $key => $value) {
        array_push($list_nama, $value[0]);
        }
        $list_nama = implode('', $list_nama);
        $tgl = explode('-', Helper::tglDB($request->tgl_lahir));
        $tgl = implode('', $tgl);
        $coba = $list_nama;
        $aku = strlen($coba);
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


        $biodata = Biodata::create([

                'no_ktp'                => $request->no_ktp,
                'no_bpjs'                => $request->no_bpjs,
                'id_user'               => $simpan_user,
                'tgl_lahir'             => $request->tgl_lahir,
                'no_rekam_medis'        => $no_rekam_medis,
                'jenis_kelamin'         => $request->jenis_kelamin,
                'status_pernikahan'     => $request->status_pernikahan,
                'id_status'             => $request->id_status,
                'agama'                 => $request->agama,
                'pendidikan_terakhir'   => $request->pendidikan_terakhir,
                'verifikasi'            => 'verifikasi',
                'pekerjaan'             => $request->pekerjaan,
                'alamat'                => $request->alamat,
            ]);



        return response()->json([
            'status'    => (bool) $biodata,
            'data'      => $biodata,
            'message'   => $biodata ? 'Berhasil Ditambah' : 'Gagal Ditambah'
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
        $biodata = Biodata::select('biodata.id','users.nama','users.email','users.no_hp','biodata.tgl_lahir','biodata.jenis_kelamin','biodata.status_pernikahan','biodata.id_status','biodata.agama','biodata.pendidikan_terakhir','biodata.pekerjaan','biodata.alamat','biodata.no_bpjs','biodata.no_ktp')->leftJoin('users','users.id','biodata.id_user')->findorFail($id);
        return response()->json($biodata);
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
        if ($request->tgl_lahir != '') {
            $request['tgl_lahir'] = Helper::tglDB($request->tgl_lahir);
        }

        $biodata = Biodata::findorFail($id);
       
        $user = User::where('id',$biodata->id_user)->first();

            if ($request->password == ''){
                            unset($user['password']);
                          }else{
                                $user['password'] = Hash::make($request->password);
                    }

         $user->update([
            'nama'       => $request->nama,
            'email'       => $request->email,
            'no_hp'        => $request->no_hp,
        ]);


         $biodata->update([
                'tgl_lahir'             => $request->tgl_lahir,
                'jenis_kelamin'         => $request->jenis_kelamin,
                'status_pernikahan'     => $request->status_pernikahan,
                'id_status'             => $request->id_status,
                'agama'                 => $request->agama,
                'pendidikan_terakhir'   => $request->pendidikan_terakhir,
                'verifikasi'            => 'verifikasi',
                'pekerjaan'             => $request->pekerjaan,
                'alamat'                => $request->alamat,
                'no_ktp'             => $request->no_ktp,
                'no_bpjs'                => $request->no_bpjs
            ]);



        return response()->json([
            'status'    => (bool) $biodata,
            'data'      => $biodata,
            'message'   => $biodata ? 'Berhasil Ditambah' : 'Gagal Ditambah'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $hapus = Biodata::findOrFail($id);
        $user = User::where('id',$hapus->id_user)->first();
        $user->delete();
        $hapus->delete();
        return response()->json([
            'status'    => (bool) $hapus,
            'data'      => $hapus,
            'message'   => $hapus ? 'Berhasil Dihapus' : 'Gagal Dihapus'
        ]);
    }

    public function kartu($id)
    {
        $biodata = Biodata::where('id',$id)->first();
        $user = User::where('id',$biodata->id_user)->first();

        // $renderer = new ImageRenderer(
        //     new RendererStyle(400),
        //     new ImagickImageBackEnd()
        // );
        // $writer = new Writer($renderer);

        return view('biodata.kartu',compact('biodata','user'));
    }
}
