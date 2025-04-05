Use NCKH
go
--Mới
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
(N'Tung Pham',N'0329821795',N'Admin@123',1),
(N'NguyenThuyTrinh', N'0912345678', N'User@123', 3), 
(N'Trần Thùy', N'0987654321', N'Staff@123', 2),
(N'Phúc Nguyễn', N'0911111111', N'pass1', 2),
(N'Thảo Lê', N'0922222222', N'pass2', 2),
(N'Hoàng Phạm', N'0933333333', N'pass3', 2),
(N'Linh Nguyễn', N'0944444444', N'pass4', 2),
(N'Hoàng Nguyễn', N'0955555555', N'pass5', 2),
(N'Trang Phạm', N'0966666666', N'pass6', 2)
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
(N'Hà Nội',N'ha_noi.jpg,ha_noi1.jpg,ha_noi2.jpg,ha_noi3.jpg,ha_noi4.jpg',N'Hà Nội – thủ đô ngàn năm văn hiến của Việt Nam – là một trong những điểm đến hấp dẫn nhất cả nước, thu hút du khách bởi vẻ đẹp cổ kính, văn hóa đa dạng và ẩm thực phong phú. Thành phố này không chỉ nổi tiếng với những di tích lịch sử, mà còn có những góc phố bình yên, những khu chợ nhộn nhịp và nền ẩm thực đường phố đặc sắc.',1),
(N'Hải Phòng',N'hai_phong.jpg',N'Hải Phòng – thành phố cảng lớn nhất miền Bắc Việt Nam, không chỉ là trung tâm kinh tế quan trọng mà còn là điểm đến hấp dẫn với nhiều danh lam thắng cảnh, bãi biển đẹp và nền ẩm thực phong phú. Thành phố này mang vẻ đẹp vừa hiện đại, sôi động, vừa bình yên với những công trình kiến trúc cổ kính và thiên nhiên thơ mộng.',1),
(N'Đà Nẵng',N'da_nang.jpg',N'Đà Nẵng là một trong những thành phố đáng sống nhất Việt Nam, nổi tiếng với những bãi biển tuyệt đẹp, cảnh quan thiên nhiên hùng vĩ và các công trình hiện đại. Với sự kết hợp hài hòa giữa núi, biển, sông và thành phố, Đà Nẵng là điểm đến lý tưởng cho mọi du khách.',1),
(N'Thừa Thiên-Huế',N'hue.jpg',N'Thừa Thiên - Huế là vùng đất cố đô, nơi lưu giữ những giá trị lịch sử, văn hóa lâu đời của Việt Nam. Với vẻ đẹp cổ kính của quần thể di tích Cố đô Huế, dòng sông Hương thơ mộng và những bãi biển tuyệt đẹp, Huế là điểm đến không thể bỏ qua cho những ai yêu thích khám phá và trải nghiệm.',1),
(N'TP.Hồ Chí Minh',N'sai_gon.jpg',N'TP. Hồ Chí Minh (Sài Gòn) là trung tâm kinh tế, văn hóa lớn nhất Việt Nam, mang vẻ đẹp hiện đại, sôi động nhưng vẫn giữ được những nét văn hóa lịch sử đặc trưng. Thành phố này thu hút du khách bởi những công trình kiến trúc cổ kính, cuộc sống nhộn nhịp cùng nền ẩm thực phong phú.',1),
(N'Nha Trang', N'nha_trang.jpg', N'Nha Trang – thành phố biển xinh đẹp thuộc tỉnh Khánh Hòa, nổi tiếng với những bãi biển trải dài cát trắng mịn, nước trong xanh như ngọc và khí hậu ôn hòa quanh năm. Nơi đây còn có các đảo nổi tiếng như Hòn Tre, Hòn Mun và vịnh Nha Phu, là thiên đường cho du lịch nghỉ dưỡng, lặn biển ngắm san hô và thưởng thức hải sản tươi ngon.', 1),
(N'Đà Lạt', N'da_lat.jpg', N'Đà Lạt – thành phố ngàn hoa nằm trên cao nguyên Lâm Viên, tỉnh Lâm Đồng, được mệnh danh là "tiểu Paris" của Việt Nam. Với khí hậu mát mẻ quanh năm, những đồi thông bạt ngàn, hồ Xuân Hương thơ mộng và các biệt thự kiến trúc Pháp cổ kính, Đà Lạt là điểm đến lý tưởng cho những ai yêu thiên nhiên và sự lãng mạn.', 1),
(N'Phú Quốc', N'phu_quoc.jpg', N'Phú Quốc – hòn đảo ngọc lớn nhất Việt Nam thuộc tỉnh Kiên Giang, nổi bật với những bãi biển hoang sơ như Bãi Sao, Bãi Dài, nước biển trong vắt và hệ sinh thái rừng nhiệt đới phong phú. Đảo còn nổi tiếng với nước mắm truyền thống, làng chài yên bình và các khu nghỉ dưỡng sang trọng, thu hút hàng triệu du khách mỗi năm.', 1),
(N'Hạ Long', N'ha_long.jpg', N'Hạ Long – thành phố thuộc tỉnh Quảng Ninh, là nơi tọa lạc Vịnh Hạ Long, kỳ quan thiên nhiên thế giới được UNESCO công nhận. Với hơn 1.600 đảo đá vôi lớn nhỏ mang hình thù độc đáo, làn nước xanh ngọc bích và các hang động kỳ bí như hang Sửng Sốt, hang Đầu Gỗ, Hạ Long là điểm đến không thể bỏ qua cho du lịch khám phá và trải nghiệm.', 1),
(N'Cần Thơ', N'can_tho.jpg', N'Cần Thơ – trung tâm kinh tế, văn hóa của miền Tây Nam Bộ, được biết đến với biệt danh "Tây Đô". Thành phố nổi tiếng với chợ nổi Cái Răng nhộn nhịp, cầu Cần Thơ bắc qua sông Hậu hùng vĩ, những vườn trái cây trĩu quả và không gian sông nước đặc trưng, mang đến trải nghiệm đậm chất miền Tây cho du khách.', 1),
(N'Hội An', N'hoi_an.jpg', N'Hội An – thành phố cổ thuộc Quảng Nam, nổi tiếng với phố cổ đèn lồng, kiến trúc cổ kính và bãi biển Cửa Đại.', 1),
(N'Sapa', N'sapa.jpg', N'Sapa – thị trấn mờ sương ở Lào Cai, nổi bật với ruộng bậc thang, đỉnh Fansipan và văn hóa dân tộc thiểu số.', 1),
(N'Quy Nhơn', N'quy_nhon.jpg', N'Quy Nhơn – thành phố biển ở Bình Định, nổi tiếng với Eo Gió, Kỳ Co và hải sản tươi ngon.', 1),
(N'Buôn Ma Thuột', N'buon_ma_thuot.jpg', N'Buôn Ma Thuột – thủ phủ cà phê của Đắk Lắk, với thác Dray Nur và văn hóa Tây Nguyên.', 1),
(N'Vũng Tàu', N'vung_tau.jpg', N'Vũng Tàu – thành phố biển gần TP.HCM, nổi tiếng với tượng Chúa Kitô và bãi Sau.', 1),
(N'Phan Thiết', N'phan_thiet.jpg', N'Phan Thiết – thành phố ở Bình Thuận, nổi bật với đồi cát Mũi Né và biển xanh mát.', 1),
(N'Côn Đảo', N'con_dao.jpg', N'Côn Đảo – quần đảo hoang sơ ở Bà Rịa - Vũng Tàu, với bãi Đầm Trầu và di tích lịch sử.', 1),
(N'Huế', N'hue.jpg', N'Huế – cố đô Thừa Thiên-Huế, nổi tiếng với Kinh thành Huế, sông Hương và ẩm thực cung đình.', 1),
(N'Hà Giang', N'ha_giang.jpg', N'Hà Giang – vùng đất biên giới với cao nguyên đá Đồng Văn và đèo Mã Pì Lèng hùng vĩ.', 1),
(N'Điện Biên', N'dien_bien.jpg', N'Điện Biên – vùng đất lịch sử với chiến thắng Điện Biên Phủ và thiên nhiên Tây Bắc.', 1),
(N'Lý Sơn', N'ly_son.jpg', N'Lý Sơn – hòn đảo ở Quảng Ngãi, nổi tiếng với cánh đồng tỏi và núi lửa cổ.', 1),
(N'Nam Định', N'nam_dinh.jpg', N'Nam Định – vùng đất văn hóa với chùa Cổ Lễ và làng nghề truyền thống.', 1),
(N'Bắc Giang', N'bac_giang.jpg', N'Bắc Giang – vùng đất vải thiều Lục Ngạn và di tích Tây Yên Tử.', 1),
(N'Bến Tre', N'ben_tre.jpg', N'Bến Tre – xứ dừa miền Tây, với sông nước hữu tình và các làng nghề thủ công.', 1),
(N'Tiền Giang', N'tien_giang.jpg', N'Tiền Giang – vùng đất miền Tây với chợ nổi Ngã Bảy và vườn trái cây.', 1),
(N'An Giang', N'an_giang.jpg', N'An Giang – vùng đất với rừng tràm Trà Sư, núi Cấm và văn hóa Chăm.', 1),
(N'Vĩnh Nghiêm', N'vinh_nghiem.jpg', N'Vĩnh Nghiêm – vùng đất Bắc Giang với chùa Vĩnh Nghiêm và cảnh quan yên bình.', 1),
(N'Đồng Nai', N'dong_nai.jpg', N'Đồng Nai – vùng đất Đông Nam Bộ với thác Giang Điền và vườn quốc gia Cát Tiên.', 1),
(N'Bình Dương', N'binh_duong.jpg', N'Bình Dương – thành phố công nghiệp với làng gốm sứ và khu du lịch Đại Nam.', 1),
(N'Lạng Sơn', N'lang_son.jpg', N'Lạng Sơn – vùng đất biên giới với chợ Đông Kinh và động Tam Thanh.', 1)
go



