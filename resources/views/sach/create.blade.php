<!DOCTYPE html>
<html>
<head>
    <title>Thêm Sách</title>
</head>
<body>
    <h1>Thêm Sách</h1>
    <form action="{{ route('sach.store') }}" method="POST" enctype="multipart/form-data">
        @csrf
        <label for="ten">Tên:</label>
        <input type="text" name="ten" id="ten" required>
        <br>
        <label for="anh">Ảnh:</label>
        <input type="file" name="anh" id="anh" required>
        <br>
        <label for="ngayxuatban">Ngày Xuất Bản:</label>
        <input type="date" name="ngayxuatban" id="ngayxuatban" required>
        <br>
        <label for="tacgia">Tác Giả:</label>
        <input type="text" name="tacgia" id="tacgia" required>
        <br>
        <label for="soluong">Số Lượng:</label>
        <input type="number" name="soluong" id="soluong" required>
        <br>
        <button type="submit">Thêm sách</button>
    </form>
</body>
</html>
