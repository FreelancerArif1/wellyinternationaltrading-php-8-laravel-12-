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
        Schema::create('job_circulars', function (Blueprint $table) {
            $table->increments('id');;
            $table->string('job_title');
            $table->string('job_slug');
            $table->timestamp('start_date');
            $table->timestamp('end_date');
            $table->longText('job_description')->nullable();
            $table->longText('qualifications')->nullable();
            $table->longText('company_info')->nullable();
            $table->longText('developer_note')->nullable();
            $table->string('pdf')->nullable();
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
        Schema::dropIfExists('job_circulars');
    }
};
