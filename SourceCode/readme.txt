Hướng dẫn build source code và khởi chạy:
1. (Nếu có) Thêm các Nuget package nếu báo lỗi.
2. Thực hiện build bằng Ctrl + Shift + B và khởi chạy bằng Ctrl + F5.
3. Sẽ có thông báo "Database connected" khi khởi chạy thành công. Tắt thông báo đó. Giao diện đăng nhập xuất hiện, tuy nhiên chưa có database nên nếu cố gắng đăng nhập sẽ bị lỗi.
4. Trong thư mục StoreManagement/Database có tập tin data.sql. Sử dụng Microsoft SQL Server hoặc Visual Studio (có cài đặt SQL) để chạy script. Sử dụng Windows authentication để xác thực.
5. Đăng nhập ứng dụng bằng user admin:
Tên tài khoản: admin
Mật khẩu: admin