--Thêm Vui Choi
Insert Into tblGiaiTri
VALUES
(N'Bảo Tàng Quân Sự',N'bao_tang_quan_su.jpg,bao_tang_quan_su1.jpg,bao_tang_quan_su2.jpg,bao_tang_quan_su3.jpg,bao_tang_quan_su4.jpg',N'Bảo tàng Lịch sử Quân sự Việt Nam (hay còn gọi là Bảo tàng Quân đội), nằm ngay trung tâm Hà Nội, là một điểm đến không thể bỏ qua với những ai yêu thích lịch sử và muốn tìm hiểu về quá trình đấu tranh dựng nước, giữ nước của dân tộc Việt Nam. Đây là một trong bảy bảo tàng quốc gia quan trọng nhất Việt Nam, trưng bày hàng nghìn hiện vật quý giá từ thời kỳ phong kiến đến các cuộc kháng chiến chống Pháp, chống Mỹ và bảo vệ Tổ quốc.',3),
(N'Hồ Gươm',N'ho_guom.jpg',N'Hồ Gươm, hay còn gọi là Hồ Hoàn Kiếm, là một trong những biểu tượng nổi bật nhất của Hà Nội, gắn liền với lịch sử, văn hóa và đời sống của người dân thủ đô. Hồ nằm ngay trung tâm thành phố, là điểm đến lý tưởng để tham quan, dạo bộ và tìm hiểu về những câu chuyện lịch sử huyền thoại.',3),
(N'Nhà Tù Hỏa Lò',N'hoa_lo.jpg',N'Nhà tù Hỏa Lò là một trong những di tích lịch sử quan trọng của Hà Nội, ghi dấu những năm tháng đấu tranh gian khổ của dân tộc Việt Nam. Nơi đây từng được mệnh danh là "Địa ngục trần gian", giam giữ nhiều chiến sĩ cách mạng kiên trung trong thời kỳ Pháp thuộc.Ngày nay, Nhà tù Hỏa Lò trở thành một điểm du lịch lịch sử thu hút du khách trong và ngoài nước, giúp họ hiểu rõ hơn về tinh thần bất khuất của những người yêu nước Việt Nam.',3),
(N'Lăng Bác',N'lang_bac.jpg',N'Lăng Chủ tịch Hồ Chí Minh, hay thường gọi là Lăng Bác, là một trong những địa danh lịch sử quan trọng bậc nhất của Việt Nam. Đây không chỉ là nơi an nghỉ của vị lãnh tụ vĩ đại Hồ Chí Minh mà còn là một điểm tham quan thu hút hàng triệu du khách mỗi năm.Lăng Bác tọa lạc tại Quảng trường Ba Đình, nơi Bác Hồ đã đọc Tuyên ngôn Độc lập khai sinh nước Việt Nam Dân chủ Cộng hòa vào ngày 2/9/1945.',3),
(N'Hoàng Thành Thăng Long',N'hoang_thanh_thang_long.jpg',N'Hoàng thành Thăng Long là quần thể di tích lịch sử gắn liền với kinh thành Thăng Long xưa, từng là trung tâm chính trị, văn hóa của Việt Nam trong suốt hơn 1.300 năm. Đây là Di sản Văn hóa Thế giới được UNESCO công nhận vào năm 2010, trở thành một trong những điểm du lịch không thể bỏ qua khi đến Hà Nội.',3),
(N'Vinpearl Land Nha Trang', N'vinpearl.jpg', N'Vinpearl Land Nha Trang nằm trên đảo Hòn Tre, là khu vui chơi giải trí đẳng cấp quốc tế với công viên nước hiện đại, thủy cung hoành tráng trưng bày hàng trăm loài sinh vật biển, và các trò chơi cảm giác mạnh như đu quay dây văng, tàu lượn siêu tốc. Nơi đây còn có bãi biển riêng và cáp treo vượt biển dài nhất thế giới, mang đến trải nghiệm đa dạng cho mọi lứa tuổi.', 3),
(N'Thác Pongour', N'pongour.jpg', N'Thác Pongour, nằm cách trung tâm Đà Lạt khoảng 50km, được mệnh danh là "Nam Thiên đệ nhất thác" nhờ vẻ đẹp hùng vĩ và hoang sơ. Dòng nước trắng xóa đổ từ độ cao 40m xuống 7 tầng đá tạo thành những bậc thang tự nhiên, bao quanh là rừng thông xanh mướt, rất thích hợp cho picnic, chụp ảnh và khám phá thiên nhiên.', 3),
(N'Bãi Sao', N'bai_sao.jpg', N'Bãi Sao tại Phú Quốc là một trong những bãi biển đẹp nhất Việt Nam, nổi bật với bờ cát trắng mịn như kem, nước biển trong xanh và những hàng dừa nghiêng bóng. Đây là nơi lý tưởng để tắm biển, nghỉ ngơi thư giãn, hoặc tham gia các hoạt động như chèo thuyền kayak, lặn ngắm san hô và thưởng thức hải sản ngay trên bãi biển.', 3),
(N'Du thuyền Vịnh Hạ Long', N'ha_long_cruise.jpg', N'Trải nghiệm du thuyền trên Vịnh Hạ Long là hành trình khám phá kỳ quan thiên nhiên thế giới với những đảo đá vôi kỳ thú, làng chài nổi yên bình và các hang động tuyệt đẹp như hang Thiên Cung, hang Trống. Du khách có thể tận hưởng không khí trong lành, ngắm hoàng hôn trên vịnh và tham gia chèo thuyền kayak giữa làn nước xanh ngọc.', 3),
(N'Chợ Nổi Cái Răng', N'cai_rang.jpg', N'Chợ Nổi Cái Răng ở Cần Thơ là biểu tượng văn hóa đặc sắc của miền Tây, nơi hàng trăm ghe thuyền tấp nập buôn bán trên sông từ sáng sớm. Du khách có thể trải nghiệm ngồi thuyền len lỏi giữa chợ, thưởng thức các món ăn địa phương như bún nước lèo, bánh xèo và cảm nhận nhịp sống sông nước độc đáo của vùng đồng bằng sông Cửu Long.', 3),
(N'Phố cổ Hội An', N'hoi_an_old.jpg', N'Phố cổ Hội An – khu phố đèn lồng lung linh, nơi giao thoa văn hóa Việt - Hoa - Nhật.', 3),
(N'Ruộng bậc thang Sapa', N'sapa_terrace.jpg', N'Ruộng bậc thang Sapa – kiệt tác thiên nhiên với cảnh quan tuyệt đẹp quanh năm.', 3),
(N'Eo Gió Quy Nhơn', N'eo_gio.jpg', N'Eo Gió – cung đường ven biển tuyệt đẹp với gió lộng và vách đá kỳ vĩ.', 3),
(N'Thác Dray Nur', N'dray_nur.jpg', N'Thác Dray Nur – thác nước hùng vĩ giữa Tây Nguyên, nơi thư giãn giữa thiên nhiên.', 3),
(N'Tượng Chúa Kitô Vũng Tàu', N'christ_vt.jpg', N'Tượng Chúa Kitô – điểm check-in nổi tiếng với tầm nhìn toàn cảnh Vũng Tàu.', 3),
(N'Đồi cát Mũi Né', N'mui_ne_sand.jpg', N'Đồi cát Mũi Né – sa mạc nhỏ giữa lòng Việt Nam, lý tưởng cho trượt cát.', 3),
(N'Bãi Đầm Trầu Côn Đảo', N'dam_trau.jpg', N'Bãi Đầm Trầu – bãi biển hoang sơ với cát trắng và nước trong veo.', 3),
(N'Sông Hương Huế', N'huong_river.jpg', N'Sông Hương – dòng sông thơ mộng với thuyền rồng và nhạc cung đình.', 3),
(N'Đèo Mã Pì Lèng', N'ma_pi_leng.jpg', N'Đèo Mã Pì Lèng – con đèo huyền thoại ở Hà Giang với cảnh quan ngoạn mục.', 3),
(N'Bảo tàng Điện Biên Phủ', N'dien_bien_museum.jpg', N'Bảo tàng Điện Biên Phủ – nơi lưu giữ lịch sử chiến thắng vĩ đại.', 3),
(N'Núi Thới Lới Lý Sơn', N'thoi_loi.jpg', N'Núi Thới Lới – ngọn núi lửa cổ với tầm nhìn ra biển Lý Sơn.', 3),
(N'Chùa Cổ Lễ', N'co_le_pagoda.jpg', N'Chùa Cổ Lễ – ngôi chùa cổ kính ở Nam Định với kiến trúc độc đáo.', 3),
(N'Rừng vải Lục Ngạn', N'luc_ngan.jpg', N'Rừng vải Lục Ngạn – điểm tham quan mùa vải chín rộ ở Bắc Giang.', 3),
(N'Cù lao Thới Sơn', N'thoi_son.jpg', N'Cù lao Thới Sơn – điểm du lịch sông nước với đờn ca tài tử ở Tiền Giang.', 3),
(N'Rừng tràm Trà Sư', N'tra_su.jpg', N'Rừng tràm Trà Sư – khu rừng ngập nước xanh mát ở An Giang.', 3),
(N'Chợ Đông Kinh', N'dong_kinh.jpg', N'Chợ Đông Kinh – khu chợ biên giới sầm uất ở Lạng Sơn.', 3),
(N'Thác Giang Điền', N'giang_dien.jpg', N'Thác Giang Điền – điểm dã ngoại nổi tiếng ở Đồng Nai.', 3),
(N'Khu du lịch Đại Nam', N'dai_nam.jpg', N'Khu du lịch Đại Nam – công viên giải trí lớn ở Bình Dương.', 3),
(N'Động Tam Thanh', N'tam_thanh.jpg', N'Động Tam Thanh – hang động kỳ bí với nhũ đá đẹp ở Lạng Sơn.', 3),
(N'Chợ nổi Ngã Bảy', N'nga_bay.jpg', N'Chợ nổi Ngã Bảy – khu chợ sông nước đặc trưng ở Tiền Giang.', 3)
go

