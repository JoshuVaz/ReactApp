<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

/* return new class extends Migration
{
    
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }

    
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
};*/

class AddRoleToUsersTable extends Migration
{
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('role')->default('user'); // Valores posibles: 'user' o 'admin'
        });
    }

    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('role');
        });
    }
}