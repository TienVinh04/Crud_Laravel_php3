<?php

namespace App\Http\Controllers;

use App\Models\Sach;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class SachController extends Controller
{
    public function index()
    {
        $data = DB::table('saches')->get();
        return view('sach.index', compact('data'));
    }

    public function create()
    {
        return view('sach.create');
    }

    public function store(Request $request)
    {
        $data = $request->except('anh');
        if ($request->hasFile('anh')) {
            $data['anh'] = Storage::put('sach', $request->file('anh'));
        } else {
            $data['anh'] = '';
        }

        DB::table('saches')->insert([
            'ten' => $request->ten,
            'anh' => $data['anh'],
            'ngayxuatban' => $request->ngayxuatban,
            'tacgia' => $request->tacgia,
            'soluong' => $request->soluong,
            'created_at' => Carbon::now(),
            'updated_at' => Carbon::now()
        ]);

        return redirect()->route('sach.index');
    }

    public function show($id)
    {
        $model = DB::table('saches')->where('id', $id)->first();
        return view('sach.show', compact('model'));
    }

    public function edit($id)
    {
        $model = DB::table('saches')->where('id', $id)->first();
        return view('sach.edit', compact('model'));
    }

    public function update(Request $request, $id)
    {
        $data = $request->except('anh');
        $sach = DB::table('saches')->where('id', $id)->first();
        if ($request->hasFile('anh')) {
            $data['anh'] = Storage::put('sach', $request->file('anh'));
        }else {
            $anh = $sach->anh;  // Giữ giá trị ảnh cũ nếu không có ảnh mới được tải lên
        }

        

        DB::table('saches')->where('id', $id)->update([
            'ten' => $request->ten,
            'anh' => $data['anh'],
            'ngayxuatban' => $request->ngayxuatban,
            'tacgia' => $request->tacgia,
            'soluong' => $request->soluong,
            'updated_at' => Carbon::now()
        ]);

        return redirect()->route('sach.index');
    }

    public function destroy($id)
    {
        DB::table('saches')->where('id', $id)->delete();
        return back();
    }
}