--Thêm Món Ăn
Insert INTO tblMonAn
Values
(N'Cafe trứng',N'cafe_trung.jpg',N'Cà phê trứng là một trong những đặc sản độc đáo của Hà Nội, nổi tiếng với hương vị béo ngậy, thơm ngon và cách pha chế đặc biệt. Món đồ uống này có nguồn gốc từ những năm 1940, do ông Nguyễn Văn Giảng – một bartender tại khách sạn Sofitel Legend Metropole – sáng tạo ra. Khi đó, do khan hiếm sữa tươi, ông đã sử dụng lòng đỏ trứng gà đánh bông cùng với đường, sữa đặc để tạo ra một lớp kem mịn màng, rồi pha cùng cà phê đậm đà.',2),
(N'Phở',N'pho.jpg',N'Phở Hà Nội không chỉ là món ăn sáng quen thuộc mà còn là biểu tượng ẩm thực của Việt Nam. Với nước dùng trong ngọt thanh, bánh phở mềm dẻo, thịt bò hoặc gà tươi ngon, phở Hà Nội mang đến hương vị tinh tế, làm say đắm thực khách trong và ngoài nước.',2),
(N'Bún Đậu',N'bun_dau.jpg',N'Nhắc đến ẩm thực Hà Nội, bên cạnh phở, bún chả, bánh cuốn, thì bún đậu mắm tôm là một trong những món ăn đặc trưng mà bạn không thể bỏ qua. Với sự kết hợp hoàn hảo giữa bún lá, đậu rán giòn, chả cốm, thịt luộc cùng với mắm tôm đậm đà, món ăn này mang đến một hương vị khó quên cho bất cứ ai thưởng thức.',2),
(N'Bún Chả',N'bun_cha.jpg',N'Nhắc đến ẩm thực Hà Nội, bên cạnh phở, bún đậu mắm tôm, bánh cuốn, thì bún chả là một món ăn đậm chất Hà Nội mà bất cứ ai cũng nên thử. Với sự kết hợp hài hòa giữa chả nướng thơm lừng, bún trắng mềm, nước chấm chua ngọt đậm đà, bún chả mang đến hương vị khó quên cho thực khách.',2),
(N'Cốm',N'com.jpg',N'Cốm Hà Nội là một đặc sản truyền thống mang đậm hương sắc mùa thu, nổi tiếng với vị dẻo thơm, ngọt bùi, gắn liền với nét văn hóa tinh tế của người Tràng An.Cốm có nguồn gốc từ làng Vòng (nay thuộc quận Cầu Giấy, Hà Nội). Để làm cốm, người dân phải chọn loại lúa nếp non, khi hạt còn căng sữa. Lúa sau khi thu hoạch sẽ được rang chín trên bếp lửa nhỏ, rồi giã đều tay cho đến khi vỏ trấu bong ra, để lại những hạt cốm xanh mướt, mềm dẻo.',2),
(N'Bún Sứa', N'bun_sua.jpg', N'Bún Sứa là món ăn đặc sản trứ danh của Nha Trang, nổi bật với nước dùng trong ngọt được ninh từ cá tươi, kết hợp cùng sứa trắng giòn sần sật, thơm ngon. Món ăn được phục vụ kèm rau sống, ớt tươi, chanh và nước mắm cay nồng, tạo nên hương vị đậm đà, đặc trưng của miền biển Khánh Hòa.', 2),
(N'Bánh Căn', N'banh_can.jpg', N'Bánh Căn Đà Lạt là món ăn dân dã được làm từ bột gạo đổ trong khuôn đất nung nóng, tạo nên những chiếc bánh nhỏ giòn rụm bên ngoài, mềm bên trong. Bánh thường được ăn kèm với nước mắm pha ngọt, topping như trứng cút, hành phi, tôm hoặc mực, mang đến hương vị đậm chất cao nguyên Lâm Đồng.', 2),
(N'Gỏi Cá Mai', N'goi_ca_mai.jpg', N'Gỏi Cá Mai – đặc sản Phú Quốc, được chế biến từ cá mai tươi sống, lọc xương khéo léo, trộn cùng hành phi, ớt, tỏi và rau thơm. Món gỏi này ăn kèm bánh tráng và nước chấm đặc biệt làm từ nước mắm Phú Quốc nguyên chất, tạo nên vị tươi ngon, cay nồng khó cưỡng, đậm chất biển đảo Kiên Giang.', 2),
(N'Chả Cá Lã Vọng', N'cha_ca.jpg', N'Chả Cá Lã Vọng là món ăn nổi tiếng của Hà Nội, được làm từ cá lăng hoặc cá nheo tươi, ướp nghệ, thì là, sau đó nướng trên than hoa rồi chiên vàng. Món này ăn cùng bún rối, rau thơm, hành phi và mắm tôm pha chua ngọt, mang đến hương vị thơm lừng, béo ngậy, đậm chất ẩm thực Tràng An.', 2),
(N'Bánh Xèo Miền Tây', N'banh_xeo.jpg', N'Bánh Xèo Miền Tây của Cần Thơ là món ăn dân dã với vỏ bánh giòn rụm làm từ bột gạo, nhân tôm, thịt, giá đỗ và hành lá. Bánh được cuốn với rau sống, rau cải, lá cách và chấm nước mắm chua ngọt, tạo nên sự hòa quyện giữa vị béo, giòn và thanh mát, đặc trưng của vùng đồng bằng sông Cửu Long.', 2),
(N'Cơm Tấm Sài Gòn', N'com_tam.jpg', N'Cơm tấm với sườn nướng, trứng ốp la và nước mắm đặc trưng của TP.HCM.', 2),
(N'Bánh Tráng Nướng Đà Lạt', N'banh_trang_nuong.jpg', N'Bánh tráng nướng giòn tan với trứng, phô mai và hành.', 2),
(N'Bún Bò Huế', N'bun_bo_hue.jpg', N'Bún bò với nước dùng cay nồng, thịt bò và tiết hầm đậm đà.', 2),
(N'Mì Quảng', N'mi_quang.jpg', N'Mì Quảng Hội An với sợi mì dai, thịt heo, tôm và rau sống.', 2),
(N'Bánh Khoái Huế', N'banh_khoai.jpg', N'Bánh khoái giòn rụm với tôm, thịt và nước chấm mắm nêm.', 2),
(N'Cao Lầu Hội An', N'cao_lau.jpg', N'Cao lầu với sợi mì đặc biệt, thịt heo và rau thơm.', 2),
(N'Bánh Canh Ghẹ', N'banh_canh_ghe.jpg', N'Bánh canh ghẹ Vũng Tàu với nước dùng ngọt từ ghẹ tươi.', 2),
(N'Gỏi Sầu Đâu', N'goi_sau_dau.jpg', N'Gỏi sầu đâu An Giang với lá sầu đâu, tôm khô và nước mắm chua ngọt.', 2),
(N'Bánh Bèo Huế', N'banh_beo.jpg', N'Bánh bèo mềm mịn với tôm chấy, hành phi và nước mắm.', 2),
(N'Lẩu Mắm Miền Tây', N'lau_mam.jpg', N'Lẩu mắm đậm đà với cá, tôm và rau đặc trưng miền Tây.', 2),
(N'Bánh Mì Pate', N'banh_mi_pate.jpg', N'Bánh mì pate Sài Gòn với pate gan, thịt nguội và rau củ.', 2),
(N'Cháo Lòng Nam Định', N'chao_long.jpg', N'Cháo lòng thơm ngon với lòng heo và bánh đa.', 2),
(N'Bún Riêu Cua', N'bun_rieu.jpg', N'Bún riêu cua với nước dùng chua nhẹ, cua đồng và đậu phụ.', 2),
(N'Bánh Cuốn Thanh Trì', N'banh_cuon.jpg', N'Bánh cuốn mỏng mềm với nhân thịt băm và mộc nhĩ.', 2),
(N'Hủ Tiếu Nam Vang', N'hu_tieu.jpg', N'Hủ tiếu với nước dùng ngọt, tôm, thịt và rau giá.', 2),
(N'Gỏi Lá Kon Tum', N'goi_la.jpg', N'Gỏi lá với hàng chục loại lá rừng, thịt heo và nước chấm đặc biệt.', 2),
(N'Cá Kho Tộ', N'ca_kho_to.jpg', N'Cá kho tộ miền Tây với cá lóc, nước mắm và tiêu thơm lừng.', 2),
(N'Bánh Ướt Lòng Gà', N'banh_uot.jpg', N'Bánh ướt Đà Lạt với lòng gà và rau thơm, chấm mắm nêm.', 2),
(N'Nem Chua Thanh Hóa', N'nem_chua.jpg', N'Nem chua cay nồng với thịt heo lên men và tỏi.', 2),
(N'Bánh Xèo Quảng Bình', N'banh_xeo_qb.jpg', N'Bánh xèo giòn với tôm, thịt và nước mắm cay.', 2)
go

