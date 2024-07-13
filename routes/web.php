<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\SachController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});



// Hiển thị danh sách sách
Route::get('/sach', [SachController::class, 'index'])->name('sach.index');

// Hiển thị form thêm sách mới
Route::get('/sach/create', [SachController::class, 'create'])->name('sach.create');

// Xử lý lưu sách mới
Route::post('/sach', [SachController::class, 'store'])->name('sach.store');

// Hiển thị chi tiết sách
Route::get('/sach/{id}', [SachController::class, 'show'])->name('sach.show');

// Hiển thị form sửa sách
Route::get('/sach/{id}/edit', [SachController::class, 'edit'])->name('sach.edit');

// Xử lý cập nhật sách
Route::put('/sach/{id}', [SachController::class, 'update'])->name('sach.update');

// Xử lý xóa sách
Route::delete('/sach/{id}', [SachController::class, 'destroy'])->name('sach.destroy');