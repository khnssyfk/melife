<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

use App\User;
use App\Models\Biodata;
use App\Models\Player;

class Helper extends Model
{


    public static function tglIndo($tanggal)
    {
        if ($tanggal != null) {
            $months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
            $tgl = explode("-", $tanggal);
            $bulan = $tgl[1] - 1;
            $tanggal_indo = $tgl[2].'-'.$months[$bulan].'-'.$tgl[0];
            return $tanggal_indo;
        }
        else{
            return '-';
        }
    }

    public static function excelTanggal($tanggal)
    {
        if ($tanggal != null) {
            $months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
            $tgl = explode("-", $tanggal);
            $bulan = $tgl[1] - 1;
            $tanggal_indo = $tgl[2].' '.$months[$bulan].' '.$tgl[0];
            return $tanggal_indo;
        }
        else{
            return '-';
        }
    }

    public static function Rupiah($nominal)
    {
        $hasil_rupiah = "Rp. " . number_format($nominal,0,',','.');
        return $hasil_rupiah;
    }

    public static function convertmoney($nominal)
    {
        $convert = number_format($nominal,2,',','.');
        return $convert;
    }

    public static function addDots($nominal)
    {
        if  ($nominal == null){
            $convert = '';
        } else {
            $convert = number_format($nominal, 0, ',', '.');
        }
        return $convert;
    }

    public static function removedots($data)
    {
        $remover = str_replace(".", "", $data);
        return $remover;
    }

    public static function gantikoma($data)
    {
        $remover = str_replace(",", ".", $data);
        return $remover;
    }

    public static function koma($data)
    {
        $remover = str_replace(".", ",", $data);
        return $remover;
    }

    public static function tglDB($tanggal)
    {
        $tgl = explode("-", $tanggal);
        $tanggal = $tgl[2].'-'.$tgl[1].'-'.$tgl[0];
        return $tanggal;
    }

    public static function DateToday()
    {
        $now = Carbon::now();
        echo $now;
    }

    public static function desimal($nilai)
    {
        return number_format($nilai,2,",",".");
    }

    public static function sendMessage($isiContent,$isiHeading,$player_id)
    {
       
         $content      = array(
                "en" => $isiContent
            );

          $headings = array(
             "en" => $isiHeading
          );

            $fields = array(
                'app_id' => "e0ecd9c9-f9f9-47f3-980f-b97abd1a37c7",
                'include_player_ids' => $player_id,
                'data' => array(
                    "foo" => "bar"
                ),  
                'contents' => $content,
                'headings' => $headings,
                'large_icon'     => 'http://melife.id/template/app-assets/images/logo_me.png',
                  'android_channel_id' => "855ef1d2-823f-4356-bd5b-4568b1d5a21b"
            );

            $fields = json_encode($fields);
          // print("\nJSON sent:\n");
          // print($fields);
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://onesignal.com/api/v1/notifications");
         curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Content-Type: application/json; charset=utf-8',
        'Authorization: Basic ZWRmMGRhNDUtYjQ4Mi00N2JmLTkwYTgtYTIyZjM0YTE2MGIy'
        ));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($ch, CURLOPT_HEADER, FALSE);
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);

        $response = curl_exec($ch);
        curl_close($ch);
        
        return $fields;
        }
}
