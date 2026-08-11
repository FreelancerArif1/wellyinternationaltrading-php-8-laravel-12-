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
        Schema::create('job_applieds', function (Blueprint $table) {
            $table->increments('id');;
            $table->string('name');
            $table->string('email');
            $table->string('phone');
            $table->string('job_id');
            $table->string('job_slug')->nullable();
            $table->longText('cover_later')->nullable();
            $table->longText('qualifications')->nullable();
            $table->string('address')->nullable();
            $table->string('position')->nullable();
            $table->string('cv')->nullable();
            $table->string('serial')->nullable();
            $table->unsignedTinyInteger('status')->default(1);
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrent()->useCurrentOnUpdate();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('job_applieds');
    }
};
