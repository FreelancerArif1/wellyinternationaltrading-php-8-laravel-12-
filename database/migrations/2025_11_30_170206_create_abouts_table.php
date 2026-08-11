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
        Schema::create('abouts', function (Blueprint $table) {
            $table->increments('id');
            $table->longText('baner_title')->nullable();
            $table->longText('baner_description')->nullable();
            $table->longText('baner_image')->nullable();
            $table->longText('baner_video')->nullable();


            $table->longText('story_title')->nullable();
            $table->longText('story_description')->nullable();
            $table->longText('story_image')->nullable();
            $table->longText('story_background')->nullable();
            $table->longText('story_video')->nullable();


            $table->longText('mission_title')->nullable();
            $table->longText('mission_description')->nullable();
            $table->longText('mission_image')->nullable();
            $table->longText('mission_background')->nullable();
            $table->longText('mission_video')->nullable();

            $table->longText('vision_title')->nullable();
            $table->longText('vision_description')->nullable();
            $table->longText('vision_image')->nullable();
            $table->longText('vision_background')->nullable();
            $table->longText('vision_video')->nullable();

            $table->longText('values_title')->nullable();
            $table->longText('values_description')->nullable();
            $table->longText('values_image')->nullable();
            $table->longText('values_background')->nullable();
            $table->longText('values_video')->nullable();

            $table->longText('leadership_title')->nullable();
            $table->longText('leadership_description')->nullable();
            $table->longText('leadership_image')->nullable();
            $table->longText('leadership_background')->nullable();
            $table->longText('leadership_video')->nullable();

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
        Schema::dropIfExists('abouts');
    }
};
