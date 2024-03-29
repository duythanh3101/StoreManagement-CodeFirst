USE DBStoreManagement

INSERT [dbo].[Role] ([DisplayName]) VALUES (N'Admin')
INSERT [dbo].[Role] ([DisplayName]) VALUES (N'Nhân Viên')
INSERT [dbo].[Role] ([DisplayName]) VALUES (N'Nhân Viên Kho')
INSERT [dbo].[Role] ([DisplayName]) VALUES (N'Quản lý trưởng')



INSERT [dbo].[User] ([RoleId], [DisplayName], [UserName], [Password], [IdentityCard], [Birthdate], [Address]) VALUES (1, N'Phạm Duy Thanh', N'admin', N'YWRtaW4=', N'4444444444', CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Quận 7, TPHCM')
INSERT [dbo].[User] ([RoleId], [DisplayName], [UserName], [Password], [IdentityCard], [Birthdate], [Address]) VALUES (2, N'Đào Thanh Hoàng', N'cashier', N'MTIz', N'123456789 ', CAST(N'1994-03-30 00:00:00.000' AS DateTime), N'Quận 5, TPHCM')
INSERT [dbo].[User] ([RoleId], [DisplayName], [UserName], [Password], [IdentityCard], [Birthdate], [Address]) VALUES (2, N'Nguyễn Quang Thạch', N'cashier2', N'MTIz', N'123456789 ', CAST(N'1994-03-30 00:00:00.000' AS DateTime), N'Quận 5, TPHCM')
INSERT [dbo].[User] ([RoleId], [DisplayName], [UserName], [Password], [IdentityCard], [Birthdate], [Address]) VALUES (1, N'Phạm Duy Thanh', N'admin2', N'YWRtaW4=', N'333333333', CAST(N'1998-04-28 00:00:00.000' AS DateTime), N'Quận 7, TPHCM')


INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Apple')
INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Samsung')
INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Xiaomi')
INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Sony')
INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Kanen')
INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Awei')
INSERT [dbo].[Brand] ([BrandName]) VALUES (N'Esaver ')


INSERT [dbo].[Category] ([CategoryName]) VALUES (N'Điện thoại')
INSERT [dbo].[Category] ([CategoryName]) VALUES (N'Tai nghe')
INSERT [dbo].[Category] ([CategoryName]) VALUES (N'Sạc dự phòng')


INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'iPhone Xs Max 64GB', 1, 1, 28990000, N'Hoàn toàn xứng đáng với những gì được mong chờ, phiên bản cao cấp nhất iPhone Xs Max của Apple năm nay nổi bật với chip A12 Bionic mạnh mẽ, màn hình rộng đến 6.5 inch, cùng camera kép trí tuệ nhân tạo và Face ID được nâng cấp.
Thiết kế cao cấp với viền thép không gỉ và mặt kính cường lực
Điện thoại iPhone Xs Max sở hữu lối thiết kế vô cùng đẹp mắt với những đường cong mềm mại được thừa hưởng từ chiếc iPhone đời trước đó.', 7, N'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gray-400x460.png', 25000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'iPhone X 64GB', 1, 1, 20990000, N'iPhone X là cụm từ được rất nhiều người mong chờ muốn biết và tìm kiếm trên Google bởi đây là chiếc điện thoại mà Apple kỉ niệm 10 năm iPhone đầu tiên được bán ra.
Thiết kế mang tính đột phá
Như các bạn cũng đã biết thì đã 4 năm kể từ chiếc điện thoại iPhone 6 và iPhone 6 Plus thì Apple vẫn chưa có thay đổi nào đáng kể trong thiết kế của mình.', 3, N'https://cdn.tgdd.vn/Products/Images/42/114115/iphone-x-64gb-1-400x460.png', 18000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Samsung Galaxy A50 128GB', 2, 1, 7990000, N'Samsung Galaxy A50 128GB là mẫu smartphone dòng A mới trong năm 2019 và đặc biệt máy sở hữu công nghệ cảm biến vân tay trong màn hình lần đầu tiên xuất hiện trên một chiếc máy tầm trung tới từ Samsung.
Thiết kế màn hình Infinity-U độc đáo
Samsung Galaxy A50 là mẫu smartphone đầu tiên mà Samsung sử dụng màn hình Infinity-U với phần notch nhỏ gọn hình giọt nước.', 9, N'https://cdn.tgdd.vn/Products/Images/42/200294/samsung-galaxy-a50-128gb-blue-400x460.png', 6000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'iPhone 6s Plus 32GB', 1, 1, 9990000, N'iPhone 6s Plus 32 GB là phiên bản nâng cấp hoàn hảo từ iPhone 6 Plus với nhiều tính năng mới hấp dẫn.
Camera được cải tiến
Điện thoại iPhone 6s Plus 32 GB được nâng cấp độ phân giải camera sau lên 12 MP (thay vì 8 MP như trên iPhone 6 Plus), camera cho tốc độ lấy nét và chụp nhanh, thao tác chạm để chụp nhẹ nhàng. Chất lượng ảnh trong các điều kiện chụp khác nhau tốt.

Màu sáng hơn hẳn so với iPhone 6 Plus

Camera trước với độ phân giải 5 MP cho hình ảnh với độ chi tiết rõ nét, đặc biệt máy còn có tính năng Retina Flash, sẽ giúp màn hình sáng lên như đèn Flash để bức ảnh khi bạn chụp trong trời tối được tốt hơn.', 14, N'https://cdn.tgdd.vn/Products/Images/42/87846/iphone-6s-plus-32gb-400x450-400x450.png', 8000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'iPhone 8 Plus 256GB', 1, 1, 25790000, N'iPhone 8 Plus là bản nâng cấp nhẹ của chiếc iPhone 7 Plus đã ra mắt trước đó với cấu hình mạnh mẽ cùng camera có nhiều cải tiến.
Thiết kế quen thuộc vốn có của dòng iPhone Apple
Về ngoại hình điện thoại iPhone 8 Plus không có quá nhiều khác biệt so với người đàn anh đi trước. Thay đổi lớn nhất chính là Apple đã chuyển từ thiết kế kim loại nguyên khối sang mặt lưng kính nhằm mang tính năng sạc không dây lên 8 Plus.', 20, N'https://cdn.tgdd.vn/Products/Images/42/114114/iphone-8-plus-256gb-gold-400x460.png', 24000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'iPhone Xr 128GB', 1, 1, 21990000, N'Được xem là phiên bản iPhone giá rẻ đầy hoàn hảo, iPhone Xr 128GB khiến người dùng có nhiều sự lựa chọn hơn về màu sắc đa dạng nhưng vẫn sở hữu cấu hình mạnh mẽ và thiết kế sang trọng.
Màn hình tràn viền công nghệ LCD - True Tone
Thay vì sở hữu màn hình OLED truyền thống, chiếc smartphone này sở hữu màn hình LCD.

Bù lại với công nghệ True Tone cùng màn hình tràn viền rộng tới 6.1 inch, mọi trải nghiệm trên máy vẫn đem lại sự thích thú và hoàn hảo, như dòng cao cấp khác của Apple.', 16, N'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-400x460.png', 17990000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'iPhone Xr 256GB', 1, 1, 23990000, N'Ngoài các phiên bản như thường lệ mọi năm, vào đêm 12/9 theo giờ Việt Nam, Apple đã cho ra mắt thêm một phiên bản iPhone khác với tên gọi iPhone Xr, có mức giá dễ chịu hơn nhưng vẫn mang đầy đủ các tính năng cao cấp đầy hấp dẫn.
Mượt mà mọi trải nghiệm nhờ chip Apple A12
Với mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr.', 30, N'https://cdn.tgdd.vn/Products/Images/42/190326/iphone-xr-256gb-white-400x460.png', 20000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Xiaomi Redmi 7 16GB', 3, 1, 2990000, N'Xiaomi Redmi 7 16GB đã gây được chú ý cho người dùng khi ra mắt với một cấu hình khủng nhưng lại sở hữu một mức giá "khó tin".
Hiệu năng "vô đối" trong phân khúc
Xiaomi luôn khiến người dùng phải bất ngờ với những trang bị về cấu hình cho những chiếc smartphone của mình và với con chip Qualcomm Snapdragon 632 8 nhân 64-bit thì Redmi 7 có thể làm hài lòng cả những người dùng khó tính nhất.', 30, N'https://cdn.tgdd.vn/Products/Images/42/200599/xiaomi-redmi-7-16gb-blue-400x460.png', 27000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Xiaomi Mi 8', 3, 1, 10990000, N'Xiaomi Mi 8 sẽ là cái tên được nhắc đến nhiều trong gia đình Xiaomi khi mang trong mình đầy đủ những gì gọi là cao cấp đến từ vẻ đẹp bên ngoài cũng như phần cứng mạnh mẽ bên trong.
Thiết kế sang trọng
Xiaomi luôn biết làm mới mình khi tạo ra smartphone Mi 8 với thân hình long lanh và quyến rũ đến từng chi tiết nhờ sự kết hợp tinh tế giữa khung kim loại và 2 mặt kính cao cấp.', 30, N'https://cdn.tgdd.vn/Products/Images/42/167539/xiaomi-mi-8-black-400x460.png', 8000000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Tai nghe chụp tai Kanen IP-350', 6, 2, 120000, N'Tai nghe chụp tai kiểu dáng khá nhỏ gọn, màu sắc tươi tắn.
Lớp đệm tai mềm và dày, giúp đeo tai thoải mái và hạn chế bị rách.
Có thể kéo dãn tai nghe để vừa vặn hơn khi sử dụng.
Tương thích tốt với nhiều dòng điện thoại.
Dây dài 150 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 30, N'https://cdn.tgdd.vn/Products/Images/54/74879/tai-nghe-chup-tai-kanen-ip-350-14-600x600.jpg', 80000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Tai nghe EP Awei Q26Hi Đen
', 7, 2, 90000, N'Tai nghe phối màu trang nhã, hợp thời trang.
Tương thích tốt với nhiều dòng điện thoại.
Tai nghe dạng nút giúp cách âm tốt với bên ngoài.
Có nút ấn nhận cuộc gọi, ngừng/chơi nhạc, tăng/giảm âm lượng.
Dây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 40, N'https://cdn.tgdd.vn/Products/Images/54/202525/tai-nghe-ep-awei-q26hi-den-1-600x600.jpg', 65000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Tai nghe EP Kanen IP-225

', 6, 2, 90000, N'Tai nghe phối màu trang nhã, hợp thời trang.
Tương thích tốt với nhiều dòng điện thoại.
Tai nghe dạng nút giúp cách âm tốt với bên ngoài.
Có nút ấn nhận cuộc gọi, ngừng/chơi nhạc, tăng/giảm âm lượng.
Dây dài 120 cm thoải mái để vừa dùng máy vừa nghe nhạc.', 35, N'https://cdn.tgdd.vn/Products/Images/54/202694/tai-nghe-ep-kanen-ip-225-trang-1-600x600.jpg', 80000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Pin sạc dự phòng 7.500 mAh eSaver LA Y103S', 7, 3, 240000, N'Pin sạc dự phòng eSaver LA Y103S có kiểu dáng khá lạ mắt
Màu sắc trẻ trung, có 1 lỗ nhỏ bạn có thể xỏ dây để trang trí hay gắn balo.

', 20, N'https://cdn.tgdd.vn/Products/Images/57/145555/pin-sac-du-phong-7500mah-esaver-la-y103s-anh-dai-dien-600x600.jpg', 100000)
INSERT [dbo].[Product] ([DisplayName], [BrandID], [CategoryID], [Price], [Description], [Quantity], [ImageURL], [OriginalPrice]) VALUES (N'Pin sạc dự phòng 10000mAh eSaver Gram 3 Đỏ', 7, 3, 300000, N'Thiết kế gọn gàng, cứng cáp.
Sạc 3.5 lần thiết bị pin dưới 1.500 mAh, 1.5 lần dưới 3.500 mAh.
Dễ dàng kiểm tra lại được dung lượng pin còn lại trong sạc.
Sử dụng lõi pin Li-Ion an toàn.	
Sạc được cho mọi điện thoại và máy tính bảng.
Bộ sản phẩm gồm: pin sạc.', 25, N'https://cdn.tgdd.vn/Products/Images/57/197863/pin-sac-du-phong-7500mah-esaver-gram-3-do-1-600x600.jpg', 220000)


INSERT [dbo].[CodePromotion] ([Code], [CodeName], [CodePercent], [StartDate], [EndDate]) VALUES (N'CUOITUAN', N'Cuối tuần', 0.3, CAST(N'2019-06-01 00:00:00.000' AS DateTime), CAST(N'2019-06-30 00:00:00.000' AS DateTime))
INSERT [dbo].[CodePromotion] ([Code], [CodeName], [CodePercent], [StartDate], [EndDate]) VALUES (N'HELLO', N'Chào thành viên mới', 0.2, CAST(N'2019-06-01 00:00:00.000' AS DateTime), CAST(N'2019-06-30 00:00:00.000' AS DateTime))
INSERT [dbo].[CustomerInfo] ([PhoneNumber], [CustomerName], [Email], [Address]) VALUES (N'0912345678', N'Thanh', N'thanh123@gmail.com', N'TPHCM')
INSERT [dbo].[CustomerInfo] ([PhoneNumber], [CustomerName], [Email], [Address]) VALUES (N'0932145678', N'Thạch', N'thach321@gmail.com', N'TPHCM')
INSERT [dbo].[CustomerInfo] ([PhoneNumber], [CustomerName], [Email], [Address]) VALUES (N'0987654321', N'Hoàng', N'hoangbabie@gmail.com', N'quận 4')
