<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Sách</title>
</head>
<body>
    <h1>Danh Sách Sách</h1>
    <a href="{{ route('sach.create') }}">Thêm sách mới</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Ảnh</th>
                <th>Ngày Xuất Bản</th>
                <th>Tác Giả</th>
                <th>Số Lượng</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr>
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->ten }}</td>
                    <td><img src="{{ $item->anh }}" alt="{{ $item->ten }}" width="50"></td>
                    <td>{{ $item->ngayxuatban }}</td>
                    <td>{{ $item->tacgia }}</td>
                    <td>{{ $item->soluong }}</td>
                    <td>
                        <a href="{{ route('sach.edit', $item->id) }}">Sửa</a>
                        <form action="{{ route('sach.destroy', $item->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit">Xóa</button>
                        </form>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