--Thêm Khách sạn
Insert into tblKhachSan
values
(N'InterContinental Hà Nội',N'inter_continentail.jpg,inter_continentail1.jpg,inter_continentail2.jpg,inter_continentail3.jpg,inter_continentail4.jpg',N'Ngoài tiêu chuẩn IHG Clean Promise, tất cả khách đều được truy cập Wi-Fi miễn phí trong tất cả các phòng và đỗ xe miễn phí nếu đến bằng ô tô. Nằm ở vị trí trung tâm tại Quận Tây Hồ của Hà Nội, chỗ nghỉ này đặt quý khách ở gần các điểm thu hút và tùy chọn ăn uống thú vị. Được xếp hạng 5 sao, chỗ nghỉ chất lượng cao này cho phép khách nghỉ sử dụng mát-xa, bể bơi ngoài trời và xông khô ngay trong khuôn viên.',4),
(N'Grand Mercure',N'grand_mercure.jpg',N'Grand Mercure là thương hiệu khách sạn nổi tiếng trên toàn thế giới. Tại Hà Nội, Grand Mercure sở hữu lên đến 181 phòng nghỉ cao cấp. Khách sạn này tọa lạc tại điểm văn hóa và kinh tế của thủ đô, dễ dàng di chuyển đến các địa điểm tham quan và hội họp quan trọng tại Hà Nội.',4),
(N'The Oriental Jade Hotel',N'jade_hotel.jpg',N'The Oriental Jade Hotel sở hữu không gian sang trọng, hiện đại và tọa lạc tại vị trí đắc địa ngay trung tâm khu phố cổ kính. Mỗi phòng ngủ tại The Oriental Jade Hotel đều có view hướng ra Hồ Gươm xinh đẹp. Từ khách sạn, bạn sẽ dễ dàng di chuyển ra hồ Gươm để tản bộ, ngắm cảnh và chụp ảnh check in phong cảnh hữu tình.',4),
(N'Peridot Grand Luxury Boutique Hotel',N'boutique_hotel.jpg',N'Peridot Grand Luxury Boutique Hotel là thiên đường nghỉ dưỡng với cảnh quanh xanh mướt, không gian yên tĩnh. Khách sạn Peridot Grand Luxury Boutique Hotel được ví như viên ngọc ẩn giữa lòng Hà Nội.',4),
(N'Movenpick',N'movenpick.jpg',N'Movenpick là một trong những khách sạn thuộc top đầu tại phố cổ. Khách sạn này được thiết kế theo phong cách Pháp cổ điển mang đến sự hào nhoáng, tráng lệ và thu hút những người yêu kiến trúc độc đáo.',4),
(N'Lotte Hotel',N'lotte.jpg',N'Lotte Hotel tọa lạc tại tòa nhà Lotte Center (1 trong 3 tòa nhà cao nhất Việt Nam). Khách sạn Lotte nằm từ tầng 34 đến tầng 65 của tòa Lotte Center được thiết kế với các bức tường kính dày, tối ưu hóa mọi quan sát ra bên ngoài. Lotte Hotel là nơi dừng chân và ngắm toàn cảnh Hà Nội lý tưởng bạn nên trải nghiệm.',4),
(N'Vinpearl Resort Nha Trang', N'vinpearl_resort.jpg', N'Vinpearl Resort Nha Trang là khu nghỉ dưỡng 5 sao sang trọng nằm trên đảo Hòn Tre, nổi bật với bãi biển riêng, hồ bơi vô cực hướng biển và các biệt thự mang phong cách hiện đại pha lẫn nét truyền thống. Resort cung cấp dịch vụ spa, sân golf, nhà hàng cao cấp và cáp treo vượt biển, mang đến trải nghiệm nghỉ dưỡng đẳng cấp cho du khách.', 4),
(N'Swiss-Belresort Đà Lạt', N'swiss_bel.jpg', N'Swiss-Belresort Đà Lạt là khách sạn sang trọng tọa lạc giữa lòng thành phố ngàn hoa, mang kiến trúc châu Âu cổ điển với nội thất gỗ ấm cúng. Khách sạn có tầm nhìn hướng đồi thông và thung lũng, hồ bơi nước nóng, nhà hàng phục vụ món Âu – Á và không gian yên tĩnh, lý tưởng cho kỳ nghỉ thư giãn tại Đà Lạt.', 4),
(N'Salinda Resort Phú Quốc', N'salinda.jpg', N'Salinda Resort Phú Quốc là khu nghỉ dưỡng 5 sao nằm bên bãi biển dài tại thị trấn Dương Đông, nổi bật với thiết kế hiện đại pha nét văn hóa Việt Nam. Resort có hồ bơi lớn, spa thư giãn, nhà hàng hải sản tươi sống và các phòng nghỉ view biển, là lựa chọn hoàn hảo cho du khách muốn tận hưởng vẻ đẹp đảo ngọc.', 4),
(N'Paradise Hạ Long', N'paradise.jpg', N'Paradise Hạ Long là khách sạn 4 sao hiện đại nằm gần bờ Vịnh Hạ Long, cung cấp các phòng nghỉ rộng rãi với tầm nhìn hướng vịnh hoặc thành phố. Khách sạn có hồ bơi trên cao, nhà hàng phục vụ món Việt và quốc tế, cùng dịch vụ đưa đón đến các điểm tham quan như bến tàu du lịch, mang lại sự tiện nghi cho du khách.', 4),
(N'Victoria Cần Thơ', N'victoria.jpg', N'Victoria Cần Thơ là khách sạn 4 sao nằm bên dòng sông Hậu thơ mộng, mang phong cách kiến trúc thuộc địa Pháp kết hợp nét miền Tây. Với hồ bơi ngoài trời, nhà hàng view sông, dịch vụ thuyền đưa đón khám phá chợ nổi và các phòng nghỉ sang trọng, đây là nơi lý tưởng để trải nghiệm văn hóa và thiên nhiên Cần Thơ.', 4),
(N'MGallery Hội An', N'mgallery_hoian.jpg', N'Khách sạn 5 sao với kiến trúc cổ kính và bãi biển riêng.', 4),
(N'Topas Ecolodge Sapa', N'topas_sapa.jpg', N'Resort sinh thái với tầm nhìn ruộng bậc thang ở Sapa.', 4),
(N'Fusion Maia Quy Nhơn', N'fusion_quynhon.jpg', N'Resort sang trọng với spa và bãi biển riêng.', 4),
(N'Mường Thanh Buôn Ma Thuột', N'muong_thanh_bmt.jpg', N'Khách sạn 4 sao hiện đại giữa lòng Tây Nguyên.', 4),
(N'Imperial Vũng Tàu', N'imperial_vt.jpg', N'Khách sạn 5 sao với kiến trúc hoàng gia và hồ bơi đẹp.', 4),
(N'Melia Mũi Né', N'melia_muine.jpg', N'Resort 5 sao bên bãi biển Mũi Né với hồ bơi vô cực.', 4),
(N'Six Senses Côn Đảo', N'six_senses_condao.jpg', N'Resort 5 sao đẳng cấp với bãi biển hoang sơ.', 4),
(N'La Residence Huế', N'la_residence_hue.jpg', N'Khách sạn 5 sao mang phong cách cổ điển ở Huế.', 4),
(N'Silk Path Hà Giang', N'silk_path_hg.jpg', N'Khách sạn 4 sao với tầm nhìn cao nguyên đá.', 4),
(N'Mường Thanh Điện Biên', N'muong_thanh_db.jpg', N'Khách sạn 4 sao gần các di tích lịch sử.', 4),
(N'Lý Sơn Central', N'ly_son_central.jpg', N'Khách sạn 3 sao tiện nghi trên đảo Lý Sơn.', 4),
(N'Nam Định Hotel', N'nam_dinh_hotel.jpg', N'Khách sạn 3 sao gần các điểm tham quan văn hóa.', 4),
(N'Bắc Giang Grand', N'bac_giang_grand.jpg', N'Khách sạn 4 sao hiện đại ở trung tâm Bắc Giang.', 4),
(N'Coconut Bến Tre', N'coconut_bentre.jpg', N'Khách sạn 3 sao với không gian xanh mát miền Tây.', 4),
(N'Mekong Tiền Giang', N'mekong_tg.jpg', N'Khách sạn 4 sao gần chợ nổi và các điểm du lịch.', 4),
(N'Châu Đốc Victoria', N'chau_doc_victoria.jpg', N'Khách sạn 4 sao với tầm nhìn sông nước An Giang.', 4),
(N'Vĩnh Nghiêm Resort', N'vinh_nghiem_resort.jpg', N'Resort 3 sao yên bình gần chùa Vĩnh Nghiêm.', 4),
(N'Đồng Nai Palace', N'dong_nai_palace.jpg', N'Khách sạn 4 sao với hồ bơi và không gian hiện đại.', 4),
(N'Grand Bình Dương', N'grand_bd.jpg', N'Khách sạn 4 sao gần khu du lịch Đại Nam.', 4),
(N'Lạng Sơn Star', N'lang_son_star.jpg', N'Khách sạn 3 sao gần các điểm tham quan biên giới.', 4)
go

