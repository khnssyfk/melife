<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
use DB;
use Auth;
use Response;
use App\Models\Role;
use App\User;
use App\Models\Biodata;
use App\Notifications\SignupActivate;
use Hash;
use App\Models\Player;

class UserController extends Controller
{

//   public function login(Request $request)
//   {
//     $request->validate([
//         'no_hp' => 'required|string',
//         'password' => 'required|string',
//         'remember_me' => 'boolean',
//     ]);

//     $auth = User::with('biodata')
//     ->where('no_hp', $request->no_hp)
//     ->where('password', $request->password)
//     ->where('id_role', 3)
//     ->first();


//     if ($auth == null) {
        
//         $validatedData = $request->validate([
//             'no_hp' => ['required', 'string', 'max:15'],
//             'password' => ['required', 'string'],
//         ]);
//         $validatedData['id_role'] = 3;

//         $user = User::create($validatedData);


//         $tokenResult = $user->createToken('Personal Access Token');
//         $token = $tokenResult->token;
//         if ($request->remember_me)
//           $token->expires_at = Carbon::now()->addWeeks(1);
//       $token->save();


//       $biodata = Biodata::create([
//         'id_user'               => $user->id,
//     ]);

//       $player = Player::where('id_user', $user->id)->first();
      
//       if (!empty($player)) {
//         $player->player_id = request('player_id');
//         $player->save();
//     }
//     else {
//         Player::create([
//             'id_user' => $user->id,
//             'player_id' => request('player_id')
//         ]);
//     }

//     $tokenResult = $user->createToken('Personal Access Token');
//     $token = $tokenResult->token;
//     if ($request->remember_me)
//         $token->expires_at = Carbon::now()->addWeeks(1);
//     $token->save();



//     $userProfile = User::with('biodata')
//     ->where('id', $user->id)
//     ->first();

//     return response()->json([
//         'message' => 'Login Sukses',
//         'success' =>'true',
//         'code' => 200,
//         'users' => $userProfile,
//         'access_token' => $tokenResult->accessToken,
//         'token_type' => 'Bearer',
//         'expires_at' => Carbon::parse(
//             $tokenResult->token->expires_at
//         )->toDateTimeString()

//     ]);


// } else {

//    $player = Player::where('id_user', $auth->id_user)->first();
   
//    if (!empty($player)) {
//     $player->player_id = request('player_id');
//     $player->save();
// }
// else {
//     Player::create([
//         'id_user' => $auth->id_user,
//         'player_id' => request('player_id')
//     ]);
// }

// $tokenResult = $auth->createToken('Personal Access Token');
// $token = $tokenResult->token;
// if ($request->remember_me)
//     $token->expires_at = Carbon::now()->addWeeks(1);
// $token->save();



// $tokenResult = $auth->createToken('Personal Access Token');
// $token = $tokenResult->token;
// if ($request->remember_me)
//     $token->expires_at = Carbon::now()->addWeeks(1);
// $token->save();

// return response()->json([
//     'message' => 'Login Sukses',
//     'success' =>'true',
//     'code' => 200,
//     'users'     => $auth,
//     'access_token' => $tokenResult->accessToken,
//     'token_type' => 'Bearer',
//     'expires_at' => Carbon::parse(
//         $tokenResult->token->expires_at
//     )->toDateTimeString()
// ]);


// }

// }


     public function login(Request $request)
    {
        $request->validate([
            'no_hp' => 'required|string',
            'password' => 'required|string',
            'remember_me' => 'boolean'
        ]);


        $credentials = request(['no_hp', 'password']);
        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Gagal Login',
                'success' => 'false'

            ], 200);
        $user = $request->user();

        $player = Player::where('id_user', $user->id)->first();
        
        if (!empty($player)) {
            $player->player_id = request('player_id');
            $player->save();
        }
        else {
            Player::create([
                'id_user' => $user->id,
                'player_id' => request('player_id')
            ]);
        }


        $tokenResult = $user->createToken('Personal Access Token');
        $token = $tokenResult->token;
        if ($request->remember_me)
            $token->expires_at = Carbon::now()->addWeeks(1);
        $token->save();



        return response()->json([
            'message' =>'Login Sukses',
            'success' =>'true',
            'type' => auth()->user()->id_role,
            'users'     => $request->user(),
            'access_token' => $tokenResult->accessToken,
            'token_type' => 'Bearer',
            'expires_at' => Carbon::parse(
                $tokenResult->token->expires_at
            )->toDateTimeString()
        ],200);
    }



public function user(Request $request)
{
    $auth = Auth::user()->id;

    $biodata = Biodata::where('id_user',$auth)->first();

    return response()->json([
        'id' =>  $request->user()->id,
        'nama'   => $request->user()->nama,
        'no_hp'   => $request->user()->no_hp,
        'email'   => $request->user()->email,
        'id_role'   => $request->user()->id_role,
        'no_rekam_medis'   => $biodata->no_rekam_medis ?? null,
        'tgl_lahir'   => $biodata->tgl_lahir ?? null,
        'jenis_kelamin'   => $biodata->jenis_kelamin ?? null,
        'verifikasi'   => $biodata->verifikasi ?? null,
        'no_bpjs'   => $biodata->no_bpjs ?? null,
        'alamat'   => $biodata->alamat ?? null,
        'no_ktp'   => $biodata->no_ktp ?? null,
        'status_pernikahan'   => $biodata->status_pernikahan ?? null,
        'pendidikan_terakhir'   => $biodata->pendidikan_terakhir ?? null,
        'pekerjaan'   => $biodata->pekerjaan ?? null,
         'agama'   => $biodata->agama ?? null,
            // 'player_id' =>  $this->sendPlayer($request),


    ]);
}


    public function signup(Request $request)
    {
        // $request->validate([
        //     'nama' => 'required|string',
        //     'no_hp' => 'required|string|unique:users',
        //     'password' => 'required|string|confirmed'
        // ]);


        $user = new User([
            'id_role' => 3,
            'nama' => $request->nama,
            'no_hp' => $request->no_hp,
            'password' => Hash::make($request->password),
            'activation_token' => str_random(60)
        ]);


        $user->save();
            $biodata = new Biodata([
            'id_user' => $user->id,
        ]);



        $biodata->save();

         // $user->notify(new SignupActivate($user));


        return response()->json([
            'message' => 'Register Berhasil'
        ], 200);
    }


   public function hpRegister(Request $request)
    {
        
        $user = User::where('no_hp',$request->no_hp)->first();
        if($user != ''){
            return response()->json([
                'message' => 'Ada'
            ]);
        }else{
            return response()->json([
                'message' => 'Tidak Ada'
            ]);
        }
             
    }


}
