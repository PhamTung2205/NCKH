Use NCKH
go

--Thêm Quyền
Insert into tblQuyen
values
(N'Admin'),
(N'Staff'),
(N'User')
go

--Thêm Tài khoản
Insert into tblTaiKhoan
Values
(N'Tung Pham',N'0329821795',N'Admin@123',0)
go

--Thêm type
Insert into tblType
values
(N'Tỉnh Thành'),
(N'Món Ăn'),
(N'Giải Trí'),
(N'Khách Sạn'),
(N'Nhà Hàng'),
(N'Địa Chỉ')
go
--Thêm Tỉnh thành
INSERT INTO tblTinhThanh
VALUES 
(N'Hà Nội',N'ha_noi.jpg',N'Hà Nội – thủ đô ngàn năm văn hiến của Việt Nam – là một trong những điểm đến hấp dẫn nhất cả nước, thu hút du khách bởi vẻ đẹp cổ kính, văn hóa đa dạng và ẩm thực phong phú. Thành phố này không chỉ nổi tiếng với những di tích lịch sử, mà còn có những góc phố bình yên, những khu chợ nhộn nhịp và nền ẩm thực đường phố đặc sắc.',0),
(N'Hải Phòng',N'hai_phong.jpg',N'Hải Phòng – thành phố cảng lớn nhất miền Bắc Việt Nam, không chỉ là trung tâm kinh tế quan trọng mà còn là điểm đến hấp dẫn với nhiều danh lam thắng cảnh, bãi biển đẹp và nền ẩm thực phong phú. Thành phố này mang vẻ đẹp vừa hiện đại, sôi động, vừa bình yên với những công trình kiến trúc cổ kính và thiên nhiên thơ mộng.',0),
(N'Đà Nẵng',N'da_nang.jpg',N'Đà Nẵng là một trong những thành phố đáng sống nhất Việt Nam, nổi tiếng với những bãi biển tuyệt đẹp, cảnh quan thiên nhiên hùng vĩ và các công trình hiện đại. Với sự kết hợp hài hòa giữa núi, biển, sông và thành phố, Đà Nẵng là điểm đến lý tưởng cho mọi du khách.',0),
(N'Thừa Thiên-Huế',N'hue.jpg',N'Thừa Thiên - Huế là vùng đất cố đô, nơi lưu giữ những giá trị lịch sử, văn hóa lâu đời của Việt Nam. Với vẻ đẹp cổ kính của quần thể di tích Cố đô Huế, dòng sông Hương thơ mộng và những bãi biển tuyệt đẹp, Huế là điểm đến không thể bỏ qua cho những ai yêu thích khám phá và trải nghiệm.',0),
(N'TP.Hồ Chí Minh',N'sai_gon.jpg',N'TP. Hồ Chí Minh (Sài Gòn) là trung tâm kinh tế, văn hóa lớn nhất Việt Nam, mang vẻ đẹp hiện đại, sôi động nhưng vẫn giữ được những nét văn hóa lịch sử đặc trưng. Thành phố này thu hút du khách bởi những công trình kiến trúc cổ kính, cuộc sống nhộn nhịp cùng nền ẩm thực phong phú.',0)
go