--Thêm Nhà Hàng
Insert into tblNhaHang
values
(N'Vietnamese Cuisine Restaurant',N'cuisine_restaurant.jpg,cuisine_restaurant1.jpg,cuisine_restaurant2.jpg,cuisine_restaurant3.jpg,cuisine_restaurant4.jpg',N'Cầu Gỗ Vietnamese Cuisine Restaurant là một điểm đến lý tưởng cho những ai muốn thưởng thức ẩm thực Việt Nam truyền thống. Nhà hàng nằm ở vị trí đắc địa giữa đường Đinh Tiên Hoàng và phố Cầu cực kỳ lý tưởng để bạn ngắm nhìn Hồ Gươm lung linh từ trên cao. Bạn cũng có thể tận hưởng không khí trong lành và lãng mạn của không gian ngoài trời được nhiều người ưa chuộng. Các món ăn của nhà hàng được chăm chút từng chi tiết từ cách chế biến đến cách bài trí mang đến cho bạn một cảm giác sang trọng và hiện đại.',5),
(N'Ngọc Mai Vàng',N'ngoc_mai_vang.jpg',N'Ngọc Mai Vàng là một nhà hàng buffet lớn và đẳng cấp tại Hà Nội. Nhà hàng có không gian thiết kế đẹp mắt và ấm cúng rất thích hợp cho những bữa ăn vui vẻ cùng gia đình, đồng nghiệp, bạn bè. Điểm hẹn ẩm thực này nằm ở tầng 17 của toà nhà Ruby 44 Lê Ngọc Hân mang tới cho bạn một tầm nhìn tuyệt vời khi thưởng thức bữa ăn. Thực đơn của nhà hàng ngon Hà Nội này cực kỳ phong phú với hàng trăm món ăn hấp dẫn, chất lượng được phục vụ theo tiêu chuẩn quốc tế.',5),
(N'Góc Quê Hà Nội',N'goc_que.jpg',N'Nhắc đến các nhà hàng Hà Nội ngon có tiếng thì không thể quên Góc Quê - nhà hàng có điểm đặc trưng là từng món ăn sẽ có những loại nước chấm chuyên biệt. Nếu có cơ hội làm chuyến vui chơi phố cổ thì Góc Quê là một lựa chọn hoàn hảo. Điểm nhấn độc lạ của quán là món gà nướng là loại nước chấm đậm vị mặn mòi của biển, chả ốc là loại nước mắm chua ngọt cay nồng… đậm chất quốc vị của các món ăn truyền thống Việt Nam. ',5),
(N'Quán Xưa Hà Nội',N'quan_xua.jpg',N'Một nhà hàng mang hương vị truyền thống linh hồn món Việt trong lòng thực thực khách Hà Thành không thể không kể đến đó chính là Quán Xưa. Nếu có cơ hội thực hiện du lịch Việt Nam thì dừng chân tại đây thực khách sẽ ấn tượng mạnh ngay từ không gian đến hương vị xưa ẩn trong từng món ăn.',5),
(N'Tầm Vị Hà Nội ',N'tam_vi.jpg',N'Bước chân vào Tầm Vị, bạn như lạc vào một không gian xưa cũ của Hà Nội, với những món ăn dân dã gợi nhớ tuổi thơ. Không gian quán được thiết kế theo phong cách tiệm trà cổ, mang đậm nét đặc trưng của miền Bắc Việt Nam, với nội thất Trung Hoa cổ điển, biển báo viết tay, máy hát đĩa than và điện thoại cổ.',5),
(N'Hải Sản Thanh Sương', N'thanh_suong.jpg', N'Hải Sản Thanh Sương là nhà hàng nổi tiếng tại Nha Trang, chuyên phục vụ các món hải sản tươi sống như tôm hùm nướng bơ tỏi, mực hấp gừng, sò điệp nướng phô mai. Nhà hàng có không gian thoáng đãng, view hướng biển, mang đến trải nghiệm ẩm thực đậm chất miền biển với nguyên liệu được đánh bắt trong ngày.', 5),
(N'Léguda Đà Lạt', N'leguda.jpg', N'Léguda Đà Lạt là nhà hàng buffet độc đáo nằm trên đồi Robin, nổi tiếng với thực đơn rau sạch Đà Lạt như salad, rau luộc, cùng các món nướng và lẩu. Với tầm nhìn toàn cảnh thành phố từ trên cao, không gian mở thoáng đãng và phong cách phục vụ chuyên nghiệp, đây là điểm đến lý tưởng cho gia đình và nhóm bạn.', 5),
(N'Nhà Hàng 1946 Phú Quốc', N'1946.jpg', N'Nhà Hàng 1946 Phú Quốc mang phong cách truyền thống Việt Nam, chuyên phục vụ các món ăn dân dã như cá kho tộ, gỏi sứa trộn rau muống, cơm cháy nước mắm. Không gian ấm cúng với nội thất gỗ, đèn lồng treo và sân vườn thoáng mát, nhà hàng mang đến cảm giác gần gũi, thân thuộc cho thực khách.', 5),
(N'Hạ Long Bay Restaurant', N'ha_long_rest.jpg', N'Hạ Long Bay Restaurant là nhà hàng sang trọng tại Hạ Long, nổi bật với view hướng Vịnh Hạ Long tuyệt đẹp và thực đơn phong phú gồm hải sản như cua bể hấp sả ớt, hàu nướng phô mai, lẩu cá tầm. Không gian hiện đại, dịch vụ chu đáo và vị trí gần bến tàu khiến nhà hàng trở thành điểm dừng chân lý tưởng cho du khách.', 5),
(N'Nhà Hàng Sông Hậu', N'song_hau.jpg', N'Nhà Hàng Sông Hậu tại Cần Thơ nằm bên bờ sông Hậu, chuyên phục vụ các món miền Tây đặc sắc như lẩu mắm, cá lóc nướng trui, bánh cống. Với không gian mở hướng sông, tiếng nước chảy êm đềm và thực đơn đậm chất địa phương, nhà hàng mang đến trải nghiệm ẩm thực sông nước khó quên cho thực khách.', 5),
(N'Nhà hàng Cầu Gỗ Hội An', N'cau_go.jpg', N'Nhà hàng view sông Hoài với món Việt tinh tế.', 5),
(N'Sapa Sky', N'sapa_sky.jpg', N'Nhà hàng trên cao với món nướng Tây Bắc và tầm nhìn đẹp.', 5),
(N'Biển Rạng Quy Nhơn', N'bien_rang.jpg', N'Nhà hàng hải sản tươi sống bên bãi biển Quy Nhơn.', 5),
(N'Ẩm thực Tây Nguyên', N'tay_nguyen.jpg', N'Nhà hàng với gà nướng, cơm lam ở Buôn Ma Thuột.', 5),
(N'Bãi Sau Vũng Tàu', N'bai_sau_vt.jpg', N'Nhà hàng hải sản view biển ở Vũng Tàu.', 5),
(N'Mũi Né Deli', N'mui_ne_deli.jpg', N'Nhà hàng món Âu và hải sản bên bãi biển Mũi Né.', 5),
(N'Côn Đảo Seafood', N'con_dao_seafood.jpg', N'Nhà hàng hải sản tươi sống trên đảo Côn Đảo.', 5),
(N'Nhà hàng Tâm Gia Huế', N'tam_gia.jpg', N'Nhà hàng món Huế truyền thống với không gian ấm cúng.', 5),
(N'Hà Giang Quán', N'ha_giang_quan.jpg', N'Nhà hàng món Tây Bắc với thịt trâu gác bếp.', 5),
(N'Điện Biên Quán', N'dien_bien_quan.jpg', N'Nhà hàng món dân tộc Thái và cơm lam.', 5),
(N'Lý Sơn Hải Sản', N'ly_son_seafood.jpg', N'Nhà hàng hải sản tươi sống trên đảo Lý Sơn.', 5),
(N'Nam Định 36', N'nam_dinh_36.jpg', N'Nhà hàng món cháo lòng và phở bò truyền thống.', 5),
(N'Lục Ngạn Quán', N'luc_ngan_quan.jpg', N'Nhà hàng món quê với gà đồi Bắc Giang.', 5),
(N'Dừa Xanh Bến Tre', N'dua_xanh.jpg', N'Nhà hàng món miền Tây với cá lóc nướng trui.', 5),
(N'Miền Tây Quán', N'mien_tay_quan.jpg', N'Nhà hàng lẩu mắm và bánh xèo ở Tiền Giang.', 5),
(N'Châu Đốc Riverside', N'chau_doc_riverside.jpg', N'Nhà hàng view sông với gỏi sầu đâu.', 5),
(N'Vĩnh Nghiêm Ẩm Thực', N'vinh_nghiem_am_thuc.jpg', N'Nhà hàng món Việt gần chùa Vĩnh Nghiêm.', 5),
(N'Giang Điền Quán', N'giang_dien_quan.jpg', N'Nhà hàng món quê gần thác Giang Điền.', 5),
(N'Đại Nam Quán', N'dai_nam_quan.jpg', N'Nhà hàng món Việt trong khu du lịch Đại Nam.', 5),
(N'Tam Thanh Quán', N'tam_thanh_quan.jpg', N'Nhà hàng món miền núi gần động Tam Thanh.', 5)
go

