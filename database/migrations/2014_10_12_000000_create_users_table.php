<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('company_id')->nullable();

            $table->unsignedTinyInteger('role')->default(12);

            $table->string('name');
            $table->string('username')->unique();
            $table->string('email')->unique();
            $table->string('phone')->nullable();

            $table->string('password');
            $table->rememberToken();
            $table->string('image_url')->nullable();
            $table->text('bio')->nullable();

            $table->enum('gender', ['male', 'female', 'other'])->nullable();
            $table->integer('year_of_experience')->nullable();

            $table->boolean('is_verified')->default(false);
            $table->unsignedTinyInteger('status')->default(1);

            $table->string('created_by_id')->nullable();
            $table->string('created_by_name')->nullable();
            $table->dateTime('created_date')->nullable();

            $table->string('last_modified_by_id')->nullable();
            $table->string('last_modified_by_name')->nullable();
            $table->string('last_modified_date')->nullable();
            $table->string('ancestor_id')->nullable();

            $table->timestamp('email_verified_at')->nullable();
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
        Schema::dropIfExists('users');
    }
}
