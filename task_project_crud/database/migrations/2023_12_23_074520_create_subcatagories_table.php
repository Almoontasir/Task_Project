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
        Schema::create('subcatagories', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('Catagory_id');
            $table->string('Subcatagory_name')->nullable();
            $table->string('Subcatagory_slug')->nullable();
            $table->timestamps();
            $table->foreign('Catagory_id')->references('id')->on('catagories')->onDelete('cascade');
    });
    
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('subcatagories');
    }
};