--Thêm Vui Choi
Insert Into tblVuiChoi
VALUES
(N'Hồ Gươm',N'ho_guom.jpg',N'Hồ Gươm, hay còn gọi là Hồ Hoàn Kiếm, là một trong những biểu tượng nổi bật nhất của Hà Nội, gắn liền với lịch sử, văn hóa và đời sống của người dân thủ đô. Hồ nằm ngay trung tâm thành phố, là điểm đến lý tưởng để tham quan, dạo bộ và tìm hiểu về những câu chuyện lịch sử huyền thoại.',2),
(N'Nhà Tù Hỏa Lò',N'hoa_lo.jpg',N'Nhà tù Hỏa Lò là một trong những di tích lịch sử quan trọng của Hà Nội, ghi dấu những năm tháng đấu tranh gian khổ của dân tộc Việt Nam. Nơi đây từng được mệnh danh là "Địa ngục trần gian", giam giữ nhiều chiến sĩ cách mạng kiên trung trong thời kỳ Pháp thuộc.Ngày nay, Nhà tù Hỏa Lò trở thành một điểm du lịch lịch sử thu hút du khách trong và ngoài nước, giúp họ hiểu rõ hơn về tinh thần bất khuất của những người yêu nước Việt Nam.',2),
(N'Lăng Bác',N'lang_bac.jpg',N'Lăng Chủ tịch Hồ Chí Minh, hay thường gọi là Lăng Bác, là một trong những địa danh lịch sử quan trọng bậc nhất của Việt Nam. Đây không chỉ là nơi an nghỉ của vị lãnh tụ vĩ đại Hồ Chí Minh mà còn là một điểm tham quan thu hút hàng triệu du khách mỗi năm.Lăng Bác tọa lạc tại Quảng trường Ba Đình, nơi Bác Hồ đã đọc Tuyên ngôn Độc lập khai sinh nước Việt Nam Dân chủ Cộng hòa vào ngày 2/9/1945.',2),
(N'Bảo Tàng Quân Sự',N'bao_tang_quan_su.jpg',N'Bảo tàng Lịch sử Quân sự Việt Nam (hay còn gọi là Bảo tàng Quân đội), nằm ngay trung tâm Hà Nội, là một điểm đến không thể bỏ qua với những ai yêu thích lịch sử và muốn tìm hiểu về quá trình đấu tranh dựng nước, giữ nước của dân tộc Việt Nam. Đây là một trong bảy bảo tàng quốc gia quan trọng nhất Việt Nam, trưng bày hàng nghìn hiện vật quý giá từ thời kỳ phong kiến đến các cuộc kháng chiến chống Pháp, chống Mỹ và bảo vệ Tổ quốc.',2),
(N'Hoàng Thành Thăng Long',N'hoang_thanh_thang_long.jpg',N'Hoàng thành Thăng Long là quần thể di tích lịch sử gắn liền với kinh thành Thăng Long xưa, từng là trung tâm chính trị, văn hóa của Việt Nam trong suốt hơn 1.300 năm. Đây là Di sản Văn hóa Thế giới được UNESCO công nhận vào năm 2010, trở thành một trong những điểm du lịch không thể bỏ qua khi đến Hà Nội.',2)
go

--Thêm Món Ăn
Insert INTO tblMonAn
Values
(N'Cafe trứng',N'cafe_trung.jpg',N'Cà phê trứng là một trong những đặc sản độc đáo của Hà Nội, nổi tiếng với hương vị béo ngậy, thơm ngon và cách pha chế đặc biệt. Món đồ uống này có nguồn gốc từ những năm 1940, do ông Nguyễn Văn Giảng – một bartender tại khách sạn Sofitel Legend Metropole – sáng tạo ra. Khi đó, do khan hiếm sữa tươi, ông đã sử dụng lòng đỏ trứng gà đánh bông cùng với đường, sữa đặc để tạo ra một lớp kem mịn màng, rồi pha cùng cà phê đậm đà.',1),
(N'Phở',N'pho.jpg',N'Phở Hà Nội không chỉ là món ăn sáng quen thuộc mà còn là biểu tượng ẩm thực của Việt Nam. Với nước dùng trong ngọt thanh, bánh phở mềm dẻo, thịt bò hoặc gà tươi ngon, phở Hà Nội mang đến hương vị tinh tế, làm say đắm thực khách trong và ngoài nước.',1),
(N'Bún Đậu',N'bun_dau.jpg',N'Nhắc đến ẩm thực Hà Nội, bên cạnh phở, bún chả, bánh cuốn, thì bún đậu mắm tôm là một trong những món ăn đặc trưng mà bạn không thể bỏ qua. Với sự kết hợp hoàn hảo giữa bún lá, đậu rán giòn, chả cốm, thịt luộc cùng với mắm tôm đậm đà, món ăn này mang đến một hương vị khó quên cho bất cứ ai thưởng thức.',1),
(N'Bún Chả',N'bun_cha.jpg',N'Nhắc đến ẩm thực Hà Nội, bên cạnh phở, bún đậu mắm tôm, bánh cuốn, thì bún chả là một món ăn đậm chất Hà Nội mà bất cứ ai cũng nên thử. Với sự kết hợp hài hòa giữa chả nướng thơm lừng, bún trắng mềm, nước chấm chua ngọt đậm đà, bún chả mang đến hương vị khó quên cho thực khách.',1),
(N'Cốm',N'com.jpg',N'Cốm Hà Nội là một đặc sản truyền thống mang đậm hương sắc mùa thu, nổi tiếng với vị dẻo thơm, ngọt bùi, gắn liền với nét văn hóa tinh tế của người Tràng An.Cốm có nguồn gốc từ làng Vòng (nay thuộc quận Cầu Giấy, Hà Nội). Để làm cốm, người dân phải chọn loại lúa nếp non, khi hạt còn căng sữa. Lúa sau khi thu hoạch sẽ được rang chín trên bếp lửa nhỏ, rồi giã đều tay cho đến khi vỏ trấu bong ra, để lại những hạt cốm xanh mướt, mềm dẻo.',1)
go

