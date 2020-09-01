USE [QuanAoBaoChau]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01/09/2020 9:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_id] [char](10) NOT NULL,
	[Category_name] [nvarchar](50) NULL,
	[Category_group_id] [char](10) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 01/09/2020 9:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [char](20) NOT NULL,
	[Password] [nvarchar](30) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 01/09/2020 9:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[News_id] [char](10) NOT NULL,
	[News_title] [nvarchar](max) NULL,
	[News_image] [nvarchar](max) NULL,
	[News_imagefull] [nvarchar](max) NULL,
	[News_summary] [nvarchar](max) NULL,
	[News_detail] [nvarchar](max) NULL,
	[News_date] [date] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[News_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 01/09/2020 9:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetail_id] [char](30) NULL,
	[OrderDetail_sno] [char](10) NULL,
	[OrderDetail_product_id] [char](10) NULL,
	[OrderDetail_product_price] [int] NULL,
	[OrderDetail_product_quantity] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01/09/2020 9:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_id] [char](30) NOT NULL,
	[Order_date] [date] NULL,
	[Order_customer_name] [nvarchar](50) NULL,
	[Order_customer_address] [nvarchar](max) NULL,
	[Order_customer_phone] [char](20) NULL,
	[Order_customer_status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 01/09/2020 9:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [char](10) NOT NULL,
	[Product_code] [nvarchar](30) NULL,
	[Product_name] [nvarchar](max) NULL,
	[Product_price] [int] NULL,
	[Product_quantity] [int] NULL,
	[Product_material] [nvarchar](50) NULL,
	[Product_madein] [nvarchar](50) NULL,
	[Product_image] [nvarchar](max) NULL,
	[Product_category_id] [char](10) NULL,
	[Product_status] [nvarchar](50) NULL,
	[Product_viewed] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML01      ', N'Quần bé trai', N'N1        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML02      ', N'Áo bé trai', N'N1        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML03      ', N'Đồ bộ bé trai', N'N1        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML04      ', N'Yếm Bé Trai, Bé Gái', N'N1        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML05      ', N'Áo bé gái', N'N2        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML06      ', N'Quần bé gái', N'N2        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML07      ', N'Đầm', N'N2        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML08      ', N'Đồ bộ bé gái', N'N2        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML09      ', N'Quần Đi Biển, Du Lịch Bé Trai, Bé Gái', N'N2        ')
INSERT [dbo].[Category] ([Category_id], [Category_name], [Category_group_id]) VALUES (N'ML10      ', N'Quần áo Quảng Châu', N'N3        ')
GO
INSERT [dbo].[Login] ([Username], [Password]) VALUES (N'Admin               ', N'123456')
INSERT [dbo].[Login] ([Username], [Password]) VALUES (N'minh                ', N'123456')
GO
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT01      ', N'Bán sỉ quần áo trẻ em xuất khẩu tại Quận 7 giá sỉ rẻ nhất', N'~/images/photo/news/519.jpg', N'~/data/upload_file/Image/hinh%20cty/xuong-may-quan-jean-kaki-xuat-khau-thuong-hieu-thoi-trang-bosono-10.jpg', N'Call ngay: 0945.524.726 - 0963.262.179 để được nhân viên Bảo Châu tư vấn mua sỉ quần áo trẻ em xuất khẩu với giá sỉ rẻ nhất thị trường dành cho các khách hàng ở Quận 7.', N'Bán sỉ quần áo trẻ em cao cấp tại Quận 7, giá sỉ rẻ nhất  
Call ngay: 0945.524.726 - 0963.262.179 để được nhân viên Bảo Châu tư vấn mua sỉ quần áo trẻ em xuất khẩu với giá sỉ rẻ nhất thị trường dành cho các khách hàng ở Quận 7.

 

Công ty Bảo Châu: Uy Tín – Chất Lượng – Giá Sỉ Rẻ Nhất thị trường', CAST(N'2017-11-22' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT02      ', N'Bán sỉ quần áo trẻ em cao cấp xuất khẩu giá sỉ tại Quận 4', N'~/images/photo/news/514.jpg', N'~/data/upload_file/Image/hinh%20cty/ban-si-quan-ao-tre-em-xuat-khau-tai-quan-4-1.jpg', N'Hàng công ty được may tại xưởng và không thông qua bất kỳ kênh trung gian nào nên khách hàng Quận 4 không cần bận tâm về giá. Khách hàng Quận 4 có nhu cầu xem mẫu và đặt hàng, ', N'Công ty Bảo Châu - Chuyên bỏ sỉ nguyên lô quần áo trẻ em xuất khẩu trong hơn 10 năm qua. Hàng công ty được may tại xưởng và không thông qua bất kỳ kênh trung gian nào nên khách hàng Quận 4 không cần bận tâm về giá. Khách hàng Quận 4 có nhu cầu xem mẫu và đặt hàng, vui lòng lựa chọn một trong hai phương án:

P.A 1: Đặt hàng qua hệ thống website công ty quanaobaochau.com hoặc gửi yêu cầu qua mail quanaobaochau@gmail.com. Nhân viên công ty sẽ phản hồi nhanh chóng các yêu cầu của khách khi nhận được đơn hàng. 

P.A 2: Đến địa chỉ 30A Nguyễn Phúc Chu, P. 15, Quận Tân Bình, Tp.HCM để xem hàng mẫu và đặt hàng trực tiếp.', CAST(N'2017-09-12' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT03      ', N'Quần áo trẻ em xuất khẩu Thu Đông bán buôn.-Sản xuất Bảo Châu.', N'~/images/photo/news/441.jpg', N'~/data/upload_file/quan-ao-tre-em-xuat-khau-thu-dong-1.gif', N'Nhà sản xuất Bảo Châu, chuyên sản xuất quần áo trẻ em xuất khẩu thu đông với số lượng lớn cho khách sỉ, khách buôn, khách nguyên lô cho khách hàng tại Tp.HCM, Tại Hà Nội, Tây Nguyên, tại Huế....', N'Vì sao mua quần áo trẻ em thu đông tại Bảo Châu?
Là nhà sản xuất và chuyên làm những đơn đặt hàng lớn. Vì vậy tất cả quy trình, nhân công, vải, phụ liệu, chúng tôi đều sản xuất với số lượng lớn nên giá thành sản phẩm rẻ nhất tại TP.HCM.
Vì công ty gia công cho các công ty thời trang lớn cho nước Âu Mỹ và cả Nhật Hàn nên chúng tôi có được thông số chuẩn của tạng người châu Á. Chính vì thế công ty đảm bảo phôm hàng hóa chuẩn khi lên đồ cho bé (Khách hàng nước ngoài rất quan trọng vấn đề này).
May đường chỉ theo tiêu chuẩn của Nhật Bản.
Chất vải đều là hàng dệt đảm bảo mà sắc, chất lượng, độ ổn định hơn hẳn với hàng thị trường may vải tồn (vải tồn có gì làm đó nên chất lượng không ổn định và nhiều loại vải không phù hợp với thị trường Việt Nam).
Mẫu mã theo thị hiếu của thị trường và kết hợp với tông hàng xuất khẩu. Số lượng mẫu mã ra liên tục giúp khách hàng có nhiều lựa chọn.
Chất vải để sản xuất quần áo trẻ em xuất khẩu thu đông.
Chất vải được chúng tôi đặt dệt riêng với số lượng lớn và được chuẩn bị trước nên giá thàng ra sản phẩm được giảm xuống cùng với chất lượng vải cực kỳ ổn định.
Vải thun 4 chiều, da cá 4 chiều, jeans, kaki, boi.... đều được đặt dệt theo tiêu chuẩn hàng để sử dụng cho các thị trường khó tình. Đặc biệt đều sử dụng chất liệu 100% cotton. Chất liệu 100% cotton rất quan trọng cho trẻ nhỏ nó là thoải mái và không gây dị ứng, khó chịu, rôm sảy cho bé.
Đến với công ty XNK Bảo Châu bạn sẽ tìm thấy quần áo trẻ em xuất khẩu thu đông với giá thành rẻ nhất, phôm chuẩn theo tiêu chuẩn của H&M, chất vải 100% cotton, mẫ mã hằng ngày. Công ty với tiêu chí Tậm Tâm, Chất Lượng, Chuyên Nghiệp hy vọng trở thành đối tác thường xuyên cho quý khách hàng.

Hình ảnh sản xuất quần áo trẻ em xuất khẩu thu đông.', CAST(N'2017-11-11' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT04      ', N'Chuyên sỉ quần áo trẻ em cao cấp xuất khẩu giá sỉ tại Kom Tum', N'~/images/photo/news/501.jpg', N'~/data/upload_file/Image/hinh%20cty/mua-quan-ao-tre-em-cao-cap-xuat-khau-gia-si-tai-kom-tum-3.jpg', N'Quần Áo Bảo Châu chuyên sản xuất và cung cấp quần áo trẻ em hàng VNXK tại Kon Tum, giá sỉ rẻ nhất trên thị trường hiện nay. ', N'Công ty Bảo Châu là xưởng may quần áo trẻ em đạt tiêu chuẩn hàng Việt Nam Xuất Khẩu trong suốt 10 năm qua. Các thị trường lớn trên thế giới (Nhật Bản, Hàn Quốc, Bắc Mỹ, Campuchia, …) và các tỉnh thành trong nước (Cần Thơ, Đắk Lắk, Đắk Nông, Lâm Đồng, Đà Lạt,…) đang là những thị trường tiêu thụ quần áo trẻ em xuất khẩu của công ty.

Với nhu cầu tiếp tục mở rộng thị trường trong nước lẫn ngoài nước, công ty Bảo Châu tiếp tục cung cấp Quần Áo Trẻ Em Xuất Khẩu giá sỉ, rẻ nhất tại tỉnh Kon Tum. Khách hàng ở Kon Tum muốn tìm nguồn hàng quần áo trẻ em uy tín – chất lượng – giá tốt, vui lòng liên hệ với công ty thông qua: 

Address: 30A Nguyễn Phúc Chu, P. 15, Quận Tân Bình, Tp.HCM.
Hotline: 0945.524.726
Website:  quanaobaochau.com
Mail: quanaobaochau@gmail.com
Fanpage: https://www.facebook.com/Quanaobaochau', CAST(N'2017-04-13' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT05      ', N'Phần mền quản lý bán hàng cửa hàng thời trang miễn phí Download dùng suốt đời.', N'~/images/photo/news/480.jpg', N'~/data/upload_file/Image/company/phan-men-quan-ly-ban-h%C3%A0ng-cua-h%C3%A0ng-thoi-trang-mien-phi.jpg', N'Bạn đang tìm kiếm bản Download Phần mền quản lý bán hàng cửa hàng thời trang miễn phí vĩnh viễn. Chúng tôi cung cấp bạn bản phần mền miễn phí suốt đời với những tính năng cho cửa hàng thời trang.', N' Đầu tiên cảm ơn bạn đã ghé thăm website http://quanaobaochau.com/ của chúng tôi. Hy vọng các thông tin hữu ích với bạn.

Chúng tôi luôn mong muốn đem đến bạn nhiều giá trị nhất, website không chỉ cung cấp thông tin về thời trang trẻ em, các xu hướng người dùng mà cộng thêm các tiện ích khác. Vì vậy, chúng tôi đã liên kết với phần mềm Dân Trí Soft chuyên cung cấp giải pháp quản lý cửa hàng (shop) thời trang bán lẻ, bán sỉ.

Đặc biệt, chúng tôi gửi tặng đến bạn phần mềm quản lý shop thời trang miễn phí vĩnh viễn dành cho cơ sở nhỏ và vừa, với các chức năng:

- Quản lý danh mục hàng hóa, giá cả (thiết lập được nhiều bảng giá như bán lẻ, bán sỉ).
- In tính tiền chuyên nghiệp bằng máy in bill hoặc máy in bình thường.
- Tính toán doanh thu theo ngày, tháng, năm.
- Báo cáo chi tiết hàng bán theo từng thời gian.
- Quản lý được thông tin khách hàng, thông tin nhà cung cấp.
- Tạo nhiều user sử dụng phần mềm với phân quyền chặc chẽ.
- Cài đặt đồng thời cho nhiều máy cùng sử dụng dữ liệu.
Và nhiều chức năng khác phù hợp với shop thời trang.

Đây là link đăng ký phần mềm: http://bit.ly/2cqfbSW
Hướng dẫn  : http://www.dantrisoft.com/p/phan-mem-mien-phi-tang-ban.html

Riêng bản tính phí dành cho đơn vị lớn, quy trình quản lý phức tạp hơn, bạn có thể vào www.DanTriSoft.com để tham khảo, hoặc gọi 0906.799.838 (mr Hiếu) để được tư vấn', CAST(N'2016-09-01' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT06      ', N'Bán sỉ quần áo trẻ em xuất khẩu giá sỉ tại Cà Mau hàng cao cấp', N'~/images/photo/news/509.jpg', N'~/data/upload_file/Image/hinh%20cty/ban-si-quan-ao-tre-em-xuat-khau-gia-si-tai-ca-mau-2.jpg', N'Khách hàng tại Cà Mau có nhu cầu mua sỉ quần áo trẻ em số lượng lớn vui lòng đặt hàng theo cách sau:', N'Cung cấp quần áo trẻ em giá sỉ, chất lượng chuẩn xuất khẩu tại Cà Mau

Khách hàng tại Cà Mau có nhu cầu mua sỉ quần áo trẻ em số lượng lớn vui lòng đặt hàng theo một trong ba cách sau:

Cách 1: Xem mẫu và lựa chọn các mẫu quần áo mới trên Website chính và Fanpage của công ty. Sau đó, gửi yêu cầu đặt hàng qua Email: quanaobaochau@gmail.com . Nhân viên công ty sẽ liên lạc ngay với khách khi tiếp nhận được email đặt hàng.

Cách 2: Xem mẫu và gọi trực tiếp đến công ty thông qua Hotline: 0945.524.726 để biết thông tin chi tiết về mẫu mã và giá cả hàng hóa. Sau đó tiến hành đặt hàng và làm các thủ tục thanh toán đơn giản.

Cách 3: Đến trực tiếp công ty tại địa chỉ 30A Nguyễn Phúc Chu, P. 15, Quận Tân Bình, Tp.HCM để xem mẫu mã hàng hóa cũng như trao đổi về các vấn đề liên quan đến giá cả, số lượng, cách vận chuyển,… Sau đó, tiến hành đặt hàng ngay tại công ty Bảo Châu.

Khi đã đặt hàng và thanh toán thành công, Bảo Châu sẽ vận chuyển hàng hóa đến các chành xe trong khu vực Tp.HCM để chuyển xuống Cà Mau theo yêu cầu của khách.
 
Vài nét về công ty Bảo Châu:

Bảo Châu là công ty chuyên sản xuất và nhận gia công các mặt hàng quần áo trẻ em xuất khẩu theo đúng form chuẩn xuất sang các thị trường khó tính: Nhật, Hàn, Bắc Mỹ, … Đồng thời, tại các khu vực trong nước từ miền Bắc – Trung – Nam, công ty chuyên bỏ sỉ số lượng lớn quần áo trẻ em giá sỉ rẻ nhất trên thị trường. Do đó, khách hàng có thể yên tâm về giá cả và chất lượng hàng hóa khi nhập hàng tại Bảo Châu.
 
Top 5 lý do mà khách hàng tại Cà Mau không thể bỏ qua khi lựa chọn Bảo Châu là nơi cung ứng hàng hóa lâu dài:
+ Top 1 nhà bán sỉ quần áo trẻ em xuất khẩu hàng đầu tại Sài Gòn trong 2 năm liên tiếp 2015 – 2016.
+ Hơn 10 năm kinh nghiệm trong sản xuất và gia công quần áo trẻ em đúng tiêu chuẩn, xuất khẩu sang các thị trường lớn trên Thế giới nên chất lượng sẽ được đảm bảo.
 + Hàng hóa được sản xuất tại Xưởng May Bảo Châu nên giá thành được xem là rẻ nhất trên thị trường. Đây được xem là lợi thế cạnh tranh lớn nhất của công ty so với các đối thủ trong ngành.
+ 100% quần áo trẻ em được sản xuất bằng vải Cotton nên khi trẻ mặc vào sẽ rất thoáng mát và dễ chịu, không gây dị ứng da cho trẻ.
+ Đội ngũ nhân viên trẻ, nhiệt huyết, luôn biết sáng tạo trong cách thiết kế để tạo ra nhiều mẫu hàng đẹp, chất lượng. Liên tục cập nhật mẫu mã mới trên Website chính lẫn Fanpage công ty theo từng ngày. ', CAST(N'2017-06-16' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT07      ', N'5 bước chăm sóc trẻ bị ho tại nhà bằng bài thuốc dân gian đơn giản.', N'~/images/photo/news/504.jpg', N'~/data/upload_file/Image/hinh%20cty/5-buoc-cham-soc-tre-bi-ho-tai-nha-1.jpg', N'Khi con mình chỉ bị ho vài tiếng, ba mẹ nghĩ sẽ không có việc gì xảy ra. Tuy nhiên, đây là sai làm của nhiều bậc phụ huynh. Bởi ít ai để ý rằng, những tiếng ho ban đầu sẽ báo hiệu cho cơn ho sẽ tăng và kéo theo những căn bệnh liên quan khác.', N'1.      Dấu hiệu nhận biết trẻ bị ho

Có 7 dấu hiệu để phán đoán trẻ bị ho mà các bậc cha mẹ cần lưu ý:

Không muốn ăn uống: Bé không muốn ăn uống gì trong ngày dù cho đồ ăn có ngon đến đâu đi nữa. Thậm chí, các trẻ nhỏ còn bỏ bú sữa mẹ khi tới bữa.

Buồn nôn, khó tiêu: Khi đã biếng ăn mà chúng ta cố gắng ép bé ăn uống thì nguy cơ buồn nôn, ói là rất cao. Trẻ nhỏ sẽ nôn hết những gì mà mình đã được cho ăn hoặc bú sữa.

Mệt, không muốn vận động: Khi trẻ có xu hướng mệt, không muốn vận động mà chỉ nằm ngủ nhiều thì các bà mẹ cần lưu ý. Dấu hiệu của bệnh tật sẽ đi kèm đấy.

Viêm họng kèm sổ mũi: Bộ 3 bất khả xâm phạm Ho – Viêm họng – Sổ mũi luôn đi chung với nhau. Do đó, nếu chúng ta phát hiện trẻ có một trong hai dấu hiệu thuộc bộ 3 này thì hãy cẩn thận. Vì khi trẻ bị bệnh, nó sẽ kéo theo những căn bệnh liên quan.

Thở nhanh: Nhịp tim của bé thở nhanh hơn bình thường. Theo các bác sĩ trong ngành, nếu nhịp thở trong vòng 30 – 60 lần trở lên thì đứa trẻ của bạn đang gặp trường hợp thở nhanh.

Thở co thắt lồng ngực: Khi quan sát lồng ngực khi để trẻ nằm yên. Nếu như chúng ta thấy khi trẻ hít thở, hai bên lồng ngực của bé lõm vào. Điều  này chứng tỏ trẻ đang bị thở co lõm lồng ngực. Bởi nếu hít thở bình thường thì lồng ngực hai bên của trẻ chỉ có nở ra mà không bị lõm vào. 

Thở rít: Cụm từ khá lạ nhưng cũng rất quan trọng mà các bậc phụ huynh cần chú ý. Người mẹ cần để tai ở giữa vùng miệng mũi của bé, mắt quan sát vị trí của bụng và ngực. Nếu tai người mẹ nghe được âm thanh thô ráp khi bé hít thở. Điều đó chính minh, bé của bạn đang thở rít. 
2.      Nguyên nhân khiến trẻ bị ho
Các nguyên nhân khiến trẻ bị ho nhiều nhất:

Ho do khí hậu thay đổi: Với thời tiết nắng mưa thất thường như hiện nay ở nước ta thì bệnh họ ở trẻ là thường xuyên xảy ra. Một số triệu chứng khi trẻ bị ho: ho theo cơn, ho có đờm không bị sốt.

Ho do môi trường bên ngoài: Ô nhiễm môi trường và các chất độc hại xuất hiện trong không khí cũng là nguyên nhân gây ra ho ở trẻ. Bởi khi đó, hai lá phổi và khí quản của trẻ bị tổn thương nghiêm trọng vì “làm việc” quá sức. Ngoài ra, khói bụi lẫn thuốc lá cũng gây ho rất nhiều khi bé hít phải.

Ho do cảm lạnh: mỗi khi tắm cho bé xong, các bà mẹ thường không chú ý lau khô cơ thể bé. Điều này rất dễ làm bé cảm lạnh và gây ra ho. Một vài trường hợp cảm lạnh có liên quan đến thời tiết.

Ho do bị các bệnh khác kết hợp: khi trẻ đang mắc các bệnh sốt, viêm họng, sổ mũi, … thì các cơn ho có thể dễ dàng xuất hiện. Vì các virus gây bệnh lúc bấy giờ đang hoạt động rất mạnh. Khi thấy các loại bệnh này thì bạn nên lường trước cơn họ của bé cũng sẽ đến trong nay mai.    
3.      Cách chăm sóc trẻ bị ho tại nhà đơn giản
Dùng chanh: Bé có thể ngừng ho chỉ bằng một ly nước chanh tươi. Mùi vị của nước chanh sẽ giúp loại bỏ các chất nhầy và làm dịu cổ họng của bé. Tuy nhiên, không nên vắt chanh trực tiếp cho bé uống mà thay vào đó, chúng ta cần pha một ít đường hoặc một chút mật ong để làm giảm độ chua của chanh tươi.
Giữ ấm thân nhiệt cho trẻ: Tránh các trường hợp trẻ bị cảm lạnh do thời tiết, do khi tắm, không tắm bé vào ban đêm, … Khi trẻ bị ho, chúng ta cần chuẩn bị một chiếc khăn choàng để choàng qua cổ, giúp giữ ấm cổ họng bé.
Pha một ly trà gừng: Cho bé uống một ít trà gừng để giữ ấm bụng. Đồng thời, gừng còn giúp loại bỏ chất đờm có trong cổ họng bé. Đây là “bài thuốc” dân gian trị ho khá đơn giản và được phần đông các bậc phụ huynh áp dụng.
Bổ sung nước: Nước là vô cùng quan trọng đối với cơ thể con người. 70% cơ thể người là nước. Uống nhiều nước, trẻ sẽ ngăn ngừa được nhiều bệnh khác chứ không phải chi riêng về ho. Do đó, cần bổ sung càng nhiều nước cho trẻ càng tốt.
Uống mật ong: Một loại thuốc trị ho tự nhiên và tốt dành cho trẻ là mật ong. Theo một nghiên cứu của bác sĩ người Mỹ - Ông Wilkinson: “Uống mật ong có thể giúp trẻ giảm ho. Đồng thời, giúp trẻ ngủ ngon giấc và sâu hơn vào ban đêm”. Khi trẻ bị ho, các bà mẹ cũng nên thử pha một ít mật ong cho bé uống để xem kết quả ra sao nhé!', CAST(N'2017-04-25' AS Date))
INSERT [dbo].[News] ([News_id], [News_title], [News_image], [News_imagefull], [News_summary], [News_detail], [News_date]) VALUES (N'TT08      ', N'Bật mí nơi mua quần áo trẻ em giá sỉ 8k', N'~/images/photo/news/534.jpg', N'~/data/upload_file/Image/kinh%20nghi%E1%BB%87m/mua-quan-ao-tre-em-gia-si-8k-1.jpg', N'Bạn đang buôn bán kinh doanh quần áo trẻ em? bạn đang tìm nơi mua quần áo trẻ em giá sỉ 8k?', N'Nơi bán quần áo trẻ em giá sỉ 8k
1.      Chợ Tân Bình
Chợ Tân Bình là nơi bạn có thể dễ dàng mua sỉ quần áo trẻ em chỉ với giá 8k. Ở đây, không chỉ có một nguồn hàng mà rất nhiều nguồn hàng sỉ quần áo trẻ em với mức giá rất rẻ.

Đặc biệt, đa số các nguồn hàng quần áo trẻ em ở đây có nguồn gốc nhập từ Quảng Châu, Trung Quốc, Campuchia,… rất nhiều nguồn hàng, đa dạng mẫu mã, đa dạng lứa tuổi trẻ em để bạn lựa chọn.

Các nguồn hàng quần áo trẻ em thường là quần áo, đồ bộ, váy đầm cho bé gái, áo quần cho bé trai,… Tuy nhiên, để mua với mức giá sỉ 8k bạn phải ôm lo với số lượng rất nhiều. bởi chợ Tân Bình chủ yếu tập trung các nguồn hàng cấp 2 trở lên, họ là nơi phân phối trung gian nên sẽ có mức giá cao hơn nơi nhập tận gốc.

Bạn muốn nhập sỉ với giá 8k phải số lượng thật lớn hay quần áo không được chất lượng cho lắm. Do đó, khi nhập hàng sỉ 8k tại chợ Tận Bình, bạn cần tìm hiểu và kiểm tra cẩn thận để không nhập phải hàng kém chất lượng, hàng lỗi ảnh hưởng đến uy tín kinh doanh của bạn.
2.      Chợ Hạnh Thông Tây
Đây cũng là một trong những khu chợ có rất nhiều nguồn hàng quần áo trẻ em. Tại chợ Hạnh Thông Tây bán rất nhiều các mặt hàng, trong đó không thế thiếu mặt hàng trẻ em.

Ở đây không chỉ bán lẻ mà nếu bạn muốn mua sỉ quần áo trẻ em họ vẫn bán. Đặc biệt, vẫn có xuất hiện rất nhiều nguồn hàng quần áo trẻ em giá sỉ 8k, mức giá sỉ họ bán cũng khá rẻ.

Cũng như chợ Tân Bình, chợ Hạnh Thông Tây tập trung các nguồn hàng chủ yếu có nguồn gốc từ hàng Quảng Châu, Trung Quốc,… các nguồn hàng này rất đa dạng, phong phú, mẫu mã đẹp, màu sắc bắt mắt.

Nếu tìm hiểu trước, bạn có thể dễ dàng mua quần áo trẻ em chỉ với mức giá 8k và cũng phải ôm lô lớn. Sỉ 8k là mức giá quá rẻ, hàng này nếu bán lẻ thường từ 30 – 45k, mức chất lượng thuộc loại trung bình.

Khi mua hàng sỉ quần áo trẻ em với mức giá 8k, bạn cũng cần tìm hiểu kỹ về chất lượng tại khi chợ này. Tuy nhiên, thường thì chợ Hạnh Thông Tây sẽ có mức giá bán cao hơn các chợ khác, chất lượng cũng tốt hơn một tí.
3.      Chợ An Đông
Chợ An Đông là khu chợ thuộc trung tâm thành phố, bán đa dạng các mặt hàng. Rất nhiều người mua sỉ tập trung về đây để tìm nguồn sỉ rẻ nhất.

Không chỉ các khu chợ khác, chợ An Đông cũng có nguồn hàng được nhập từ các nước khác về, chất lượng cũng thuộc loại trung bình có mức giá khá rẻ nên bạn cũng có thể dễ dàng tìm mua được nguồn sỉ quần áo trẻ em giá 8k.

Theo mình được biết, tại chợ An Đông, có khá nhiều nguồn hàng bán quần áo trẻ em sỉ 8k, nếu bạn mua sỉ số lượng càng nhiều thì mức giá sẽ càng rẻ, thậm chí còn rẻ hơn nhiều với mong muốn của bạn.
4.      Chợ Bà Chiểu
Chợ Bà Chiểu là khu chợ lớn và lâu đời nhất tại TPHCM, chợ này chủ yếu bán các mặt hàng quần áo có mức giá tầm 35k – 45k, với mức giá lẻ rẻ như thế thì mức giá sỉ sẽ khoảng 7k – 8k.

Tại khu chợ Bà Chiểu, bạn cũng dễ dàng mua sỉ quần áo trẻ em giá 8k, nhiều mẫu mã, nhiều chủng loại với nhiều size, nhiều lứa tuổi.

Tuy nhiên, khi lấy sỉ quần áo tại các khu chợ với mức giá 8k, bạn cũng cần phải cẩn thận về chất lượng của quần áo. Có thể mức giá sỉ rẻ, mẫu mã đẹp nhưng chất lượng lại không đảm bảo. Điều khách hàng cần ở bạn không chỉ đẹp và rẻ mà còn phải chất lượng. Do đó, tìm nguồn hàng chất lượng với mức giá rẻ là điều cần thiết.
5.      Xưởng sản xuất quần áo trẻ em
Bạn cũng có thể tìm mua quần áo trẻ em giá sỉ 8k ở các xưởng sản xuất để đảm bảo về chất lượng, uy tín và chất lượng.

Mua sỉ tại xưởng sản xuất sẽ có mức giá rẻ nhất , đáp ứng nhu cầu lấy sỉ của bạn.

Xưởng quần áo trẻ em Bảo Châu là nơi lấy sỉ quần áo trẻ em giá cực rẻ bạn không thể bỏ qua. Bảo Châu đảm bảo về mức giá sỉ rẻ nhất – mẫu mã đẹp nhất – chất lượng nhất – uy tín nhất.

MỌI CHI TIẾT XIN LIÊN HỆ
XƯỞNG QUẦN ÁO TRẺ EM BẢO CHÂU 
 

Địa chỉ: 30A Nguyễn Phúc Chu, P.15, Quận Tân Bình, TP.HCM
Email: quanaobaochau@gmail.com
 

Hotline: 0945.524.726 – 0963.262.179

Website: quanaobaochau.com', CAST(N'2018-08-27' AS Date))
GO
INSERT [dbo].[OrderDetail] ([OrderDetail_id], [OrderDetail_sno], [OrderDetail_product_id], [OrderDetail_product_price], [OrderDetail_product_quantity]) VALUES (N'Order151958192020xb1cd        ', N'1         ', N'SP01      ', 70000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetail_id], [OrderDetail_sno], [OrderDetail_product_id], [OrderDetail_product_price], [OrderDetail_product_quantity]) VALUES (N'Order151958192020xb1cd        ', N'2         ', N'SP02      ', 100000, 1)
INSERT [dbo].[OrderDetail] ([OrderDetail_id], [OrderDetail_sno], [OrderDetail_product_id], [OrderDetail_product_price], [OrderDetail_product_quantity]) VALUES (N'Order151958192020xb1cd        ', N'3         ', N'SP03      ', 80000, 3)
GO
INSERT [dbo].[Orders] ([Order_id], [Order_date], [Order_customer_name], [Order_customer_address], [Order_customer_phone], [Order_customer_status]) VALUES (N'Order151958192020xb1cd        ', CAST(N'2020-01-09' AS Date), N'Trần Anh Quân', N'22 Hàng Bài, Hà Nội', N'0985376083          ', N'Không')
GO
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP01      ', N'QBT 1875', N'Quần Lửng Nam Nhỡ Jin Jean 547 Ri 6_Size 2-12T', 70000, 88, N'Jean', N'Việt Nam', N'~/images/photo/29911_quan-lung-nam-nho-jin-jean-547-ri-6_size-2-12t.jpg', N'ML01      ', N'Còn Hàng', 28)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP02      ', N'ABT 1075', N'Áo Khoác Kaki Lafin Có Nón Viền 2 Túi Ri 6_Size Đại 9-14T', 100000, 197, N'Kaki', N'Việt Nam', N'~/images/photo/29910_ao-khoac-kaki-lafin-co-non-vien-2-tui-ri-6_size-dai-9-14t.jpg', N'ML02      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP03      ', N'QBT 1874', N'
Quần Jean Lửng Nam Đại Bự Poo P463 Ri 6_Size 6-16T', 80000, 141, N'Jean', N'Việt Nam', N'~/images/photo/29909_quan-jean-lung-nam-dai-bu-poo-p463-ri-6_size-6-16t.jpg', N'ML01      ', N'Còn Hàng', 5)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP04      ', N'QBT 1074', N'Áo Khoác Bo Đai Nam Bé Jin Jean 800 Ri 6_Size 2-12T', 120000, 180, N'Jean', N'Việt Nam', N'~/images/photo/29894_ao-khoac-bo-dai-nam-be-jin-jean-800-ri-6_size-2-12t.jpg', N'ML02      ', N'Còn Hàng', 3)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP05      ', N'ĐBBT 1493', N'Bộ Thun Cotton Dài Tay In Số 86 Ri 5_Size Cồ 14-22T', 220000, 300, N'Thun cotton 100%', N'Việt Nam', N'~/images/photo/29915_bo-thun-cotton-dai-tay-in-so-86-ri-5_size-co-14-22t.jpg', N'ML03      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP06      ', N'ĐBBT 1489', N'Bộ Thun Ngắn Tay In Puma Ri 5_Size Đại 8-12T', 250000, 280, N'Thun cotton 100%', N'Việt Nam', N'~/images/photo/29898_bo-thun-ngan-tay-in-puma-ri-5_size-dai-8-12t.JPG', N'ML03      ', N'Còn Hàng', 2)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP07      ', N'Yếm 314', N'Yếm Lửng Bé Jin Jean 308 Ri 6_Size 2-12T', 150000, 240, N'Jean', N'Việt Nam', N'~/images/photo/29533_yem-lung-be-jin-jean-308-ri-6_size-2-12t_large.jpg', N'ML04      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP08      ', N'Yếm 319', N'
Yếm Sooc Nam Bé Jin Jean Ri 6_Size 0-12T', 160000, 270, N'Jean', N'Việt Nam', N'~/images/photo/29715_yem-sooc-nam-be-jin-jean-ri-6_size-0-12t.JPG', N'ML04      ', N'Còn Hàng', 1)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP09      ', N'ABG 868', N'Áo Khoác Nữ Jin Jean 562 Ri 8_Size 2-16T', 110000, 350, N'Jean', N'Việt Nam', N'~/images/photo/29863_ao-khoac-nu-jin-jean-562-ri-8_size-2-16t.JPG', N'ML05      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP10      ', N'ABG 867', N'
Áo Khoác KaKi Có Nón Thêu Heo Peppa Ri 8_Size 1-8T', 90000, 195, N'Kaki', N'Việt Nam', N'~/images/photo/29846_ao-khoac-kaki-co-non-theu-heo-peppa-ri-8_size-1-8t.JPG', N'ML05      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP11      ', N'QBG 1074', N'
Quần Jean Dài 1969 Thêu Thỏ Có Tăng Đơ (0321) Ri 7 _Size 0-12T', 95000, 255, N'Jean', N'Việt Nam', N'~/images/photo/29515_quan-jean-dai-1969-theu-tho-co-tang-do-0321-ri-7-_size-0-12t_large.jpg', N'ML06      ', N'Còn Hàng', 4)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP12      ', N'QBG 1100', N'Quần Ship Đùi Elsa Phom To Lốc 12c_Size 110-200', 110000, 260, N'Thun cotton 100%', N'Việt Nam', N'~/images/photo/29916_quan-ship-dui-elsa-phom-to-loc-12c_size-110-200.jpg', N'ML06      ', N'Còn Hàng', 1)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP13      ', N'ĐBG 1561', N'Đầm Tơ Chữ A In Mặt Cười Chip Chip Ri 5_Size Đại 9-13T', 260000, 360, N'Tơ', N'Việt Nam', N'~/images/photo/29905_dam-to-chu-a-in-mat-cuoi-chip-chip-ri-5_size-dai-9-13t.JPG', N'ML07      ', N'Còn Hàng', 1)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP14      ', N'ĐBG 1559', N'Đầm Lụa Cổ Đổ Chip Chip In Hình Ri 5_Size Đại 9-13T', 360000, 340, N'Lụa', N'Việt Nam', N'~//images/photo/29903_dam-lua-co-do-chip-chip-in-hinh-ri-5_size-dai-9-13t.JPG', N'ML07      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP15      ', N'ĐBBG 1212', N'Bộ Thun Dài Tay In Mickey Nơ Ri 5_Size Cồ 14-22T', 150000, 230, N'Thun cotton 100%', N'Việt Nam', N'~/images/photo/29889_bo-thun-dai-tay-in-mickey-no-ri-5_size-co-14-22t.JPG', N'ML08      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP16      ', N'ĐBBG 1209', N'Bộ Lụa Mềm Sọc DBC Ri 8_Size 3-10T', 350000, 380, N'Lụa Mềm', N'Việt Nam', N'~/images/photo/29872_bo-lua-mem-soc-dbc-ri-8_size-3-10t.jpg', N'ML08      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP17      ', N'QDB 001F', N'
Quần Short Bé Gái Đi Biển, Đi Du Lịch Xuất Khẩu Ri 5_SIze 2-10T', 150000, 320, NULL, N'Việt Nam', N'~/images/photo/14525_quan-short-be-gai-di-bien-di-du-lich-xuat-khau-ri-5_size-2-10t.gif', N'ML09      ', N'Còn Hàng', 2)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP18      ', N'QDB 001G', N'Quần Short Bé Gái Đi Biển, Đi Du Lịch Xuất Khẩu Ri 5_SIze 2-10T', 160000, 310, NULL, N'Việt Nam', N'~/images/photo/14526_quan-short-be-gai-di-bien-di-du-lich-xuat-khau-ri-5_size-2-10t.gif', N'ML09      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP19      ', N'QC 113', N'
Bộ Sơ Mi Linen Quảng Châu Có Nơ Ri 4_Size Nhí 6-12T', 170000, 390, N'Linen', N'Quảng Châu', N'~/images/photo/29508_bo-so-mi-linen-quang-chau-co-no-ri-4_size-nhi-6-12t.jpg', N'ML10      ', N'Còn Hàng', 0)
INSERT [dbo].[Product] ([Product_id], [Product_code], [Product_name], [Product_price], [Product_quantity], [Product_material], [Product_madein], [Product_image], [Product_category_id], [Product_status], [Product_viewed]) VALUES (N'SP20      ', N'QC 110', N'Đầm Thun Dài Tay Phối Ren Quảng Châu Ri 4_Size S-XL', 165000, 280, N'Thun Phối Ren', N'Quảng Châu', N'~/images/photo/29488_dam-thun-dai-tay-phoi-ren-quang-chau-ri-4_size-s-xl.jpg', N'ML10      ', N'Còn Hàng', 0)
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([OrderDetail_id])
REFERENCES [dbo].[Orders] ([Order_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([OrderDetail_product_id])
REFERENCES [dbo].[Product] ([Product_id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Product_category_id])
REFERENCES [dbo].[Category] ([Category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
