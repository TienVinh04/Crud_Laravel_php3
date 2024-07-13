<!DOCTYPE html>
<html>
<head>
    <title>Sửa sách</title>
</head>
<body>
    <h1>Sửa sách</h1>
    <form action="{{ route('sach.update', $model->id) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')
        <label for="ten">Tên sách:</label>
        <input type="text" id="ten" name="ten" value="{{ $model->ten }}">
        <label for="anh">Ảnh:</label>
        <input type="file" id="anh" name="anh">
        <label for="ngayxuatban">Ngày xuất bản:</label>
        <input type="date" id="ngayxuatban" name="ngayxuatban" value="{{ $model->ngayxuatban }}">
        <label for="tacgia">Tác giả:</label>
        <input type="text" id="tacgia" name="tacgia" value="{{ $model->tacgia }}">
        <label for="soluong">Số lượng:</label>
        <input type="number" id="soluong" name="soluong" value="{{ $model->soluong }}">
        <button type="submit">Cập nhật</button>
    </form>
</body>
</html>
