<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('saches', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ten');
            $table->string('anh');
            $table->date('ngayxuatban');
            $table->string('tacgia');
            $table->integer('soluong');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('saches');
    }
};
