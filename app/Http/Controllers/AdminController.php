<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use DataTables;
use Illuminate\Support\Facades\Hash;
use DB;
use App\Models\Role;
use App\Http\Controllers\Controller;

class AdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
         if ($request->ajax()) {
             $admin = User::whereNotIn('id_role',[3])->get();
            // return $kib_a;

            return DataTables::of($admin)
              ->editColumn('nama', function($admin){
                      $nama = $admin->nama;
                      return '<a href="#" onclick="edit('.$admin->id.')" class="text-primary" ><b>'.$nama.'</b></a>';
                })
                ->editColumn('id_role', function($admin){
                    $role = $admin['role']['rolename'];
                    return $role;
                })
                ->addColumn('aksi', function($admin){
                    return '
                    <a href="#" class="btn btn-danger btn-sm" onclick="hapus('.$admin->id.')"><i class="la la-trash-o"></i></a>';
                })
                ->rawColumns(['aksi','id_role','nama'])
                ->addIndexColumn()
                ->make(true);

        }

        return view('admin.index');
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

        $simpan = User::create([ 
            'nama'          => $request->nama,
            'username'          => $request->username,
            'id_role'          => $request->id_role,
            'password'      => Hash::make($request->password),

        ]);

        return response()->json([
            'status'    => (bool) $simpan,
            'data'      => $simpan,
            'message'   => $simpan ? 'Berhasil Ditambah' : 'Gagal Ditambah'
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
        $user = User::findorFail($id);
        return response()->json($user);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
       $ubah = User::findOrFail($id);

         if ($request->password == ''){
                            unset($ubah['password']);
                          }else{
                                $ubah['password'] = Hash::make($request->password);
                    }

        $ubah->update([
              'nama'            => $request->nama,
              'username'        => $request->username,
              'id_role'             => $request->id_role
        ]);

        
        return response()->json([
            'status'    => (bool) $ubah,
            'data'      => $ubah,
            'message'   => $ubah ? 'Berhasil Diubah' : 'Gagal Diubah'
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
        $hapus = User::findOrFail($id);
        $hapus->delete();
        return response()->json([
            'status'    => (bool) $hapus,
            'data'      => $hapus,
            'message'   => $hapus ? 'Berhasil Dihapus' : 'Gagal Dihapus'
        ]);
    }
}
