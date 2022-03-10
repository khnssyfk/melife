<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRiwayatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('riwayat', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_biodata')->unsigned();
            $table->datetime('tanggal')->nullable();
            $table->double('berat_badan')->nullable();
            $table->double('tinggi_badan')->nullable();
            $table->double('tekanan_darah')->nullable();
            $table->double('denyut_nadi')->nullable();
            $table->double('pernapasan')->nullable();
            $table->double('saturasi_oksigen')->nullable();
            $table->double('hemoglobin')->nullable();
            $table->double('glukosa')->nullable();
            $table->double('asam_urat')->nullable();
            $table->double('kolesterol')->nullable();
            $table->double('suhu_tubuh')->nullable();
            $table->longText('komentar')->nullable();
            $table->longText('keluhan')->nullable();
            $table->string('dokter')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('riwayat');
    }
}
