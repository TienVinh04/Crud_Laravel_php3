<?php

namespace Database\Seeders;

use App\Models\Sach;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SachTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        Sach::factory()->count(20)->create();
    }
}
