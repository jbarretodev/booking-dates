<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddDataToRecordPastsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('record_pasts', function (Blueprint $table) {
            $table->string("title")->nullable();
            $table->integer('status'); //1 => historical // 2->recordPast
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('record_pasts', function (Blueprint $table) {
            $table->dropColumn("title");
            $table->dropColumn("status");
        });
    }
}