--Thêm Địa Chỉ
Insert Into tblDiaChi
Values
(N'Hà Nội', N'Tỉnh thành', null, null, N'Hanoi.vn', null, N'Hà Nội thủ đô của đất nước Việt Nam', 5),
(N'Km 6+500 Đại Lộ Thăng Long, phường Tây Mỗ, Đại Mỗ, quận Nam Từ Liêm, thành phố Hà Nội.', N'Giải trí', N'Buổi sáng: từ 8h00 đến 11h30.-Buổi chiều: từ 13h00 đến 16h0. (Nghỉ thứ 2,6)', N'Vé người lớn: 20.000 VND/ người-Vé trẻ em [Dưới 16 tuổi]: 10.000 VND/ người-Vé người cao tuổi: 10.000 VND/ người-Trẻ em dưới 6 tuổi: Miễn phí.-khách quốc tế: 40.000 VND/ người', null, null, N'Là nơi lưu trữ lịch sử của dân tộc Việt Nam', 5),
(N'05 P. Từ Hoa, Quảng An, Tây Hồ, Hà Nội', N'Khách sạn', N'7:00 - 19:00.,Giờ check-in 15:00. Giờ check-out 12:00.', N'3.145.000 vnđ - 5.575.000 vnd',N'hanoi.intercontinental.com',N'024 6270 8888', N'Là khách sạn có tiểu đời lâu năm ở Hà Nội , mang trong mình một hình thái sang trọng của quý tộc', 5),
(N'9 P. Đinh Tiên Hoàng, Hàng Trống, Hoàn Kiếm, Hà Nội', N'Nhà Hàng', N'10:00 - 22h00 ', N'100.000 VNĐ – 750.000 VNĐ',N'caugorestaurant.com',N'024 3926 0808', N'là nhà hàng mang đậm dấu lịch sử trong lịch trình khám phá Hà Nội tự túc của bạn đấy. Nhà hàng lấy tên theo Phố Cầu Gỗ - Một trong 36 phố phường nguyên gốc của khu phố cổ Hà Nội. Với bối cảnh ẩm thực không ngừng phát triển, các món ngon Hà Nội truyền thống kết hợp cùng phong trào đương đại. ', 5),


(N'Đảo Hòn Tre, Nha Trang', N'Giải trí', N'8:00-22:00', N'800.000 VND', N'vinpearl@info.com', N'02583591234', N'Địa chỉ Vinpearl Land.', 5),
(N'QL50, Đà Lạt', N'Thác', N'7:00-17:00', N'40.000 VND', N'pongour@dalat.com', N'02633871234', N'Địa chỉ Thác Pongour.', 5),
(N'Bãi Sao, Phú Quốc', N'Bãi biển', N'6:00-18:00', N'Miễn phí', N'baisao@pq.com', N'02973876543', N'Địa chỉ Bãi Sao.', 5),
(N'Vịnh Hạ Long, Quảng Ninh', N'Du thuyền', N'9:00-21:00', N'1.500.000 VND', N'halong@cruise.com', N'02033891234', N'Địa chỉ du thuyền.', 5),
(N'Chợ Nổi Cái Răng, Cần Thơ', N'Chợ', N'5:00-12:00', N'50.000 VND', N'cairang@ct.com', N'02923871234', N'Địa chỉ chợ nổi.', 5),
(N'45 Trần Phú, Nha Trang', N'Nhà hàng', N'10:00-23:00', N'300.000 VND', N'thanhsuong@ntr.com', N'02583876543', N'Địa chỉ Hải Sản Thanh Sương.', 5),
(N'Đồi Robin, Đà Lạt', N'Nhà hàng', N'9:00-22:00', N'250.000 VND', N'leguda@dalat.com', N'02633987654', N'Địa chỉ Léguda.', 5),
(N'12 Dương Đông, Phú Quốc', N'Nhà hàng', N'11:00-22:00', N'200.000 VND', N'1946@pq.com', N'02973765432', N'Địa chỉ Nhà Hàng 1946.', 5),
(N'1 Lê Lợi, Cần Thơ', N'Nhà hàng', N'10:00-21:00', N'150.000 VND', N'songhau@ct.com', N'02923865432', N'Địa chỉ Nhà Hàng Sông Hậu.', 5),
(N'12 Phố Cổ, Hội An', N'Địa chỉ', N'8:00-22:00', N'0 VND', N'hoian@contact.com', N'02353891234', N'Địa chỉ Hội An', 6),
(N'Km 10, Sapa, Lào Cai', N'Địa chỉ', N'7:00-21:00', N'0 VND', N'sapa@contact.com', N'02143876543', N'Địa chỉ Sapa', 6),
(N'45 Eo Gió, Quy Nhơn', N'Địa chỉ', N'9:00-20:00', N'0 VND', N'quynhon@contact.com', N'02563891234', N'Địa chỉ Quy Nhơn', 6),
(N'78 Dray Nur, Buôn Ma Thuột', N'Địa chỉ', N'8:00-18:00', N'0 VND', N'bmt@contact.com', N'02623876543', N'Địa chỉ Buôn Ma Thuột', 6),
(N'123 Bãi Sau, Vũng Tàu', N'Địa chỉ', N'10:00-23:00', N'0 VND', N'vungtau@contact.com', N'02543891234', N'Địa chỉ Vũng Tàu', 6),
(N'56 Mũi Né, Phan Thiết', N'Địa chỉ', N'9:00-22:00', N'0 VND', N'muine@contact.com', N'02523876543', N'Địa chỉ Phan Thiết', 6),
(N'Bãi Đầm Trầu, Côn Đảo', N'Địa chỉ', N'6:00-18:00', N'0 VND', N'condao@contact.com', N'02543891234', N'Địa chỉ Côn Đảo', 6),
(N'89 Sông Hương, Huế', N'Địa chỉ', N'8:00-21:00', N'0 VND', N'hue@contact.com', N'02343876543', N'Địa chỉ Huế', 6),
(N'34 Mã Pì Lèng, Hà Giang', N'Địa chỉ', N'7:00-19:00', N'0 VND', N'hagiang@contact.com', N'02193891234', N'Địa chỉ Hà Giang', 6),
(N'12 Điện Biên Phủ, Điện Biên', N'Địa chỉ', N'8:00-20:00', N'0 VND', N'dienbien@contact.com', N'02153876543', N'Địa chỉ Điện Biên', 6),
(N'67 Lý Sơn, Quảng Ngãi', N'Địa chỉ', N'9:00-21:00', N'0 VND', N'lyson@contact.com', N'02553891234', N'Địa chỉ Lý Sơn', 6),
(N'23 Cổ Lễ, Nam Định', N'Địa chỉ', N'7:00-20:00', N'0 VND', N'namdinh@contact.com', N'02283876543', N'Địa chỉ Nam Định', 6),
(N'45 Lục Ngạn, Bắc Giang', N'Địa chỉ', N'8:00-19:00', N'0 VND', N'bacgiang@contact.com', N'02043891234', N'Địa chỉ Bắc Giang', 6),
(N'78 Thới Sơn, Bến Tre', N'Địa chỉ', N'9:00-22:00', N'0 VND', N'bentre@contact.com', N'02753876543', N'Địa chỉ Bến Tre', 6),
(N'12 Ngã Bảy, Tiền Giang', N'Địa chỉ', N'6:00-18:00', N'0 VND', N'tiengiang@contact.com', N'02733891234', N'Địa chỉ Tiền Giang', 6),
(N'34 Trà Sư, An Giang', N'Địa chỉ', N'7:00-17:00', N'0 VND', N'angiang@contact.com', N'02963876543', N'Địa chỉ An Giang', 6),
(N'56 Giang Điền, Đồng Nai', N'Địa chỉ', N'8:00-20:00', N'0 VND', N'dongnai@contact.com', N'02513891234', N'Địa chỉ Đồng Nai', 6),
(N'78 Đại Nam, Bình Dương', N'Địa chỉ', N'9:00-21:00', N'0 VND', N'binhduong@contact.com', N'02743876543', N'Địa chỉ Bình Dương', 6),
(N'12 Tam Thanh, Lạng Sơn', N'Địa chỉ', N'8:00-20:00', N'0 VND', N'langson@contact.com', N'02053891234', N'Địa chỉ Lạng Sơn', 6),
(N'34 Ngã Bảy, Tiền Giang', N'Địa chỉ', N'6:00-18:00', N'0 VND', N'tiengiang2@contact.com', N'02733876543', N'Địa chỉ Tiền Giang 2', 6)
go