--Thêm Khách sạn
Insert into tblKhachSan
values
(N'The Oriental Jade Hotel',N'jade_hotel.jpg',N'The Oriental Jade Hotel sở hữu không gian sang trọng, hiện đại và tọa lạc tại vị trí đắc địa ngay trung tâm khu phố cổ kính. Mỗi phòng ngủ tại The Oriental Jade Hotel đều có view hướng ra Hồ Gươm xinh đẹp. Từ khách sạn, bạn sẽ dễ dàng di chuyển ra hồ Gươm để tản bộ, ngắm cảnh và chụp ảnh check in phong cảnh hữu tình.',3),
(N'Peridot Grand Luxury Boutique Hotel',N'boutique_hotel.jpg',N'Peridot Grand Luxury Boutique Hotel là thiên đường nghỉ dưỡng với cảnh quanh xanh mướt, không gian yên tĩnh. Khách sạn Peridot Grand Luxury Boutique Hotel được ví như viên ngọc ẩn giữa lòng Hà Nội.',3),
(N'Movenpick',N'movenpick.jpg',N'Movenpick là một trong những khách sạn thuộc top đầu tại phố cổ. Khách sạn này được thiết kế theo phong cách Pháp cổ điển mang đến sự hào nhoáng, tráng lệ và thu hút những người yêu kiến trúc độc đáo.',3),
(N'Grand Mercure',N'grand_mercure.jpg',N'Grand Mercure là thương hiệu khách sạn nổi tiếng trên toàn thế giới. Tại Hà Nội, Grand Mercure sở hữu lên đến 181 phòng nghỉ cao cấp. Khách sạn này tọa lạc tại điểm văn hóa và kinh tế của thủ đô, dễ dàng di chuyển đến các địa điểm tham quan và hội họp quan trọng tại Hà Nội.',3),
(N'Lotte Hotel',N'lotte.jpg',N'Lotte Hotel tọa lạc tại tòa nhà Lotte Center (1 trong 3 tòa nhà cao nhất Việt Nam). Khách sạn Lotte nằm từ tầng 34 đến tầng 65 của tòa Lotte Center được thiết kế với các bức tường kính dày, tối ưu hóa mọi quan sát ra bên ngoài. Lotte Hotel là nơi dừng chân và ngắm toàn cảnh Hà Nội lý tưởng bạn nên trải nghiệm.',3)
go

