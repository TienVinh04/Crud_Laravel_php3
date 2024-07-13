<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Sach>
 */
class SachFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'ten' => fake()->name(), 
            'anh' => fake()->imageUrl(),
            'ngayxuatban' => fake()->date(),
            'tacgia' => fake()->name(), 
            'soluong' => fake()->randomNumber(3), 
        ];
    }
}