Insert into tblComment 
Values
(N'Tôi đã có muột chuyến đi rất thú vị bạn lên đi và trải nghiệm nơi này , nó đã để lại cho tôi một ký ức khó quên',null,5,1),
(N'Nơi đây quả thật là tuyệt đẹp , bạn phải đến tận nơi nhìn thấy nó và thưởng thức ngay lúc này . Nó đang thời gian tôi bỏ ra để đến đây . Tôi sẽ giới thiệu thêm người đến đây để trải nghiệm nó',null,4,1)
go
Select * From tblDiaChi
Select * from tblTinhThanh_Comment
Insert into tblTinhThanh_GiaiTri
values
(1,1,2,1,null)
go
Insert into tblTinhThanh_KhachSan
values
(1,1,4,1,null)
go
Insert into tblTinhThanh_KhachSan
values
(1,1,3,1,null)
/*
Insert Into tblComment
Values
(N'Tôi đã có muột chuyến đi rất thú vị bạn lên đi và trỉa nghiệm nơi này , nó đã để lại cho tôi một ký ức khó quên',5,1),
(N'Nơi đây quả thật là tuyệt đẹp , bạn phải đến tận nơi nhìn thấy nó và thưởng thức ngay lúc này . Nó đang thời gian tôi bỏ ra để đến đây . Tôi sẽ giới thiệu thêm người đến đây để trải nghiệm nó',4,1),
(N'Hồ Gươm rất đẹp và yên bình!', 5, 1),          
(N'Vinpearl Land thú vị, nhiều trò chơi!', 4, 2), 
(N'Thác Pongour hùng vĩ, đáng để ghé thăm!', 5, 3),
(N'Bún Sứa tươi ngon, nước dùng ngọt!', 5, 4),    
(N'Bãi Sao tuyệt vời, nước biển trong xanh!', 5, 5), 
(N'Du thuyền Hạ Long là trải nghiệm tuyệt vời!', 5, 6), 
(N'Chợ Nổi Cái Răng rất độc đáo!', 4, 7),         
(N'Hải sản Thanh Sương ngon tuyệt!', 5, 8),        
(N'Léguda view đẹp, rau sạch tuyệt vời!', 4, 9),
(N'Phố cổ Hội An đẹp lung linh!', 5, 1),
(N'Ruộng bậc thang Sapa rất ấn tượng!', 4, 2),
(N'Eo Gió Quy Nhơn gió mát tuyệt vời!', 5, 3),
(N'Thác Dray Nur hùng vĩ!', 4, 1),
(N'Tượng Chúa Kitô Vũng Tàu đáng tham quan!', 5, 2),
(N'Đồi cát Mũi Né vui lắm!', 5, 3),
(N'Bãi Đầm Trầu yên bình!', 4, 1),
(N'Sông Hương thơ mộng!', 5, 2),
(N'Đèo Mã Pì Lèng quá đẹp!', 5, 3),
(N'Bảo tàng Điện Biên Phủ rất ý nghĩa!', 4, 1),
(N'Núi Thới Lới cảnh đẹp!', 5, 2),
(N'Chùa Cổ Lễ yên tĩnh!', 4, 3),
(N'Rừng vải Lục Ngạn mùa nào cũng đẹp!', 5, 1),
(N'Cù lao Thới Sơn thú vị!', 5, 2),
(N'Rừng tràm Trà Sư xanh mát!', 4, 3),
(N'Chợ Đông Kinh nhộn nhịp!', 5, 1),
(N'Thác Giang Điền thư giãn!', 4, 2),
(N'Khu du lịch Đại Nam hoành tráng!', 5, 3),
(N'Động Tam Thanh kỳ bí!', 4, 1),
(N'Chợ nổi Ngã Bảy độc đáo!', 5, 2)
go


Insert into tblYeuThich
Values
(1), (2), (3), (1), (2), (3), (1), (2), (3), (1),
(2), (3), (1), (2), (3), (1), (2), (3), (1), (2),
(1), (2), (3), (4), (5), (6), (7), (8), (9)
go

--Thêm Tỉnh Thành - Vui Chơi
Insert Into tblTinhThanh_GiaiTri
Values	
(1, 1, 1, 1, 1),    -- Hà Nội, Hồ Gươm
(1, 2, 1, 2, 2),    -- Hà Nội, Nhà Tù Hỏa Lò
(1, 3, 1, 3, 3),    -- Hà Nội, Lăng Bác
(6, 6, 2, 2, 2),    -- Nha Trang, Vinpearl Land
(7, 7, 3, 3, 3),    -- Đà Lạt, Thác Pongour
(8, 8, 4, 5, 5),    -- Phú Quốc, Bãi Sao
(9, 9, 5, 6, 6),    -- Hạ Long, Du thuyền Vịnh Hạ Long
(10, 10, 6, 7, 7),  -- Cần Thơ, Chợ Nổi Cái Răng
(1, 4, 1, 4, 4),    -- Hà Nội, Bảo Tàng Quân Sự
(1, 5, 1, 5, 5),     -- Hà Nội, Hoàng Thành Thăng Long
(11, 11, 11, 5, 5),   -- Hội An, Phố cổ Hội An
(12, 12, 12, 6, 6),   -- Sapa, Ruộng bậc thang
(13, 13, 13, 7, 7),   -- Quy Nhơn, Eo Gió
(14, 14, 14, 8, 8),   -- Buôn Ma Thuột, Thác Dray Nur
(15, 15, 15, 9, 9),   -- Vũng Tàu, Tượng Chúa Kitô
(16, 16, 16, 10, 10), -- Phan Thiết, Đồi cát Mũi Né
(17, 17, 17, 11, 11), -- Côn Đảo, Bãi Đầm Trầu
(18, 18, 18, 12, 12), -- Huế, Sông Hương
(19, 19, 19, 13, 13), -- Hà Giang, Đèo Mã Pì Lèng
(20, 20, 20, 14, 14), -- Điện Biên, Bảo tàng Điện Biên Phủ
(21, 21, 21, 15, 15), -- Lý Sơn, Núi Thới Lới
(22, 22, 22, 16, 16), -- Nam Định, Chùa Cổ Lễ
(23, 23, 23, 17, 17), -- Bắc Giang, Rừng vải Lục Ngạn
(24, 24, 24, 18, 18), -- Bến Tre, Cù lao Thới Sơn
(25, 25, 25, 19, 19) -- Tiền Giang, Chợ nổi Ngã Bảy (thêm)
go

--Thêm Tỉnh Thành - Món ăn
Insert Into tblTinhThanh_MonAn
Values
(1, 1, 1, 1, 1),    -- Hà Nội (1), Cafe trứng (1), Địa chỉ (1), Comment (1), Yêu thích (1)
(1, 2, 1, 2, 2),    -- Hà Nội (1), Phở (2), Địa chỉ (1), Comment (2), Yêu thích (2)
(1, 3, 1, 3, 3),    -- Hà Nội (1), Bún Đậu (3), Địa chỉ (1), Comment (3), Yêu thích (3)
(1, 4, 1, 4, 4),    -- Hà Nội (1), Bún Chả (4), Địa chỉ (1), Comment (4), Yêu thích (4)
(1, 5, 1, 1, 1),    -- Hà Nội (1), Cốm (5), Địa chỉ (1), Comment (1), Yêu thích (1)
(6, 6, 2, 3, 3),    -- Nha Trang (6), Bún Sứa (6), Địa chỉ (2), Comment (3), Yêu thích (3)
(7, 7, 3, 4, 4),    -- Đà Lạt (7), Bánh Căn (7), Địa chỉ (3), Comment (4), Yêu thích (4)
(8, 8, 4, 2, 2),    -- Phú Quốc (8), Gỏi Cá Mai (8), Địa chỉ (4), Comment (2), Yêu thích (2)
(1, 9, 1, 1, 1),    -- Hà Nội (1), Chả Cá Lã Vọng (9), Địa chỉ (1), Comment (1), Yêu thích (1)
(10, 10, 6, 3, 3),   -- Cần Thơ (10), Bánh Xèo Miền Tây (10), Địa chỉ (6), Comment (3), Yêu thích (3)
(11, 11, 11, 5, 5),   -- Hội An, Mì Quảng
(12, 12, 12, 6, 6),   -- Sapa, Bánh Tráng Nướng (giả định)
(13, 13, 13, 7, 7),   -- Quy Nhơn, Bún Bò Huế (giả định)
(14, 14, 14, 8, 8),   -- Buôn Ma Thuột, Gỏi Lá
(15, 15, 15, 9, 9),   -- Vũng Tàu, Bánh Canh Ghẹ
(16, 16, 16, 10, 10), -- Phan Thiết, Cao Lầu (giả định)
(17, 17, 17, 11, 11), -- Côn Đảo, Bánh Khoái (giả định)
(18, 18, 18, 12, 12), -- Huế, Bánh Bèo
(19, 19, 19, 13, 13), -- Hà Giang, Cháo Lòng (giả định)
(20, 20, 20, 14, 14), -- Điện Biên, Lẩu Mắm (giả định)
(21, 21, 21, 15, 15), -- Lý Sơn, Bánh Mì Pate (giả định)
(22, 22, 22, 16, 16), -- Nam Định, Bún Riêu Cua
(23, 23, 23, 17, 17), -- Bắc Giang, Bánh Cuốn
(24, 24, 24, 18, 18), -- Bến Tre, Cá Kho Tộ
(25, 25, 25, 19, 19), -- Tiền Giang, Hủ Tiếu Nam Vang
(26, 26, 26, 20, 20), -- An Giang, Gỏi Sầu Đâu
(27, 27, 27, 21, 21), -- Đồng Nai, Cơm Tấm
(28, 28, 28, 22, 22), -- Bình Dương, Bánh Ướt Lòng Gà
(29, 29, 29, 23, 23)  -- Tiền Giang, Bánh Xèo Quảng Bình (giả định)
go


--Thêm Tỉnh Thành - Khách Sạn
Insert Into tblTinhThanh_KhachSan
Values
(1, 1, 1, 1, 1),    -- Hà Nội (1), Vietnamese Cuisine (1), Địa chỉ (1), Comment (1), Yêu thích (1)
(1, 2, 1, 2, 2),    -- Hà Nội (1), Ngọc Mai Vàng (2), Địa chỉ (1), Comment (2), Yêu thích (2)
(1, 3, 1, 3, 3),    -- Hà Nội (1), Góc Quê (3), Địa chỉ (1), Comment (3), Yêu thích (3)
(1, 4, 1, 4, 4),    -- Hà Nội (1), Quán Xưa (4), Địa chỉ (1), Comment (4), Yêu thích (4)
(1, 5, 1, 1, 1),    -- Hà Nội (1), Tầm Vị (5), Địa chỉ (1), Comment (1), Yêu thích (1)
(6, 6, 7, 2, 2),    -- Nha Trang (6), Thanh Sương (6), Địa chỉ (7), Comment (2), Yêu thích (2)
(7, 7, 8, 3, 3),    -- Đà Lạt (7), Léguda (7), Địa chỉ (8), Comment (3), Yêu thích (3)
(8, 8, 9, 4, 4),    -- Phú Quốc (8), 1946 (8), Địa chỉ (9), Comment (4), Yêu thích (4)
(9, 9, 5, 1, 1),    -- Hạ Long (9), Hạ Long Bay (9), Địa chỉ (5), Comment (1), Yêu thích (1)
(10, 10, 10, 2, 2),  -- Cần Thơ (10), Sông Hậu (10), Địa chỉ (10), Comment (2), Yêu thích (2)
(11, 11, 11, 5, 5),   -- Hội An, MGallery
(12, 12, 12, 6, 6),   -- Sapa, Topas Ecolodge
(13, 13, 13, 7, 7),   -- Quy Nhơn, Fusion Maia
(14, 14, 14, 8, 8),   -- Buôn Ma Thuột, Mường Thanh
(15, 15, 15, 9, 9),   -- Vũng Tàu, Imperial
(16, 16, 16, 10, 10), -- Phan Thiết, Melia
(17, 17, 17, 11, 11), -- Côn Đảo, Six Senses
(18, 18, 18, 12, 12), -- Huế, La Residence
(19, 19, 19, 13, 13), -- Hà Giang, Silk Path
(20, 20, 20, 14, 14), -- Điện Biên, Mường Thanh
(21, 21, 21, 15, 15), -- Lý Sơn, Lý Sơn Central
(22, 22, 22, 16, 16), -- Nam Định, Nam Định Hotel
(23, 23, 23, 17, 17), -- Bắc Giang, Bắc Giang Grand
(24, 24, 24, 18, 18), -- Bến Tre, Coconut
(25, 25, 25, 19, 19), -- Tiền Giang, Mekong
(26, 26, 26, 20, 20), -- An Giang, Châu Đốc Victoria
(27, 27, 27, 21, 21), -- Đồng Nai, Đồng Nai Palace
(28, 28, 28, 22, 22), -- Bình Dương, Grand
(29, 29, 29, 23, 23) -- Tiền Giang, Mekong (giả định thêm)
go

--Thêm Tỉnh Thành - Nhà Hàng
Insert Into tblTinhThanh_NhaHang
Values
(1, 1, 1, 1, 1),    -- Hà Nội (1), Vietnamese Cuisine (1), Địa chỉ (1), Comment (1), Yêu thích (1)
(1, 2, 1, 2, 2),    -- Hà Nội (1), Ngọc Mai Vàng (2), Địa chỉ (1), Comment (2), Yêu thích (2)
(1, 3, 1, 3, 3),    -- Hà Nội (1), Góc Quê (3), Địa chỉ (1), Comment (3), Yêu thích (3)
(1, 4, 1, 4, 4),    -- Hà Nội (1), Quán Xưa (4), Địa chỉ (1), Comment (4), Yêu thích (4)
(1, 5, 1, 1, 1),    -- Hà Nội (1), Tầm Vị (5), Địa chỉ (1), Comment (1), Yêu thích (1)
(6, 6, 7, 2, 2),    -- Nha Trang (6), Thanh Sương (6), Địa chỉ (7), Comment (2), Yêu thích (2)
(7, 7, 8, 3, 3),    -- Đà Lạt (7), Léguda (7), Địa chỉ (8), Comment (3), Yêu thích (3)
(8, 8, 9, 4, 4),    -- Phú Quốc (8), 1946 (8), Địa chỉ (9), Comment (4), Yêu thích (4)
(9, 9, 5, 1, 1),    -- Hạ Long (9), Hạ Long Bay (9), Địa chỉ (5), Comment (1), Yêu thích (1)
(10, 10, 10, 2, 2),  -- Cần Thơ (10), Sông Hậu (10), Địa chỉ (10), Comment (2), Yêu thích (2)
(11, 11, 11, 5, 5),   -- Hội An, Cầu Gỗ
(12, 12, 12, 6, 6),   -- Sapa, Sapa Sky
(13, 13, 13, 7, 7),   -- Quy Nhơn, Biển Rạng
(14, 14, 14, 8, 8),   -- Buôn Ma Thuột, Ẩm thực Tây Nguyên
(15, 15, 15, 9, 9),   -- Vũng Tàu, Bãi Sau
(16, 16, 16, 10, 10), -- Phan Thiết, Mũi Né Deli
(17, 17, 17, 11, 11), -- Côn Đảo, Côn Đảo Seafood
(18, 18, 18, 12, 12), -- Huế, Tâm Gia
(19, 19, 19, 13, 13), -- Hà Giang, Hà Giang Quán
(20, 20, 20, 14, 14), -- Điện Biên, Điện Biên Quán
(21, 21, 21, 15, 15), -- Lý Sơn, Lý Sơn Hải Sản
(22, 22, 22, 16, 16), -- Nam Định, Nam Định 36
(23, 23, 23, 17, 17), -- Bắc Giang, Lục Ngạn Quán
(24, 24, 24, 18, 18), -- Bến Tre, Dừa Xanh
(25, 25, 25, 19, 19), -- Tiền Giang, Miền Tây Quán
(26, 26, 26, 20, 20), -- An Giang, Châu Đốc Riverside
(27, 27, 27, 21, 21), -- Đồng Nai, Giang Điền Quán
(28, 28, 28, 22, 22), -- Bình Dương, Đại Nam Quán
(29, 29, 29, 23, 23) -- Lạng Sơn, Tam Thanh Quán

go

Insert into tblTinhThanh_Comment
Values
(1, 1, 1, 1),      -- Hà Nội, Địa chỉ Hà Nội, Comment "Cafe trứng rất ngon", Yêu thích 1
(2, 2, 2, 2),      -- Hải Phòng, Địa chỉ Hải Phòng (giả định), Comment "Phở Hà Nội", Yêu thích 2
(3, 3, 3, 3),      -- Đà Nẵng, Địa chỉ Đà Nẵng (giả định), Comment "Bún Sứa tươi", Yêu thích 3
(4, 4, 4, 4),      -- Thừa Thiên-Huế, Địa chỉ Huế (giả định), Comment "Bánh Căn giòn", Yêu thích 4
(5, 5, 5, NULL),   -- TP. Hồ Chí Minh, Địa chỉ TP.HCM (giả định), Comment "Phố cổ Hội An", Không yêu thích
(6, 6, 6, 6),      -- Nha Trang, Địa chỉ Nha Trang, Comment "Ruộng bậc thang Sapa", Yêu thích 6
(7, 7, 7, 7),      -- Đà Lạt, Địa chỉ Đà Lạt, Comment "Eo Gió Quy Nhơn", Yêu thích 7
(8, 8, 8, 8),      -- Phú Quốc, Địa chỉ Phú Quốc, Comment "Thác Dray Nur", Yêu thích 8
(9, 9, 9, 9),      -- Hạ Long, Địa chỉ Hạ Long, Comment "Tượng Chúa Kitô", Yêu thích 9
(10, 10, 10, 10),  -- Cần Thơ, Địa chỉ Cần Thơ, Comment "Đồi cát Mũi Né", Yêu thích 10
(11, 11, 11, 11),  -- Hội An, Địa chỉ Hội An, Comment "Bãi Đầm Trầu", Yêu thích 11
(12, 12, 12, 12),  -- Sapa, Địa chỉ Sapa, Comment "Sông Hương", Yêu thích 12
(13, 13, 13, 13),  -- Quy Nhơn, Địa chỉ Quy Nhơn, Comment "Đèo Mã Pì Lèng", Yêu thích 13
(14, 14, 14, 14),  -- Buôn Ma Thuột, Địa chỉ Buôn Ma Thuột, Comment "Bảo tàng Điện Biên", Yêu thích 14
(15, 15, 15, 15),  -- Vũng Tàu, Địa chỉ Vũng Tàu, Comment "Núi Thới Lới", Yêu thích 15
(16, 16, 16, NULL),-- Phan Thiết, Địa chỉ Phan Thiết, Comment "Chùa Cổ Lễ", Không yêu thích
(17, 17, 17, 17),  -- Côn Đảo, Địa chỉ Côn Đảo, Comment "Rừng vải Lục Ngạn", Yêu thích 17
(18, 18, 18, 18),  -- Huế, Địa chỉ Huế, Comment "Cù lao Thới Sơn", Yêu thích 18
(19, 19, 19, 19),  -- Hà Giang, Địa chỉ Hà Giang, Comment "Rừng tràm Trà Sư", Yêu thích 19
(20, 20, 20, 20)   -- Điện Biên, Địa chỉ Điện Biên, Comment "Chợ Đông Kinh", Yêu thích 2 */