--Thêm Nhà Hàng
Insert into tblNhaHang
values
(N'Vietnamese Cuisine Restaurant',N'cuisine_restaurant.jpg',N'Cầu Gỗ Vietnamese Cuisine Restaurant là một điểm đến lý tưởng cho những ai muốn thưởng thức ẩm thực Việt Nam truyền thống. Nhà hàng nằm ở vị trí đắc địa giữa đường Đinh Tiên Hoàng và phố Cầu cực kỳ lý tưởng để bạn ngắm nhìn Hồ Gươm lung linh từ trên cao. Bạn cũng có thể tận hưởng không khí trong lành và lãng mạn của không gian ngoài trời được nhiều người ưa chuộng. Các món ăn của nhà hàng được chăm chút từng chi tiết từ cách chế biến đến cách bài trí mang đến cho bạn một cảm giác sang trọng và hiện đại.',4),
(N'Ngọc Mai Vàng',N'ngoc_mai_vang.jpg',N'Ngọc Mai Vàng là một nhà hàng buffet lớn và đẳng cấp tại Hà Nội. Nhà hàng có không gian thiết kế đẹp mắt và ấm cúng rất thích hợp cho những bữa ăn vui vẻ cùng gia đình, đồng nghiệp, bạn bè. Điểm hẹn ẩm thực này nằm ở tầng 17 của toà nhà Ruby 44 Lê Ngọc Hân mang tới cho bạn một tầm nhìn tuyệt vời khi thưởng thức bữa ăn. Thực đơn của nhà hàng ngon Hà Nội này cực kỳ phong phú với hàng trăm món ăn hấp dẫn, chất lượng được phục vụ theo tiêu chuẩn quốc tế.',4),
(N'Góc Quê Hà Nội',N'goc_que.jpg',N'Nhắc đến các nhà hàng Hà Nội ngon có tiếng thì không thể quên Góc Quê - nhà hàng có điểm đặc trưng là từng món ăn sẽ có những loại nước chấm chuyên biệt. Nếu có cơ hội làm chuyến vui chơi phố cổ thì Góc Quê là một lựa chọn hoàn hảo. Điểm nhấn độc lạ của quán là món gà nướng là loại nước chấm đậm vị mặn mòi của biển, chả ốc là loại nước mắm chua ngọt cay nồng… đậm chất quốc vị của các món ăn truyền thống Việt Nam. ',4),
(N'Quán Xưa Hà Nội',N'quan_xua.jpg',N'Một nhà hàng mang hương vị truyền thống linh hồn món Việt trong lòng thực thực khách Hà Thành không thể không kể đến đó chính là Quán Xưa. Nếu có cơ hội thực hiện du lịch Việt Nam thì dừng chân tại đây thực khách sẽ ấn tượng mạnh ngay từ không gian đến hương vị xưa ẩn trong từng món ăn.',4),
(N'Tầm Vị Hà Nội ',N'tam_vi.jpg',N'Bước chân vào Tầm Vị, bạn như lạc vào một không gian xưa cũ của Hà Nội, với những món ăn dân dã gợi nhớ tuổi thơ. Không gian quán được thiết kế theo phong cách tiệm trà cổ, mang đậm nét đặc trưng của miền Bắc Việt Nam, với nội thất Trung Hoa cổ điển, biển báo viết tay, máy hát đĩa than và điện thoại cổ.',4)
go

--Thêm Địa Chỉ
Insert Into tblDiaChi(SNameDiaChi)
Values
(N'Số 23, Ngõ 168, Phố Tràng Thi, Quận Hoàn Kiếm, Hà Nội')
go

--Thêm Tỉnh Thành - Vui Chơi
Insert Into tblTinhThanh_VuiChoi
Values
(0,0,0),(0,1,0),(0,2,0),(0,3,0),(0,4,0)
go

--Thêm Tỉnh Thành - Món ăn
Insert Into tblTinhThanh_MonAn
Values
(0,0,0),(0,1,0),(0,2,0),(0,3,0),(0,4,0)
go

--Thêm Tỉnh Thành - Khách Sạn
Insert Into tblTinhThanh_KhachSan
Values
(0,0,0),(0,1,0),(0,2,0),(0,3,0),(0,4,0)
go

--Thêm Tỉnh Thành - Nhà Hàng
Insert Into tblTinhThanh_NhaHang
Values
(0,0,0),(0,1,0),(0,2,0),(0,3,0),(0,4,0)
go
