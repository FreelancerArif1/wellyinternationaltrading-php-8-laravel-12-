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
        Schema::create('careerpages', function (Blueprint $table) {
            $table->increments('id');;
            $table->string('banner_title')->nullable();
            $table->string('banner_image')->nullable();
            $table->string('banner_video')->nullable();
            $table->longText('banner_description')->nullable();

            $table->string('block_one_title')->nullable();
            $table->string('block_one_image')->nullable();
            $table->string('block_one_video')->nullable();
            $table->longText('block_one_description')->nullable();

            $table->string('block_two_title')->nullable();
            $table->string('block_two_image')->nullable();
            $table->string('block_two_video')->nullable();
            $table->longText('block_two_description')->nullable();


            $table->string('block_three_title')->nullable();
            $table->string('block_three_image')->nullable();
            $table->string('block_three_video')->nullable();
            $table->longText('block_three_description')->nullable();


            $table->string('block_four_title')->nullable();
            $table->string('block_four_image')->nullable();
            $table->string('block_four_video')->nullable();
            $table->longText('block_four_description')->nullable();


            $table->string('block_five_title')->nullable();
            $table->string('block_five_image')->nullable();
            $table->string('block_five_video')->nullable();
            $table->longText('block_five_description')->nullable();

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
        Schema::dropIfExists('careerpages');
    }
};
