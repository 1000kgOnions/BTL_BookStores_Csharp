USE [master]
GO
/****** Object:  Database [LaptrinhWeb_BTL_Bansach]    Script Date: 5/6/2021 8:13:03 AM ******/
CREATE DATABASE [LaptrinhWeb_BTL_Bansach]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LaptrinhWeb_BTL_Bansach', FILENAME = N'D:\SQLSV\MSSQL15.SQLEXPRESS\MSSQL\DATA\LaptrinhWeb_BTL_Bansach.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LaptrinhWeb_BTL_Bansach_log', FILENAME = N'D:\SQLSV\MSSQL15.SQLEXPRESS\MSSQL\DATA\LaptrinhWeb_BTL_Bansach_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LaptrinhWeb_BTL_Bansach].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET ARITHABORT OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET  MULTI_USER 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET QUERY_STORE = OFF
GO
USE [LaptrinhWeb_BTL_Bansach]
GO
/****** Object:  Table [dbo].[chitietgiohang]    Script Date: 5/6/2021 8:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietgiohang](
	[MaGiohang] [varchar](10) NOT NULL,
	[Masach] [varchar](10) NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [float] NULL,
 CONSTRAINT [chitietgiohang_pk] PRIMARY KEY CLUSTERED 
(
	[MaGiohang] ASC,
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chude]    Script Date: 5/6/2021 8:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chude](
	[MaCD] [varchar](10) NOT NULL,
	[Tenchude] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[giohang]    Script Date: 5/6/2021 8:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giohang](
	[MaGiohang] [varchar](10) NOT NULL,
	[TenDN] [nvarchar](50) NULL,
	[ngaymua] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 5/6/2021 8:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[TenDN] [nvarchar](50) NOT NULL,
	[Matkhau] [nvarchar](50) NOT NULL,
	[HotenKH] [nvarchar](50) NULL,
	[DiachiKH] [nvarchar](50) NULL,
	[DienthoaiKH] [nvarchar](50) NULL,
	[Ngaysinh] [smalldatetime] NULL,
	[Gioitinh] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Quyen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhaxuatban]    Script Date: 5/6/2021 8:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhaxuatban](
	[MaNXB] [varchar](10) NOT NULL,
	[TenNXB] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNXB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sach]    Script Date: 5/6/2021 8:13:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sach](
	[Masach] [varchar](10) NOT NULL,
	[Tensach] [nvarchar](100) NULL,
	[Dongia] [float] NULL,
	[Donvitinh] [nvarchar](10) NULL,
	[Mota] [ntext] NULL,
	[Hinhminhhoa] [nvarchar](100) NULL,
	[Ngaycapnhat] [smalldatetime] NULL,
	[Soluongban] [int] NULL,
	[Solanxem] [int] NULL,
	[tentacgia] [nvarchar](80) NULL,
	[MaCD] [varchar](10) NULL,
	[MaNXB] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Masach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[chitietgiohang] ([MaGiohang], [Masach], [Soluong], [Dongia]) VALUES (N'1', N'36', 3, 80000)
INSERT [dbo].[chitietgiohang] ([MaGiohang], [Masach], [Soluong], [Dongia]) VALUES (N'2', N'11', 5, 61000)
INSERT [dbo].[chitietgiohang] ([MaGiohang], [Masach], [Soluong], [Dongia]) VALUES (N'2', N'42', 3, 30000)
GO
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'1', N'Ngoại Ngữ')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'10', N'Sách giáo khoa')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'11', N'Nghệ thuật sống')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'16', N'Thiếu Nhi')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'18', N'Tin Học Ứng Dụng')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'3', N'Luật')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'4', N'Văn học')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'5', N'Khoa học kỹ thuật')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'6', N'Nông nghiệp')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'7', N'Triết học-Chính trị')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'8', N'Lịch sử, địa lý')
INSERT [dbo].[chude] ([MaCD], [Tenchude]) VALUES (N'9', N'Kinh tế')
GO
INSERT [dbo].[giohang] ([MaGiohang], [TenDN], [ngaymua]) VALUES (N'1', N'test', CAST(N'2021-05-03T23:03:00' AS SmallDateTime))
INSERT [dbo].[giohang] ([MaGiohang], [TenDN], [ngaymua]) VALUES (N'2', N'test', CAST(N'2021-05-03T23:17:00' AS SmallDateTime))
GO
INSERT [dbo].[khachhang] ([TenDN], [Matkhau], [HotenKH], [DiachiKH], [DienthoaiKH], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (N'hoa', N'hoa', N'Đặng Quốc Hòa', N'MaVạn Hạnh', N'01658345985', CAST(N'1965-07-24T00:00:00' AS SmallDateTime), N'Nữ', N'dqhoa@hcmuns.edu.vn', 2)
INSERT [dbo].[khachhang] ([TenDN], [Matkhau], [HotenKH], [DiachiKH], [DienthoaiKH], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (N'long1232', N'long', N'Ngô Long', N'88 Lương Sử C', N'015461734', CAST(N'2000-06-02T00:00:00' AS SmallDateTime), N'Nam', N'long6200@yahoo.com', 1)
INSERT [dbo].[khachhang] ([TenDN], [Matkhau], [HotenKH], [DiachiKH], [DienthoaiKH], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (N'tam', N'tam', N'Đòan Ngọc Minh Tâm', N'Ba Đình', N'141534245', CAST(N'1978-05-15T00:00:00' AS SmallDateTime), N'Nữ', N'ntthanh@t3h.hcmuns.edu.vn', 2)
INSERT [dbo].[khachhang] ([TenDN], [Matkhau], [HotenKH], [DiachiKH], [DienthoaiKH], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (N'test', N'123', N'long', N'dfdfdf', N'223232', CAST(N'2000-02-06T00:00:00' AS SmallDateTime), N'Nam', N'tienlong6200@gmail.com', 2)
INSERT [dbo].[khachhang] ([TenDN], [Matkhau], [HotenKH], [DiachiKH], [DienthoaiKH], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (N'thang', N'Nguyễn Tiến Luân', N'Nguyễn Tiến Luân', N'Nam Từ Liêm', NULL, CAST(N'1974-07-15T00:00:00' AS SmallDateTime), N'Nam', N'ntluan@hcmuns.edu.vn', 2)
INSERT [dbo].[khachhang] ([TenDN], [Matkhau], [HotenKH], [DiachiKH], [DienthoaiKH], [Ngaysinh], [Gioitinh], [Email], [Quyen]) VALUES (N'thanh', N'thanh', N'Nguyễn Thiên Thanh', N'Hai Bà Trưng', N'0908320111', CAST(N'1979-04-04T00:00:00' AS SmallDateTime), N'Nữ', N'ntthanh@t3h.hcmuns.edu.vn', 2)
GO
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'1', N'Nhà xuất bản Trẻ')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'2', N'NXB Thống kê')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'3', N'Kim đồng')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'4', N'Đại học quốc gia')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'5', N'Văn hóa nghệ thuật')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'6', N'Văn hóa')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'7', N'Lao động - Xã hội')
INSERT [dbo].[nhaxuatban] ([MaNXB], [TenNXB]) VALUES (N'8', N'Khoa Học & Kỹ Thuật')
GO
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'1', N'Giáo trình Tin học cơ bản', 27000, NULL, N'Nội dung của cuốn: Tin Học Cơ Bản Windows XP gồm có 7 chương:Chương 1: Một số vấn đề cơ bản. Chương 2: Sử dụng nhanh thanh công cụ và thanh thực đơn trong My Computer và Windows Explorer. Chương 3: Các thao tác trong windows XP. Chương 4: Các thiết lập trong Windows XP. Chương 5: Bảo trì máy tính. Chương 6: Các phím tắt Chương 7: Hỏi và đáp các thắc mắc.Xin trân trọng giới thiệu cuốn sách cùng bạn', N'~/hinhdulieu/THCB.jpg', CAST(N'2020-04-07T00:00:00' AS SmallDateTime), 0, 0, N'Lê Trọng Phúc', N'5', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'10', N'Tư Duy Chiến Lược (Quản Lý - Tại Sao? Thế Nào?', 18000, NULL, N'Khả năng hoạch định dài hạn đồng thời tối ưu hóa tình hình hoạt động ngắn hạn là một yêu cầu bắt buộc phải có đối với các nhà quản lý.Tư Duy Chiến Lược sẽ giúp bạn vạch ra con đường đến thành công đồng thời giúp hình thành các kỹ năng phân tích và hoạch định theo nhóm. Tất cả các lĩnh vực then chốt để hình thành và thực thi một chiến lược đều được trình bày cặn kẽ trong cuốn sách này, từ việc nghiên cứu và thu thập thông tin nền tảng, hình thành một chiến lược mới đến việc xem xét và ứng dụng chiến lược ấy. Cả thảy có 101 chỉ dẫn nhằm cung cấp cho các bạn những lời khuyên thực tiễn hơn, đồng thời bài tập tự đánh giá sẽ giúp bạn xác định xem mình là một nhà tư duy chiến lược hiệu quả đến mức nào. Khi bạn có nhiều tham vọng hơn về việc hoạch định cho tương lai, cẩm nang này sẽ là quyển sách tham khảo không thể thiếu, giúp suy nghĩ của bạn đi đúng hướng.Xin trân trọng giới thiệu cuốn sách cùng bạn. ', N'~/hinhdulieu/KT0001.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 23, 0, N'Ks.Phan Tấn Tài', N'5', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'11', N'Quản Lý Dự Án (Quản Lý - Tại Sao? Thế Nào?) ', 61000, N'cuốn', N'Để thành công trong môi trường kinh doanh cạnh tranh hiện nay, các giám đốc dự án phải đạt được kết quả trong phạm thời gian và ngân sách đưa ra. Biết cách áp dụng các quy trình, phương pháp và kỹ thuật chỉ dẫn trong cuốn Quản Lý Dự Án này, bạn sẽ tăng tối đa khả năng thực hiện công việc và đảm bảo đạt kết quả tối ưu khi thực hiện dự án.
Được thiết kế phù hợp với tất cả các nhà quản lý ở đủ mọi trình độ, cẩm nang này sẽ trang bị cho bạn những kiến thức cần thiết trong việc quản lý mọi dự án, dù lớn hay nhỏ, để đạt đến thành công. Từ việc khởi xướng một dự án, thúc đẩy, phát triển nhóm dự án đến việc vượt qua những khó khăn, trở ngại; mỗi một khía cạnh của quản lý dự án chuyện nghiệp đều được trình bày một cách rõ nét. Cẩm nang bao gồm các hướng dẫn từng bước về hoạch định dự án và 101 mẹo vặt cung cấp cho bạn những lời khuyên thực tế. 
', N'~/hinhdulieu/KT0002.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 55, 0, N'Trần Thanh Minh', N'9', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'12', N'Điều Chỉnh Một Số Chính Sách Kinh Tế Ở Trung Quốc (Giai Đoạn 1992 - 2010)', 21000, N'cuốn', N'Cuốn sách này tập trung vào một số nội dung chính sau đây:

Tìm hiểu về những nhân tố đòi hỏi Trung Quốc phải điều chỉnh chính sách kinh tế.

Tìm hiểu về những nội dung chính trong điều chỉnh kinh tế ở Trung Quốc giai đoạn từ năm 1992 - 2010.

Tìm hiểu về tác động của việc điều chỉnh chính sách kinh tế của Trung Quốc đối với thế giới và khu vực trong đó có Việt Nam, sau đó rút tỉa một số kinh nghiệm của Trung Quốc trong quá trình điều chỉnh chính sách kinh tế mà Việt Nam có thể tham khảo.
Tập thể tác giả tham gia công trình này đều là những người chuyên nghiên cứu về Trung Quốc, hy vọng sẽ đem lại cho các bạn nhiều thông tin bổ ích.', N'~/hinhdulieu/TH006.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 77, 0, N'Hứa Minh Nguyệt', N'9', N'7')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'13', N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh', 85000, N'cuốn', N'30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh là một cuốn sách bài tập dành cho những học sinh/sinh viên nghiêm túc quan tâm đến tầm quan trọng của việc nâng cao những yếu tố kỹ thuật cho kỹ năng viết của mình. Rèn luyện để viết cho tốt chẳng khác gì tự trang bị cho mình một sức mạnh cần thiết để thành công - khi đi học cũng như khi ra ngoài xã hội. Trui rèn được một trình độ viết “cứng” không hề là chuyện bỗng nhiên trời cho mà có được; đó phải là kết quả của một quá trình phấn đấu bền bỉ và rèn luyện chăm chỉ.

Đặc nét của sách này là sử dụng cách tiếp cận những kỹ thuật kết hợp câu cơ bản, có nghĩa là, sách không chỉ quan tâm đến việc tránh những sai lỗi, mà còn đặt mục tiêu tạo dựng được những câu hay, linh hoạt, và thể hiện một phong cách riêng. Cạnh đó, sách còn có những điểm đáng lưu ý như: 

- Bàn thảo rõ ràng về những qui tắc và kỹ thuật giúp viết tốt.

- Giải thích súc tích, hạn chế dùng những thuật ngữ ngữ pháp.

- Lương bài tập phong phú, đa dạng, từ những câu hỏi điền vào chỗ trống với mục đích xác định các từ loại cho đến những câu hỏi kết hợp những câu ngắn thành những câu văn dài hơn, ý tứ “duyên” hơn.

- Đáp án cuối sách nhằm giúp học sinh/sinh viên học và nghiên cứu nhanh chậm theo trình độ và ý thích của mình, đồng thời kiểm tra được bài làm trong quá trình học tập.

Học sinh/sinh viên tiếp thu tốt nhất khi họ tham gia tích cực và quá trình học. Họ rất thích những bài tập nào rèn cho họ được những kỹ năng viết họ cần đồng thời có giá trị thông tin nào đó hoặc vui vui. Đó chính là lý do cuốn sách này sử dụng đủ loại chủ đề thú vị trong các bài tập. Cũng vì lý do tương tự, sách có phần trình bày và giảng giải rất ngắn gọn những đưa ra rất nhiều những ví dụ và minh họa mở rộng.

Sử dụng cuốn 30 phút mỗi ngày để luyện kỹ năng viết câu tiếng Anh này sẽ giúp học sinh/sinh viên viết “có nghề” và tự tin hơn".', N'~/hinhdulieu/TiengAnh01.jpg', CAST(N'2012-04-10T00:00:00' AS SmallDateTime), 12, 0, N'Phan Thị Lệ Thu', N'1', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'14', N'Tin Học Ứng Dụng: Thành Thạo Oracle 9i - Quản Trị Cơ Sở Dữ Liệu (Tập 1) ', 21000, N'cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn. ', N'~/hinhdulieu/TH007.jpg', CAST(N'2012-04-10T00:00:00' AS SmallDateTime), 4, 0, N'Ks.Phan Tấn Tài', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'15', N'Mạng Máy Tính Và Hệ Thống Bảo Mật ', 33333, N'cuốn', N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu. 
', N'~/hinhdulieu/130318.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 5, 0, N'Hòang Lê Duyên', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'16', N'Thủ Thuật Lập Trình Visual Basic 6 ', 40000, N'cuốn', N'Mục Lục:
Chương 1: Multimedia.
Chương 2: String.
Chương 3: Form.
Chương 4:Windows Control.
Chương 5: Common Control.
Chương 6: System.
Chương 7: Disk - File.
Chương 8: Graphics.
Chương 9: Internet.
Chương 10: Microsoft Office.
Chương 11: Database.
Chương 12: Clipboard.
Chương 13: Các vấn đề khác.
Phụ lục A: Giới thiệu một số ActiveX Control.
Phụ lục B: Một số tiện ích hỗ trợ lập trình Win32 API.
Phụ lục C: Một số vấn đề về đóng gói phần mềm.
Phụ lục D: Giới thiệu một số Website về Visual Basic.
Trân trọng giới thiệu. 
', N'~/hinhdulieu/KT0003.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 6, 0, N'Ks.Phan Tấn Tài', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'17', N'Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên) ', 16800, N'cuốn', N'Chào mừng đến với "Lập Trình Mạng Trên Windows (Ấn bản dành cho sinh viên)". Quyển sách này sẽ hướng dẫn bạn sử dụng một cách hiệu quả bao gồm một số lượng lớn và đa dạng các hàm mạng sẵn có trong Windows 95, Windows 98, Windows NT 4, Windows CE, và Windows 2000/XP/. NET. Sách được chủ định viết dành cho những lập trình viên từ trung cấp đến cao cấp, tuy nhiên những lập trình viên mới bắt đầu tìm hiểu lập trình mạng cũng sẽ nhận thấy đây là một quyển sách không thể thiếu cho các bước xây dựng ứng dụng mạng sau này.
', N'~/hinhdulieu/Kt.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 7, 0, N'Nguyễn Đức Long', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'18', N'Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu ', 25000, N'cuốn', N'"Căn Bản Về Photoshop CS Tinh Chỉnh Và Xử Lý Màu" gồm 12 chương:
Chương 1: Những điểm cơ bản.
Chương 2: Màu Photoshop.
Chương 3: Các tác vụ xử lý ảnh căn bản.
Chương 4: Các điểm cơ bản về pixel.
Chương 5: Các điểm cơ bản về lớp.
Chương 6: Làm việc với các công cụ chọn.
Chương 7: Ghép ảnh.
Chương 8: Làm việc với các palette History.
Chương 9: Các kỹ thuật điều chỉnh hình ảnh.
Chương 10: Chọn các màu.
Chương 11: Tô màu lại.
Chương 12: Làm việc với các công cụ tô vẽ.
Xin trân trọng giới thiệu. ', N'~/hinhdulieu/Gt_Thcb.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 8, 0, N'Phan Hồng Phúc', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'19', N' Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)   ', 16800, N'cuốn', N'"Hướng Dẫn Sử Dụng Norton AntiVirus 2004 (Hướng dẫn bằng hình)" bao gồm 6 phần, 23 chương:
Phần I: Bắt đầu với Norton AntiVirus 2004.
Chương 1: Bắt đầu với Norton AntiVirus 2004.
Chương 2: Cài đặt Norton System Works Professional.
Chương 3: Các điểm cơ bản về Norton AntiVirus 2004.
Chương 4: Các tùy chọn trong Norton SystemWorks.
Chương 5: Cải tiến sự trình duyệt Web và phục hồi đĩa cứng.
Chương 6: Duy trì tính bảo mật password và cập nhật với LiveUpdate.
Phần II: Làm việc với Norton AntiVirus 2004.
Chương 7: Bảo vệ đĩa, file và dữ liệu để tránh bị nhiễm Virus.
Chương 8: Những điều cần làm nếu phát hiện virus.
', N'~/hinhdulieu/TH002.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 9, 0, N'Nguyễn Đức Long', N'5', N'2')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'2', N'Giáo trình Tin học văn phòng', 12000, N'cuốn', N'Cuốn sách này gồm 3 phần sau:
Phần 1: Xử lý văn bản trong Microsoft Office Word 2007. 
Phần 2: Xử lý bảng tính trong Microsoft Office Excel 2007. 
Phần 3: Quản lý cơ sở dữ liệu trong Microsoft Office Access 2007.
Xin trân trọng giới thiệu cùng các bạn.', N'~/hinhdulieu/TH004.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 25, 0, N'Nguyễn Hữu Nhân', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'20', N'Tin Học Văn Phòng - Microsoft Excel 2000 (Tái Bản Lần Thứ Nhất)    ', 16800, N'cuốn', N'Cuốn sách này gồm những nội dung chính sau:
Chương 1: Giới thiệu
Chương 2: Soạn thảo văn bản
Chương 3: Trình bày Font chữ
Chương 4: Trình bày Paragraph
Chương 5: Trình bày trang in
Chương 6: Bảng biểu - Table
Chương 7: Cột chữ - Column
Chương 8: Hình vẽ
Chương 9: Microsoft Equation
Chương 10: Trình bày văn bản nhanh
Chương 11: Bài tập mẫu
Xin trân trọng giới thiệu. 
', N'~/hinhdulieu/TH003.jpg', CAST(N'2012-04-27T00:00:00' AS SmallDateTime), 78, 0, N'Ks.Phan Tấn Tài', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'21', N'Vẽ Mô Hình 3D Trong Autocad 2010', 86000, N'cuốn', N'Qua cuốn sách "Vẽ mô hình 3D trong Autocad 2010", bạn sẽ được hướng dẫn thực hành từng bước để nắm vững chương trình Autocad 2010 trong lĩnh vực 3D.

Sách gồm 6 chương với các nội dung sau:
+  Sử dụng các tính năng 3D cao cấp
+  Kết xuất các bản vẽ 3D
+  Chỉnh sửa các mô hình 3D
+  Khai thác các tính năng tạo mô hình 3D
+  Quản lý và chia sẻ các bản vẽ', N'~/Hinhdulieu/AutoCad-2010.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 56, 0, N'Lâm Văn Hùng', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'22', N'365 Ngày Yêu', 45000, N'cuốn', N'Câu chuyện tình yêu giữa cô gái lưu học sinh Việt Nam với chàng trai da màu cùng trường ở thành phố New York, Mỹ. Nhiều tình huống bi hài đã xảy ra vì sự khác biệt văn hóa, đặc biệt vì chàng trai là người da màu nên cô gái chịu không ít sức ép bởi sự kỳ thị chủng tộc văn hóa vẫn còn tồn tại ở thành phố văn minh tiên tiến bậc nhất thế giới này. Bất chấp sự khác biệt về sắc tộc và văn hóa, chàng trai và cô gái vẫn yêu nhau mãnh liệt và nhận ra rằng họ không thể sống thiếu nhau, dù ban đầu cả hai xác định chỉ yêu nhau trong ba trăm sáu lăm ngày - khi cô gái kết thúc khóa học trở về nước. Xen vào câu chuyện tình yêu của hai nhân vật chính là những mô tả sống động về cuộc sống của giới sinh viên Mỹ nói chung và của lưu học sinh Việt Nam tại New York nói riêng. Thêm vào đó là những trang đặc tả vẻ đẹp của thiên nhiên và thành phố New York, về các nét văn hóa độc đáo của nước Mỹ thể hiện qua các dịp lễ hội... Mời các bạn đón đọc!', N'~/Hinhdulieu/365ngayye.jpg', CAST(N'2012-05-02T00:00:00' AS SmallDateTime), 22, 0, N'Trương Bá Chi', N'4', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'24', N'Nghệ Thuật Nấu Ăn - 99 Thực Đơn Làm Đẹp', 23232, N'cuốn', N'Đẹp và sở hữu một sắc đẹp bền lâu là mong muốn của bất cứ ai, đặc biệt là đối với phái nữ. Nhưng không phải ai cũng có đủ thời gian, tiền bạc để chăm sóc, giữ gìn dung nhan của mình tại các Spa sang trọng hay bằng các sản phẩm làm đẹp đắt tiền.

"99 thực đơn làm đẹp" sẽ hướng dẫn cho bạn những bí quyết làm đẹp đơn giản, dễ dàng mà lại vô cùng hiệu quả. Những thực đơn trong cuốn sách này rất gần gũi, quen thuộc với bạn, và chỉ mất rất ít thời gian, bạn sẽ nhận thấy hiệu quả rõ rệt đối với cơ thể, sắc đẹp của mình mà các bí quyết này mang lại.', N'~/Hinhdulieu/NauAn.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Nguyên Thảo.', N'11', N'3')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'25', N'Những Bộ Phim Trong Đời Tôi', 16000, N'cuốn', N'trắng đen đến màu, từ phim nhựa đến băng từ,...đã tận dụng tối đa sự phát triển kỹ thuật, kỹ xảo điện ảnh để chắp cánh cho công cuộc sáng tạo nghệ thuật. Song điều đáng nói hơn tất cả là con người đã dùng điện ảnh như một phương tiện để tư duy, một cách thế để giao lưu , hiệp thông với đồng loại, con đường tra vấn bản chất của hiện hữu. Để chứng minh sự hiện hữu của mình trước cuộc đời, và cũng không chỉ để chứng minh mà còn thể hiện trách nhiệm làm người của mình trước cuộc đời đó.

Qua việc giới thiệu các bộ phim, đối với bản thân chúng tôi không chỉ nhằm giới thiệu với độc giả, những người muốn tiếp cận với điện ảnh, mà để học hỏi, làm giàu thêm kiến thức nghề nghiệp vốn ít ỏi của mình.

Những bộ phim trong đời tôi này gồm những bài phân tích phê bình được chúng tôi tuyển chọn và hiệu đính lại, gồm những bộ phim như:

Công dân Kane,1941 của Orson Welles

Kẻ cắp xe đạp,1948 của Vittorio de Sica

Anh hùng, 2001 của Trương Nghệ Mưu

Trung Đội, 1986 của Oliver Stone', N'~/Hinhdulieu/nhungbophim.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Phạm Văn Phương', N'7', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'26', N'Cẩm Nang Du Lịch - Đà Nẵng Hội An Mỹ Sơn Nơi Ước Hẹn', 38000, N'cuốn', N'Tại sao Đà nẵng là nơi hứa hẹn?

Vị trí của thành phố Đà nẵng trên địa hình đất nước Việt Nam và truyền thống văn hóa, lịch sử, kể cả tiềm năng du lịch ngày nay đã khiến người viết cuốn sách bé nhỏ này suy nghĩ mất khá nhiều ngày để tìm cho ra một hai chữ ngắn gọn thích hợp.

Thiên nhiên thời tiết cùng với nhịp sống con người từ hơn 500 năm qua đã tạo được một quần thể hấp dẫn lạ thường. Đà Nẵng là một thành phố lớn đang tăng trưởng nhiều mặt. Về mặt văn hóa, kinh tế du lịch Đà Nẵng là một trung tâm chuyển tiếp, giao thoa của các tuyến luồng trọng yếu Bắc Nam. Đà Nẵng đã từng gắn liền với Quãng Nam, tạo thành vùng đất Quãng - Đà có lắm điều hấp dẫn, kỳ thú trong dân gian, là nơi ước hẹn của nhiều tầng lớp người trong suốt chiều dài lịch sử, và nhất là trong quá trình năm thế kỷ hình thành.

Mục lục

Số liệu về hành chính thành phố Đà Nẵng

1. Thành phố vươn lên

2. Những địa chỉ vàng

3. Những tiềm năng ẩn dấu

4. Các món ăn

5. Cần biết', N'~/Hinhdulieu/dulichdanang.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Phạm Côn Sơn.', N'11', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'27', N'Nghệ Thuật Chơi Và Nuôi Gà Chọi', 38000, N'cuốn', N'Đã là gà chọi, thì con nào cũng biết chọi. Nhưng không phải con gà chọi nào cũng là gà chọi hay. Do đó, đòi hỏi người chơi phải trải qua một quá trình nuôi dưỡng hết sức công phu, đồng thời không ngừng học hỏi kinh nghiệm từ những người khác. Con gà hay, trước hết phải có thân hình cân đối, mạnh mẽ, cặp giò không lòi chòi lạng quạng, cần phải có bộ xương ngắn, mỗi khi sờ tới gà thụt cổ vào dễ dàng, mỏ gà phải nhỏ, miệng phải sâu, như vậy nó mới lanh lẹ khi mổ địch thủ, chân phải lùn, gà mới có những cái đá chắc và mạnh, long gà phải cứng, để nó có sức chịu đựng khi giao phong. Muốn vậy, việc chọn giống gà, gây giống, xem tướng gà, nuôi dưỡng, huấn luyện thi đấu được người chơi hết mực quan tâm.

Nhằm giúp bạn đọc trau dồi thêm những hiểu biết về thú vui này, chúng tôi đã tổng hợp và biên soạn cuốn sách "Nghệ thuật chơi và nuôi gà chọi". Những kiến thức trong cuốn sách này hết sức thiết thực được sưu tầm và tuyển chọn từ nhiều nguồn tài liệu khác nhau đã được những người chơi tâm huyết đúc kết từ xưa đến nay.', N'~/Hinhdulieu/gachoi.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Minh Minh', N'6', N'8')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'28', N'25 Thuật Đắc Nhân Tâm (Sách Bỏ Túi)', 40500, N'cuốn', N'Hãy là người mà ai cũng muốn đi theo!

25 thủ thuật đắc nhân tâm bí quyết chinh phục lòng người của không chỉ các nhà lãnh đạo mà còn là của chính bạn!

Có rất nhiều cách để thành công trong cuộc sống, kinh doanh và các mối quan hệ. Nhưng một yếu tố không thể thiếu là khả năng chinh phục lòng người. Chúng ta ai cũng muốn nhận được thật nhiều sự ủng hộ, kết giao được nhiều bạn bè, xây dựng được nhiều mối quan hệ tốt đẹp, nhưng không phải ai cũng làm được điều đó.

Là tập hợp những kinh nghiệm quý báu trong hàng chục năm nghiên cứu và giảng dạy về nghệ thuật sống của hai tác giả John C. Maxwell và Les Parrot, 25 thuật đắc nhân tâm mang đến cho người đọc cái nhìn đơn giản nhưng thiết thực để có thể mở cánh cửa trái tim của tất cả mọi người. Qua những câu chuyện nhỏ thú vị của John C. Maxwell, cùng những phân tích tâm lý sâu sắc của Les Parrot, cuốn sách cung cấp cho bạn 25 bí quyết để trở thành "viên nam châm" với bất cứ ai gặp bạn, như:

Nhìn ra những ý định tốt đẹp trong mỗi con người

Xây đắp những kỷ niệm và thường xuyên gợi nhớ lại chúng

Làm cho mọi người những việc họ không thể tự làm

Chia sẻ bí mật cùng ai đó

Hãy đọc kỹ từng bí quyết, thực hành chúng và bắt đầu hành trình khai mở tâm hồn đầy sức cuốn hút của chính bạn!', N'~/Hinhdulieu/dacnhantam.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'John C. Maxwell', N'11', N'3')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'29', N'Hạt Giống Tâm Hồn - Biển Cả & Giá Trị Cuộc Sống - Những Bài Học Từ Biển Sẽ Giúp Ích Cho Cuộc Sống Củ', 49500, N'cuốn', N'Bằng nguồn cảm hứng vô tận từ biển cả bao la, với những trải nghiệm sâu sắc của một thời trai trẻ lênh đênh trên sóng nước cùng sự nhạy bén, tinh tế trong cảm nhận những quy luật của thiên nhiên, tác giả Richard Bode đã xuất sắc chuyển tải đến mọi tầng lớp độc giả trên khắp thế giới một vùng ký ức tuổi thơ tràn đầy yêu thương, hy vọng, một chặng đường thanh xuân với những đam mê, hoài bão qua tác phẩm Biển cả và những giá trị cuộc sống.

Với cậu bé nhân vật chính trong tác phẩm này, biển cả chính là cuộc sống của cậu - một cuộc sống với gió, nước, thủy triều, những chú nhạn biển, những con sóng mặn mòi... Cuộc sống ấy là sự hòa hợp, là hiện thân của sóng gió, bão bùng, của cả những gì êm dịu, hứng khởi, của những bí ẩn và thử thách cuộc đời đang chờ đợi cậu khám phá ra được nhiều điều vô giá cho cuộc sống của mình.

Qua từng trang sách cuốn hút của Biển cả và những giá trị cuộc sống, chúng ta sẽ tìm thấy những bài học bổ ích về cuộc sống, về cách nuôi dưỡng ước mơ cũng như lựa chọn hướng đi trong cuộc đời.

Mục lục:
Bài ca người thuỷ thủ
Bài học đầu tiên
Gió sẽ nâng ước mơ tuổi thơ
Hãy lắng nghe, gió sẽ chỉ hướng cho bạn
Khoảng cách giữa hai điểm là một đường zic-zắc
Thoát khỏi xiềng xích
Biết tìm chiều gió
Sau bão tố biển sẽ bình yên
Sáng suốt phán đoán
Vượt qua sương mù', N'~/Hinhdulieu/biencavagiatricuocsong.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Richard Bode', N'11', N'2')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'3', N'Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0', 11500, N'cuốn', N'Cuốn sách "Lập Trình Cơ Sở Dữ Liệu Với Visual Basic 2005 Và ADO.NET 2.0" này giới thiệu các nội dung sau:
Chương 1: Căn bản về cơ sở dữ liệu.
Chương 2: Các bộ kết nối và tương tác dữ liệu.
Chương 3: Bộ chứa dữ liệu DataSet.
Chương 4: Bộ điều hợp dữ liệu DataAdapter.
Chương 5: Sử dụng các điều khiển ràng buộc dữ liệu.
Chương 6: Tạo báo cáo với Crystal Report.
Chương 7: ADO.NET và XML.
Xin trân trọng giới thiệu cùng các bạn.', N'~/hinhdulieu/KT0009.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 25, 0, N'Ks.Phan Tấn Tài', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'30', N'Giáo Trình Tính Toán Truyền Động Và Kiểm Nghiệm Độ Bền Của Một Số Cụm Chuyển Động - Dùng Cho Trình Đ', 50000, N'cuốn', N'Mục lục:

Giới thiệu về mô đun

Thiết kế truyền động đai

Thiết kế bộ truyền động xích

Thiết kế truyền động bánh răng

Thiết kế truyền động bánh vít

Thiết kế trục và tính then

Thiết kế gối đỡ trục', N'~/Hinhdulieu/tinhtoanchuyendong.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Lâm Thanh Hà', N'10', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'32', N'Tư Vấn Hướng Nghiệp - Trọn Bộ 2 Cuốn', 40000, N'cuốn', N'Sách cung cấp cho bạn những thông tin phong phú, đa diện, sâu sắc và xác đáng về định hướng nghề nghiệp thông qua những câu hỏi đáp do tác giả Quang Dương - nguyên chủ nhiện Ban Tâm lý học, Viện nghiên cứu Giáo dục Đào tạo phía Nam biên soạn, tổng hợp. Sách gồm hai phần: hỏi đáp tư vấn theo chủ đề và hỏi đáp tư vấn chung, giúp bạn có những hình dung nhất định về một số ngành nghề và những kỹ năng cũng như tố chất cần có khi bạn lựa chọn những ngành nghề đó. 

Ngoài ra sách còn có phần bài test EQ giúp bạn tìm hiểu rõ về bản thân mình để tự trang bị những kỹ năng cần thiết khi quyết định chọn nghề.

Sách dành cho học sinh phổ thông và các bậc phụ huynh để giúp con hướng nghiệp.', N'~/Hinhdulieu/tuvanhuongnghiep.jpg', CAST(N'2012-04-27T00:00:00' AS SmallDateTime), 0, 0, N'Quang Dương', N'10', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'33', N'Giáo Trình Nghề Hàn (Dùng Cho Trình Độ Cao Đẳng Nghề) - Tập 3', 68000, N'cuốn', N'sự nghiệp công nghiệp hóa - hiện đại hóa đất nước. Việc biên soạn tài liệu chuyên môn nhằm đáp ứng nhu cầu về tài liệu cho học sinh, tài liệu tham khảo cho giáo viên, tạo tiếng nói chung trong quá trình đào tạo, phù hợp với tiêu chuẩn Quốc tế và đáp ứng yêu cầu sản xuất thực tế là một điều cấp thiết.

Mục lục: 

MĐ26 - Tổ chức quản lý sản xuất

MĐ27 - Hàn ống chất lượng cao

MĐ28 - Quy trình hàn

MĐ29 - Kiểm tra chất lượng mối hàn

MĐ30- Tính toán kết cấu hàn

MĐ40 - Cắt kim loại tấm bằng Ô-xy khí cháy, hồ quang Plasma trên máy cắt CNC', N'~/Hinhdulieu/hoctienghan.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 0, 0, N'Phạm Văn Phương', N'10', N'7')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'34', N'Giáo Dục Giá Trị Nghề Nghiệp Cho Sinh Viên Các Chuyên Ngành - Thuộc Lĩnh Vực Văn Hóa Thông Tin', 47000, N'cuốn', N'sở đó họ được cống hiến, được phục vụ XH và thỏa mãn các nhu cầu vật chất, tinh thần của chính bản thân mình. Nhưng trong thực tế người ta đã chọn nghề, tuy nhiên điều chung nhất được xem là triết lý nghề nghiệp cho mọi thời đại là: “làm nghề thì phải yêu nghề”.

Cuốn sách gồm ba chương, phần kết luận, kiến nghị và các phụ lục:

Chương 1: Nghề nghiệp văn hóa – thông tin và những giá trị  của nghề nghiệp văn hóa – thông tin.

Chương 2: Thực trạng giáo dục giá trị nghề nghiệp cho sinh viên các chuyên ngành thuộc lĩnh vực văn hóa – thông tin tại các trường ĐH-CĐ hiện nay

Chương 3: Một số giải pháp nâng cao chất lượng giáo dục giá trị nghề nghiệp cho sinh viên các ngành thuộc lĩnh vực văn hóa – thông tin.', N'~/Hinhdulieu/giaoducgiatringhenghiep.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 0, 0, N'Đỗ Ngọc Anh', N'10', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'35', N'Hạ Tầng Đô Thị Sài Gòn Buổi Đầu', 70000, N'cuốn', N'Trong thời Pháp thuộc, Sài Gòn là một trường hợp điển hình của quá trình hình thành đô thị kiểu mới ở Việt Nam, đi kèm theo đó là phương thức quy hoạch và tổ chức đời sống đô thị theo kiểu duy lý và hiện đại.

Cuốn sách này trình bày một bức tranh khái lược về quá trình hình thành cơ sở hạ tầng đô thị của thành phố Sài Gòn vào hậu bán thế kỷ XIX và đầu thế kỷ XX.

Mời bạn đón đọc.', N'~/Hinhdulieu/hatangsaigon.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'Trần Hữu Quang', N'8', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'36', N'Chất Lượng Giáo Dục Đại Học Nhìn Từ Góc Độ Hội Nhập', 80000, N'cuốn', N'Trong thời Pháp thuộc, Sài Gòn là một trường hợp điển hình của quá trình hình thành đô thị kiểu mới ở Việt Nam, đi kèm theo đó là phương thức quy hoạch và tổ chức đời sống đô thị theo kiểu duy lý và hiện đại.

Cuốn sách này trình bày một bức tranh khái lược về quá trình hình thành cơ sở hạ tầng đô thị của thành phố Sài Gòn vào hậu bán thế kỷ XIX và đầu thế kỷ XX.

Mời bạn đón đọc.', N'~/Hinhdulieu/chatluonggiaoducdaihoc.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Văn Tuấn', N'10', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'37', N'Văn Hóa Khảo Cổ Huyện Cần Giờ Thành Phố Hồ Chí Minh', 41000, N'cuốn', N'Chuyên khảo Văn hóa khảo cổ huyện Cần Giờ - TP.Hồ Chí Minh giúp người đọc thêm hiểu biết về một loại hình di sản văn hóa độc đáo của Cần Giờ nói riêng và TP.Hồ Chí Minh - Nam Bộ nói chung. Cái mới của chuyên khảo này là đã có một phần nội dung dành cho những đề xuất và giải pháp thiết thực nhằm bảo tồn và phát huy giá trị văn hóa khảo cổ Cần Giờ trong quá trình đô thị hóa hiện nay. (PGS.TS. Nguyễn Trọng Hòa - Viện trưởng Viện nghiên cứu Phát triển TP.HCM)', N'~/Hinhdulieu/vanhoakhaoco.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'TS. Nguyễn Thị Hậu', N'8', N'6')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'38', N'Việt Nam tổng kết một chiến thắng', 41000, N'cuốn', N'Giới thiệu sách :Việt Nam tổng kết một chiến thắng hay để hiểu hơn về Việt Nam tập hợp những bài trả lời phỏng vấn, trích một vài bức thư và bổ sung thêm lời tự sự của Nguyễn Khắc Viện với tư cách là chủ nhiệm tạp chí Nghiên cứu Việt Nam (Etudes Vietnamiennes). Đây là tờ tạp chí hàng đầu (về chất lượng) trên lĩnh vực tuyên truyền đối ngoại của nước ta khi đó.

Việt Nam tổng kết một chiến thắng hay để hiểu hơn về Việt Nam ghi lại cuộc phỏng vấn Nguyễn Khắc Viện vào hai thời điểm là năm 1973, khi Hiệp định Paris vừa được ký kết và năm 1975, khi cuộc kháng chiến thống nhất đất nước vừa hoàn thành.

Sau giây phút vui mừng chiến thắng, dân tộc ta lại trải qua những thử thách có thể nói là khó khăn nhất trong lịch sử cách mạng Việt Nam. Những hậu quả chiến tranh cũ chưa kịp khắc phục thì cuộc chiến tranh biên giới lại bùng nổ cả ở hai đầu đất nước. Trong khi kẻ thù cũ vẫn giữ sự thù địch và cấm vận thì đồng minh cũ đã trở thành kẻ thù mới đầy hiểm ác. Ngay cả nhiều bạn bè từng ủng hộ Việt Nam chống xâm lược Mỹ thì nay cũng nghĩ Việt Nam đã thay lòng đổi dạ, nhất là sau vụ ta buộc phải sang Campuchia đánh vào tận sào huyệt của tập đoàn diệt chủng Pol Pot. Nền kinh tế lúc này lại "đang rơi theo chiều thẳng đứng" như đánh giá của một nhà lãnh đạo đương thời...

Cuốn sách không bao giờ lỗi thời bởi lẽ, Nguyễn Khắc Viện vừa có cái nhạy bén của một nhà báo, lại có cả cái sâu sắc của một nhà sử học và cộng thêm trách nhiệm của một "nhà tuyên giáo". Vì thế, tuy cuốn sách đã được xuất bản cách đây một phần tư thế kỷ (1983) nhưng vẫn rất hữu ích cho độc giả hôm nay, nhất là các bạn trẻ Việt Nam. Đồng thời, cuốn sách cũng là tư liệu lịch sử để thế giới hiểu bản chất vấn đề sau một thập kỷ đầy biến động kể từ sau chiến thắng giải phóng dân tộc, để hiểu hơn về Việt Nam trên con đường phát triển.', N'~/Hinhdulieu/vietnamtongketmotchienthang.jpg', CAST(N'2012-05-02T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Khắc Viện', N'8', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'39', N'Do Thái Trí Tuệ Toàn Thư - Phá Giải Trí Tuệ Ngàn Năm Của Một Dân Tộc Giàu Có Nhất Trên Thế Giới', 60000, N'cuốn', N'Cuốn tiểu thuyết hơn 400 trang không phải quá dài nhưng dung lượng thông tin nén trong đó rất nhiều. Đó còn là xúc cảm - một thứ xúc cảm đầy suy xét, vượt xa cái cách thức “xây để chống” hay nói gần nói xa. Tác phẩm là sự trải nghiệm của một người sống sâu sắc đã “tích góp” lại để tặng cho người đọc. Đọc "Giã từ" chắc chắn người đọc nào còn “ngây thơ” sẽ “giã từ” sự ngây ngô ở tuổi trưởng thành của mình.', N'~/Hinhdulieu/dothaitrituetoanthu.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'Long Ngô', N'7', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'4', N'Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web', 20000, N'cuốn', N'"Visual Basic 2005 Tập 3, Quyển 2: Lập Trình Web Với Cơ Sở Dữ Liệu" sẽ cung cấp kỹ thuật và hướng dẫn bạn:
Tự học xây dựng ứng dụng Web quản lý CSDL toàn diện với ADO.NET 2.0 và ASP.NET. 
Khai thác các đối tượng và nguồn dữ liệu dành cho WebForm. 
Sử dụng các điều khiển dữ liệu đặc thù dành riêng cho ASP.NET và Web. 
Làm quen với những khái niệm xử lý dữ liệu hoàn toàn mới. 
Ràng buộc dữ liệu với các thành phần giao diện Web Forms. 
Thiết kế ứng dụng Web "Quản lý CD Shop" trực quan và thực tế. 
Cung cấp một kiến thức hoàn chỉnh về Web cho các bạn yêu thích ngôn ngữ Visual Basic và .NET Framework.
Sách có kèm theo CD-ROM bài tập.
Xin trân trọng giới thiệu cùng các bạn.', N'~/hinhdulieu/LTWeb2005.jpg', CAST(N'2012-04-02T00:00:00' AS SmallDateTime), 40, 0, N'Ts.Lê Bảo Ngọc', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'40', N'Lucky Luke 49 - Tứ Quái Dalton Hết Bệnh', 30000, N'cuốn', N'Nhân vật trung tâm của loạt truyện là Lucky Luke - chàng cao bồi không bao giờ biết sợ, luôn khoác chiếc áo ghi-lê đen, sơ mi vàng và cổ đeo chiếc khăn màu đỏ, làm bạn cùng chú ngựa Jolly Jumper đặc biệt. Đó là người anh hùng hào phóng và dũng cảm, người bắn nhanh hơn cả cái bóng của mình. Các tập truyện luôn kết thúc bằng một hình ảnh đã trở thành bất hủ trong lịch sử truyện tranh: "gã cao bồi nghèo đơn độc" rong ruổi trên con ngựa của mình vào buổi hoàng hôn, sau khi đánh bại những kẻ xấu.', N'~/Hinhdulieu/Luky-Luke.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'Morris & Goscinny', N'16', N'3')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'41', N'Tủ sách Thế giới động vật', 34000, N'cuốn', N'Tủ sách thế giới động vật gồm có 12 cuốn là những hình ảnh sống động, chân thực cung cấp cho bạn vô vàn những thông tin bổ ích và thú vị. Với bộ sách này, bạn sẽ được biết đến thế giới tự nhiên vô cùng đa dạng và độc đáo, từ các loài động vật khổng lồ như khủng long, gấu, cá voi xanh...cho tới những sinh vật bé nhỏ như: mối, rận "sát thủ", ong, muỗi... Bạn cũng sẽ được chu du từ những cánh rừng bạt ngàn, hoang dã nơi những con lợn lòi, những con nai sừng tấm hay chồn Mác - tét... sinh sống cho tới thế giới đại dương bao la có những con cá mập phàm ăn, những con chú cá heo đáng yêu và vô vàn các sinh vật phong phú khác. Đặc biệt, bạn có thể ngược dòng thời gian quay trở lại hàng triệu năm trước để quan sát nhiều loài khủng long khác nhau hay tìm thấy không ít điều thú vị ngay trong chính các con vật nuôi ở gia đình mình.', N'~/Hinhdulieu/Tu_sach_the_gioi_dong_vat.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 0, 0, N'Fleurus', N'16', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'42', N'NHỮNG CUỐN SÁCH ĐI CÙNG TUỔI THƠ', 30000, N'cuốn', N'Từ mong muốn hữu hạn tạo ra một sân chơi bổ ích trong dịp hè cho các em học sinh lứa tuổi phổ thông, hướng tới mục tiêu vô hạn là khuyến khích các em ham mê đọc sách, cổ vũ và tôn vinh văn hóa đọc, báo Phụ nữ Thủ đô tổ chức cuộc thi “Viết về cuốn sách yêu thích của em” và đã nhận được sự hưởng ứng nồng nhiệt của các cây bút nhỏ tuổi.

NHỮNG CUỐN SÁCH ĐI CÙNG TUỔI THƠ tập hợp và giới thiệu 35 bài viết vào chung khảo của cuộc thi, phản ánh 35 vẻ đẹp tâm hồn trong trẻo của các em. Thông qua cuộc thi này, qua những bài viết của các em chúng ta cảm thấy thật vui vì bên cạnh những phương tiện giải trí hiện đại, các bạn nhỏ, các em học sinh vẫn dành một tình yêu, một niềm say mê thật sự với sách, với văn hóa đọc tưởng chừng như đã bị mài mòn theo sự phát triển của công nghệ, của thời đại...', N'~/Hinhdulieu/toi-tre2011.jpg', CAST(N'2012-05-02T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Minh Minh', N'16', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'43', N'Cô Nhóc Tiểu Anh Đào - Tập 3: Cuộc Sống Của Minh Tinh (Phần 1)', 67000, N'cuốn', N'Truyện tranh màu Cô nhóc Tiểu Anh Đào:

Tiểu Anh Đào, cô bé hài hước ra đời vào những năm 90 của thế kỉ trước đã cùng các bạn nhỏ đồng trang lứa khác đi học và trải qua những năm tháng tuổi thơ tươi đẹp, khó quên. Hiện nay, cùng với việc phát sóng bộ phim hoạt hình Tiểu Anh Đào, Công ty văn hóa Đinh Tị đã mua bản quyền và cho xuất bản bộ sách tranh truyện về Tiểu Anh Đào theo phim hoạt hình của đài truyền hình Trung Ương Trung Quốc. Qua bộ truyện tranh hy vọng các em học được nhiều điều bổ ích từ cô nhóc Tiểu Anh Đào và sẽ có hứng thú hơn trong học tập.', N'~/Hinhdulieu/conhoctieuanhdao.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Minh Minh', N'16', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'44', N'Chính Phủ Điện Tử', 56000, N'cuốn', N'Trong xu thế hội nhập quốc tế ngày nay, vai trò của nhà Nước ngày càng trở nên quan trọng. Nhà Nước đóng vai trò quyết định trong việc hoạch định các chính sách về kinh tế, văn hóa, xã hội nhằm mục tiêu xây dựng một xã hội công bằng, văn minh và đưa kinh tế phát triển sánh ngang với các nước trong khu vực. Để các chủ trương chính sách đó đến với người dân một cách nhanh chóng hiệu quả đang là vấn đề mà mọi Chính phủ đều quan tâm.

Các nước phát triển trên thế giới đã tìm ra lời giải cho vấn đề trên - đó chính là phát triển Chính phủ điện tử. Trong tương lai, nước nào có một nên Chính phủ điện tử phát triển, nước đó sẽ có lợi thế hơn các nước khác. Tuy nhiên, ở nước ta, Chính phủ điện tử mới bắt đầu phát triển ở mức độ sơ khai và nhận thức của các công chức cũng như người dân về chính phủ điện tử rất còn hạn chế. Hiện nay các tài liệu nghiên cứu về Chính phủ điện tử ở Việt Nam cũng còn khá khiêm tốn.

Nội dung cuốn sách "Chính phủ điện tử" giới thiệu những vấn đề sau:

Chương 1: Tổng quan về Chính phủ điện tử

Chương 2: Kiến trúc của Chính phủ điện tử

Chương 3: Dịch vụ công và các giao dịch Chính phủ điện tử

Chương 4: Hệ thống thông tin trong Chính phủ 

Chương 5: Xây dựng chiến lược phát triển Chính phủ điện tử

Chương 6: Phát triển Chính phủ điện tử ở một số nước trên thế giới

Chương 7: Chính phủ điện tử ở Việt Nam

Tài liệu tham khảo', N'~/Hinhdulieu/chinhphudientu.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 0, 0, N'Phạm Văn Phương', N'7', N'2')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'45', N'Quan Hệ Việt Nam - Hoa Kỳ: Thực Trạng Và Triển Vọng', 40000, N'cuốn', N'Bước qua ranh giới thù hận, khép lại quá khứ, quan hệ Việt Nam - Hoa Kỳ đã mở ra một chương sử mới kể từ ngày 12-7-1995.

Đến nay, quan hệ ấy đã mạng lại nhiều thành tựu đáng kể về thương mại, đầu tư, giáo dục - đào tạo, khoa học - công nghệ, an ninh - quốc phòng, vấn đề nhân đạo và các vấn đề quốc tế khác; song quan hệ của hai bên cũng vẫn còn nhiều tồn tại, nhiều khác biệt về vấn đề ý thức hệ, nhân quyền, kinh tế, vấn đề giải quyết hậu quả chiến tranh...

Với nguồn tư liệu xác thực, TS. Trần Nam Tiến đã xây dựng một cách hệ thống lịch sử 10 năm bình thường hóa quan hệ Việt Nam - Hoa Kỳ (1995-2005) để bạn đọc hiểu được những thành tựu và tồn tại kể trên; đồng thời, đặt mối quan hệ trong dòng chảy lịch sử liên tục, tác giả còn phân tích triển vọng mối quan hệ ấy trong tương lai - điều mà chúng ta đang mong muốn tìm hiểu và chờ đợi.', N'~/Hinhdulieu/quanhevnvahoaky.jpg', CAST(N'2012-05-09T00:00:00' AS SmallDateTime), 0, 0, N'TS. Trần Nam Tiến', N'7', N'2')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'46', N'Chương Trình 100 Nghề Cho Nông Dân - Nghề Nuôi Cá Rô Phi Và Cá Điêu Hồng (Rô Phi Đỏ)', 63000, N'cuốn', N'Phần I: Nuôi cá rô phi
I. Một số đặc điểm sinh học cá rô phi
II. Sản xuất giống cá rô phi vằn
III. Nuôi cá rô phi thương phẩm

Phần 2: Nuôi cá điêu hồng
I. Xuất xứ của cá điêu hồng
II. Nuôi cá điêu hồng (rô phi đỏ) ở một số nước Đông Nam Á
III. Sản xuất giống cá rô phi đỏ
IV. Kỹ thuật nuôi cá rô phi đỏ
V. Phòng và trị bệnh cá rô phi và điêu hồng', N'~/Hinhdulieu/nuoicarophi.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 0, 0, N'Phạm Văn Khánh', N'6', N'8')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'47', N'Chương Trình 100 Nghề Cho Nông Dân - Nghề Nuôi Cá Thát Lát Và Cá Nàng Hai', 32000, N'cuốn', N'Phần I: Kỹ thuật nuôi cá thát lát
I. Một số đặc điểm sinh học cá thát lát
II. Kỹ thuật sản xuất giống cá thát lát
III. Kỹ thuật nuôi cá thịt

Phần II: Kỹ thuật nuôi cá nàng hai
I. Một số đặc điểm sinh học
II. Kỹ thuật sản xuất giống cá nàng hai
III. Kỹ thuật nuôi thương phẩm cá nàng hai

Phần III: Phòng trị bệnh cho cá

...', N'~/Hinhdulieu/100nghechonongdan.jpg', CAST(N'2012-04-04T00:00:00' AS SmallDateTime), 0, 0, N'Lâm Thị Mỹ Dạ', N'6', N'2')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'48', N'Kỹ Thuật Nuôi Cá Chim Trắng Nước Ngọt, Cá Rômo, Cá Dìa, Tôm Nương, Tôm Rảo, Tu Hài', 21000, N'cuốn', N'Mục lục
Nguồn gốc và phân bổ
Đặc điểm hình thái và sinh học
Kỹ thuật cho đẻ nhân tạo
Ương cá hương, cá giống
Kỹ thuật nuôi cá thịt
Phòng trị bệnh cho cá chim trắng

...', N'~/Hinhdulieu/kythuatnuoicachimtrang.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 0, 0, N'Lâm Thị Mỹ Dạ', N'6', N'2')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'49', N'Điều Khiển Và Giám Sát Với S7200 - S7300 PC Access & Wincc', 74000, N'cuốn', N'Sách được biên soạn qua 10 bài tập nhằm giúp các chuyên viên, đang làm việc và học tập trong lãnh vực điều khiển hệ động hóa tự động trong công nghiệp, học sinh khối ngành công nghệ và kĩ thuật như Điện công nghiệp, điện - điện tử viễn thông, cơ điện tử, tự động hóa ...Làm quen dần với một chức năng quan trọng giao diện người và máy (HMI) của hệ thống Scada qua việc lập trình với s7 200, s7 300, PC ACCESS WINCC 6.0 và WINCC 7.0.

Mục lục
Kết nối PLC S7-200 và WINCC
Điều khiển bồn trộn hóa chất
Điều khiền tuần tự 4 động cơ
Điều khiển đèn giao thông
Điều khiển hệ thống đổ nguyên liệu
Điều khiển và giám sát dây chuyền đóng nắp chai bia
Điều khiển nhiệt độ lò nung
Khởi động động cơ sao - tam giác
Điều khiển và giam sát quá trình chế biến hoa quả
Điều khiển và giám sát dây chuyền sản xuất xi măng', N'~/Hinhdulieu/dieukhienvagiamsatvois700.jpg', CAST(N'2012-05-07T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Hữu Nhân', N'5', N'8')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'5', N'Giáo trình Tin học quản lý 1', 21000, N'cuốn', N'Mạng Máy Tính Và Hệ Thống Bảo Mật gồm 7 chương:
Chương I: Tổng quan về công nghệ mạng máy tính và mạng cục bộ.
Chương II: Các thiết bị mạng thông dụng và các chuẩn kết nối vật lý.
Chương III: TCP/IP và mạng Internet.
Chương IV: Hệ điều hành mạng đặc điểm của hệ điều hành mạng.
Chương V: Một số vấn đề an toàn và bảo mật thông tin trên mạng máy tính.
Chương VI: Giới thiệu hệ điều hành Windows NT.
Chương VII: Giới thiệu hệ điều hành UNIX.
Trân trọng giới thiệu.', N'~/hinhdulieu/TH001.jpg', CAST(N'2012-04-10T00:00:00' AS SmallDateTime), 240, 0, N'Trần Thanh Minh', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'50', N'Tìm Hiểu Dầu Nhờn', 32000, N'cuốn', N'Sách với nội dung:
Chương 1: Nguồn gốc hình thành và sự phát triển của dầu mỏ và dầu nhờn
Chương 2: Các loại nguyên liệu pha chế dầu nhờn: dầu gốc và phụ gia
Chương 3: Phân loại và chọn lựa dầu nhờn thích hợp
Chương 4: Dầu nhờn công nghiệp
Chương 5: Mỡ bôi trơn
Chương 6: Bảo quản dầu bôi trơn
Chương 7: Phân tích dầu đã qua sử dụng
Chương 8: Thu gom và tái chế dầu động cơ đã qua sử dụng hướng tương lai. 

Nhằm mục đích phổ cập kiến thức, trình bày những điều cơ bản nhất về dầu nhờn cho bạn đọc.', N'~/Hinhdulieu/timhieudaunhon.jpg', CAST(N'2012-04-02T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Minh Minh', N'5', N'8')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'51', N'Câu Chuyện Nhỏ Bài Học Lớn - Mẹ Kể Con Nghe', 32000, N'cuốn', N'Tập truyện "Câu chuyện nhỏ bài học lớn - Mẹ kể con nghe" này bao gồm những câu chuyện từ cổ xưa đến hiện đại được biên soạn lại với hình thức ngụ ngôn. Nội dung hàm chứa những vấn đề giáo dục gần với cuộc sống đương đại như tình yêu thương thân ái, đức hy sinh, lòng dũng cảm, gắn với những lời khuyên chân thành của người Mẹ...Các câu chuyện sẽ giúp các em có thêm nhiều kinh nghiệm bổ ích trong hành trang vào đời.

Qua những câu chuyện nhỏ mà có bài học lớn, tập truyện "Câu chuyện nhỏ bài học lớn - Mẹ kể con nghe" là những bức tranh tinh tế, ẩn chứa những điều mới lạ...', N'~/Hinhdulieu/cauchuyennhobaihoclon.jpg', CAST(N'2012-05-14T00:00:00' AS SmallDateTime), 0, 0, N'Trần Thanh Minh', N'4', N'6')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'52', N'Tác Phẩm Văn Học Trong Nhà Trường - Xuân Quỳnh - Tác Phẩm & Lời Bình', 32000, N'cuốn', N'Tác phẩm
Tiếng mẹ
Ru
Khát vọng
Chồi biếc
Thuyền và biển
Tiếng gà trưa
Sóng
Khi con ra đời
Lời ru
Biển
Mái phố
Mùa hoa roi

...

Lời bình
Mã Giang Lân - Nhớ Xuân Quỳnh, nhớ một giọng thơ
Nguyễn Thị Minh Thái - Một giọng thơ tình ám ảnh
Vương Trí Nhàn - Xuân Quỳnh - Những buồn vui của kiếp hoa dại
Nguyễn Trọng Hoàn - Xuân Quỳnh - thơ và tác phẩm trong trường phổ thông
Nguyễn Thị Bích Ngọc - Thơ tình Xuân Quỳnh - sự thể hiện sức mạnh của một tâm hồn phụ nữ
Nguyễn Xuân Nam - Vẻ đẹp thơ Xuân Quỳnh
Nguyễn Hòa Bình - Những tình cảm trắc ẩn trong thơ Xuân Quỳnh', N'~/Hinhdulieu/thoxuanquynh.jpg', CAST(N'2012-05-06T00:00:00' AS SmallDateTime), 0, 0, N'Hòang Lê Duyên', N'4', N'3')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'53', N'Như Là Yêu - Một Thực Đơn Cảm Xúc Cho Trái Tim Người Trẻ', 68000, N'cuốn', N'Khác hẳn với 8 tập trước, tập 9 trong bộ LỜI YÊU sẽ trình diện bạn đọc trong một diện mạo mới hoàn toàn. Những cây bút mới với những sáng tác mới được phê duyệt bởi Phan Hồn Nhiên - Hoàng Anh Tú - Ploy. Được vẽ và trình bày bởi những họa sỹ mới dưới sự kiểm duyệt nghiêm khắc của họa sỹ kều Kim Dẫn.

MỘT BỮA TIỆC CẢM XÚC CHO TẤT CẢ MỌI NGƯỜI VỚI ĐẦY ĐỦ CÁC CUNG BÂC

... của nghẹn ngực nụ hôn đầu tiên...

... của loạn nhịp trái tim từ cái cầm tay...

... của hồi hộp háo hức từ lần hẹn đầu tiên...

... của bổi hổi bồi hồi nổi nhớ...

Chạm đến tận cùng mọi giác quan, khám phá nơi sâu thẳm trái tim của mỗi người đọc, THỰC ĐƠN CẢM XÚC chắc chắn khiến bạn khóc, cười cùng mỗi "món ăn" mà LỜI YÊU dọn ra hầu bạn đọc.

NHƯ LÀ YÊU với hơn 250 trang + 32 trang phụ bản màu + 2 thiệp đính kèm, LỜI YÊU 9: NHƯ LÀ YÊU sẽ chinh phục bạn đọc bằng sự trong veo của những mối tình chưa chín. Là những rung động đầu đời và cả những lầm tưởng, ngộ nhận...', N'~/Hinhdulieu/nhulayeu.jpg', CAST(N'2012-05-15T00:00:00' AS SmallDateTime), 0, 0, N'Trần Thanh Minh', N'4', N'6')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'54', N'Bộ Luật Dân Sự', 100000, N'cuốn', N'Bộ luật dân sự được Quốc hội nước Cộng hòa xã hội chủ nghĩa Việt Nam khóa XI, kỳ họp thứ 7 thông qua ngày 14 tháng 6 năm 2005, có hiệu lực từ ngày 01 tháng 01 năm 2006.

Bộ luật dân sự quy định địa vị pháp lý, chuẩn mực pháp lý cho cách ứng xử của cá nhân, pháp nhân, chủ thể khác; quyền, nghĩa vụ của các chủ thể về nhân thân và tài sản trong các quan hệ dân sự, hôn nhân và gia đình, kinh doanh, thương mại, lao động.

Bộ luật dân sự có nhiệm vụ bảo vệ quyền, lợi ích hợp pháp của cá nhân, tổ chức, lợi ích của Nhà nước, lợi ích công cộng; bảo đảm sự bình đẳng và an toàn pháp lý trong quan hệ dân sự, góp phần tạo điều kiện đáp ứng nhu cầu vật chất và tinh thần của nhân dân, thúc đẩy sự phát triển kinh tế - xã hội.', N'~/Hinhdulieu/luatdansu.jpg', CAST(N'2012-04-10T00:00:00' AS SmallDateTime), 0, 0, N'Hòang Lê Duyên', N'3', N'3')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'55', N'Một Số Quy Định Hướng Dẫn Thi Hành Bộ Luật Hình Sự', 210000, N'cuốn', N'Pháp luật hình sự là một trong những công cụ sắc bén, hữu hiệu để đấu tranh phòng ngừa và chống tội phạm, góp phần đắc lực vào việc bảo vệ độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của Tổ quốc Việt Nam xã hội chủ nghĩa, bảo vệ lợi ích của Nhà nước, quyền, lợi ích hợp pháp của công dân, tổ chức, góp phần duy trì trật tự an toàn xã hội, bảo đảm mọi người được sống trong môi trường an toàn, lành mạnh, mang tính nhân văn cao.

"Một số quy định hướng dẫn thi hành bộ luật hình sự" được biên soạn nhằm tạo điều kiện thuận lợi cho các cơ quan, tổ chức và đông đảo bạn đọc tìm hiểu, tra cứu một cách có hệ thống các quy định của Bộ luật Hình sự. Các văn bản hướng dẫn này đã được ban hành trước khi Bộ luật Hình sự sửa đổi (năm 2009) nhưng vẫn còn hiệu lực thi hành.

Nội dung cuốn sách gồm các mục sau:
Mục I. Các Nghị quyết của Quốc hội
Mục II. Các Nghị quyết của Hội đồng Thẩm phán Tòa án nhân dân tối cao
Mục III. Các Thông tư liên tịch hướng dẫn thi hành', N'~/Hinhdulieu/luathinhsu.jpg', CAST(N'2012-05-07T00:00:00' AS SmallDateTime), 0, 0, N'Long Ngô', N'3', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'56', N'Quy Định Mới Nhất Về Giá Dịch Vụ Khám, Chữa Bệnh Hướng Dẫn Chẩn Đoán, Điều Trị Xử Phạt Vi Phạm Hành ', 190000, N'cuốn', N'Với mục đích giúp cán bộ lãnh đạo, cán bộ quản lý, bác sỹ, y tá, dược tá tại các bệnh viện, cơ sở y tế, các phòng khám chữa bệnh, các đơn vị sản xuất, nhập khẩu thuốc nắm được đầy đủ các quy định mới nhất trong các lĩnh vực nói trên , Nhà xuất bản y học cho ra cuốn sách " Quy Định Mới Nhất Về Giá Dịch Vụ Khám, Chữa Bệnh Hướng Dẫn Chẩn Đoán, Điều Trị Xử Phạt Vi Phạm Hành Chính Trong Khám Bệnh, Chữa Bệnh Bảo Hiểm Y Tế, Bệnh Nghề Nghiệp Dành Cho Bệnh Viện Và Các Cơ Sở Y Tế "

Nội dung cuốn sách gồm các phần như sau:

Phần thứ 1: Luật khám bệnh, chữa bệnh và khung giá dịch vụ khám bệnh, chữa bệnh, xử phạt vi phạm hành chính về khám bệnh, chữa bệnh

Phần thứ 2: Quy định mới về khám, chẩn đoán, điều trị bệnh

Phần thứ 3: Quy định mới về bảo hiểm y tế và danhmuc5 bệnh nghề nghiệp được bảo hiểm

Phần thứ 4: Một số quy định liên quan', N'~/Hinhdulieu/quydinhkhamchuabenh.jpg', CAST(N'2012-04-10T00:00:00' AS SmallDateTime), 0, 0, N'Trần Thanh Minh', N'3', N'6')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'57', N'Hướng Dẫn Thi Hành Điều Lệ Đảng & Một Số Vấn Đề Cấp Bách Về Xây Dựng Đảng Hiện Nay', 450000, N'cuốn', N'Vừa qua, Ban Bí thư Trung ương Đảng, Ban Chấp hành Trung ương Đảng đã ban hành nhiều văn bản mới về công tác xây dựng Đảng, thi hành Điều lệ Đảng, kiểm tra, giám sát kỷ luật trong Đảng, những điều đảng viên không được làm... cụ thể như: Nghị quyết số 12-NQ/TW ngày 16-1-2012 về một số vấn đề cấp bách về xây dựng Đảng hiện nay; Chỉ thị số 15-CT/TW ngày 24-2-2012 về việc thực hiện Nghị quyết Hội nghị lần thứ tư Ban Chấp hành Trung ương Đảng (khóa XI) "Một số vấn đề cấp bách về xây dựng Đảng hiện nay"; Quy định số 45-QĐ/TW, Quyết định số 46-QĐ/TW và Quy định số 47-QĐ/TW ngày 1-11-2011 quy định chi tiết một số điều, khoản trong Điều lệ Đảng, hướng dẫn thực hiện các quy định về công tác kiểm tra, giám sát và kỷ luật của Đảng, quy định về những điều đảng viên không được làm...

Nhằm kịp thời cung cấp những quy định quan trọng nêu trên đến cán bộ đảng viên, các cơ quan Đảng, đoàn thể và bạn đọc, Nhà xuất bản Văn hóa - Thông tin xuất bản cuốn sách: Hướng Dẫn Thi Hành Điều Lệ Đảng Và Một Số Vấn Đề Cấp Bách Về Xây Dựng Đảng Hiện Nay.

Nội dung cuốn sách bao gồm các phần chính sau đây:
Phần I: Quy định thi hành điều lệ Đảng
Phần II: Quy định mới những điều Đảng viên không được làm
Phần III: Quy định công tác kiểm tra, giám sát, khen thưởng, kỷ luật trong các tổ chức Đảng
Phần IV: Quy định mới về công tác đào tạo, bồi dưỡng, tuyển dụng, sử dụng và quản lý cán bộ, đảng viên trong các tổ chức Đảng
Phần V: Quy định mới về cơ cấu tổ chức và hoạt động của các cơ quan cấp ủy Đảng
Phần VI: Quy chế phối hợp công tác giữa các tổ chức Đảng
Phần VII: Một số vấn đề cấp bách về xây dựng Đảng hiện nay
Phần VIII: Quy định mới về chế độ phụ cấp trong các tổ chức Đảng', N'~/Hinhdulieu/huongdandieuledang.jpg', CAST(N'2012-05-02T00:00:00' AS SmallDateTime), 0, 0, N'Hứa Minh Nguyệt', N'3', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'58', N'Barron''s The Leader In Test Preparation - TOEIC Practice Exams', 300000, N'cuốn', N'Contents:

Introduction

TOEIC Practice Test 1
Answer Key
Answers Explained

TOEIC Practice Test 2
Answer Key
Answers Explained

TOEIC Practice Test 3
Answer Key
Answers Explained

TOEIC Practice Test 4
Answer Key
Answers Explained

TOEIC Practice Test 5
Answer Key
Answers Explained

TOEIC Practice Test 6
Answer Key
Answers Explained', N'~/Hinhdulieu/toiec.jpg', CAST(N'2012-05-15T00:00:00' AS SmallDateTime), 0, 0, N'Phan Thị Lệ Thu', N'1', N'5')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'59', N'Barron''s The Leader In Test Preparation - IELTS Practice Exams', 190000, N'cuốn', N'Contents:

Part 1: Academic Module
Practice Test 1
Practice Test 2
Practice Test 3
Practice Test 4
Practice Test 5
Practice Test 6

Part 2: General Training Module
Practice Test 1
Practice Test 2
Practice Test 3
Practice Test 4
Practice Test 5
Practice Test 6

Audio Scripts for listening parts 1 - 4

How to use the audio CDs

(Giá = Sách + 2 CD)', N'~/Hinhdulieu/ielts.jpg', CAST(N'2012-05-06T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Đức Long', N'1', N'8')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'6', N'Giáo trình Tin học quản lý 2', 21000, N'cuốn', N'Mục đích của bộ sách này giúp bạn trở nên thành thạo cơ sở dữ liệu (CSDL) Oracle9i, đề cập đến tất cả những kiến thức cần thiết từ mô hình dữ liệu, quản trị CSDL, sao lưu phục hồi, mạng và xử lý sự cố cũng như hiệu chỉnh hiệu suất thực thi..., với sự kết hợp lý thuyết và thực hành về điều mà Nhà quản trị CSDL Oracle9i cần biết để sử dụng CSDL Oracle9i một cách hiệu quả từ chính bộ sách này.
Bộ sách được chia làm 2 tập, tập 1 đề cập các kiến thức cơ bản về CSDL, mô hình dữ liệu. Bạn sẽ được biết về hệ quản trị CSDL Oracle9i, tạo CSDL, kết nối và quản lý người dùng. Tập 2 hướng dẫn bạn cách nạp, sao lưu và phục hồi dữ liệu, quản lý hoạt động CSDL Oracle9i, thực hiện hiệu chỉnh hiệu suất thực thi và xử lý sự cố cho CSDL.
Xin trân trọng giới thiệu Tập 1 cùng các bạn.', N'~/hinhdulieu/130499.jpg', CAST(N'2012-04-10T00:00:00' AS SmallDateTime), 16, 0, N'Hòang Lê Duyên', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'60', N'Tiếng Anh Cho Học Sinh Tiểu Học', 30000, N'cuốn', N'Nội dung sách bao gồm 15 đơn vị bài học tương ứng với 15 vấn đề ngữ pháp quan trọng, được sắp xếp theo trình tự hợp lý, từ dễ đến khó phù hợp với chương trình học tập trong sách giáo khoa, nhằm giúp các em có thể tự ôn luyện ngữ pháp tiếng Anh một cách dễ dàng.

Mỗi bài học được chia thành hai phần, phần lý thuyết cung cấp cho các em cách sử dụng các cấu trúc ngữ pháp tiếng Anh. Phần bài tập được biên soạn sát với các chủ điểm ngữ pháp, giúp các em củng cố lại những nội dung lý thuyết đã học và nâng cao khả năng thực hành tiếng Anh dựa trên các dạng bài tập phong phú và thiết thực.

Phần đáp án tham khảo ở cuối sách sẽ giúp các em có thể tự đánh giá được kết quả ôn luyện và thực hành tiếng Anh của mình.

Cuốn sách sẽ mang đến cho các em học sinh một cách tiếp cận mới với thành tích cao hơn trong quá trình học tiếng Anh, giúp các em tìm được niềm hứng thú và thực sự yêu thích khi học ngôn ngữ này.', N'~/Hinhdulieu/tienganhchotieuhoc.jpg', CAST(N'2012-05-15T00:00:00' AS SmallDateTime), 0, 0, N'Nguyễn Đức Long', N'1', N'7')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'61', N'Ôn Nhanh Ngữ Pháp Tiếng Anh Cho Học Sinh Trung Học Cơ Sở', 30000, N'cuốn', N'Nội dung sách tập trung tổng kết các vấn đề ngữ pháp tiếng Anh tiêu biểu, phù hợp với chương trình học trong sách giáo khoa của các em. Bao gồm 10 vấn đề cơ bản, như: Các thì của đồng từ, Các loại câu, Câu bị động, Câu trực tiếp - gián tiếp , Câu điều kiện , Câu đảo ngữ, Đại từ quan hệ, Mệnh đề quan hệ xác định - không xác định, So sánh của Tính từ và Trạng từ, Giới từ... Các kiến thức ngữ pháp đều được tổng kết chắt lọc, trình bày một cách ngắn gọn, đơn giản, kết hợp với nhiều ví dụ minh hoạ sinh động

Trong mỗi bài học ngữ pháp, các em vừa có cơ hội trau dồi vốn từ vựng phong phú, lại vừa được luyện tập các dạng bài tập gần gũi, thiết thực nhất với các kiến thức ngữ pháp phù hợp.

Phần bài tập tổng hợp và đáp án gợi ý sẽ giúp các em có thể tham khảo tự trắc nghiệm, và đánh giá được khả năng tiếng Anh của mình.', N'~/Hinhdulieu/tienganhchohscoso.jpg', CAST(N'2012-04-05T00:00:00' AS SmallDateTime), 0, 0, N'Phan Hồng Phúc', N'1', N'7')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'62', N'Kỷ Yếu Hoàng Sa', 215000, N'cuốn', N'Cuốn sách "Kỷ yếu Hoàng Sa" dày hơn 200 trang gồm các phần: Hoàng Sa là của Việt Nam, Công tác quản lý nhà nước đối với huyện Hoàng Sa, Hoàng Sa và những nhân chứng lịch sử, Cảm nghĩ của người Đà Nẵng về Hoàng Sa. Qua đó giới thiệu cho người đọc về vị trí địa lý, tầm quan trọng cùng những nội dung cơ bản của quá trình xác lập, khai thác, quản lý và bảo vệ chủ quyền của nhà nước Việt Nam qua các thời kỳ trong lịch sử.

Điểm nổi bật của cuốn kỷ yếu này so với các tài liệu đã viết về Hoàng Sa là phần giới thiệu của 24 nhân chứng từng đến sống, làm việc tại quần đảo này trong những thập niên 50-70 của thế kỷ XX cùng cảm nhận của họ về vùng đảo và những ngày tháng sống và làm việc ở đây. Qua đó tiếp tục khẳng định sự hiện diện của người Việt Nam và sự chiếm hữu lâu đời, liên tục của nhà nước Việt Nam qua các thời kỳ đối với quần đảo Hoàng Sa đang bị nước ngoài chiếm giữ.

Đây là cuốn kỷ yếu quy mô nhất về Hoàng Sa, với nhiều giá trị giới thiệu cho người đọc về vị trí địa lý, quá trình xác lập chủ quyền, nhằm nâng cao nhận thức, ý thức bảo vệ chủ quyền biển đảo. Trong cuốn kỷ yếu này, bạn đọc có thể tìm thấy những mốc lịch sử của Hoàng Sa một cách chi tiết nhất về quần đảo này.', N'~/Hinhdulieu/kyyeuhoangsa.jpg', CAST(N'2012-05-07T00:00:00' AS SmallDateTime), 0, 0, N'Lê Thị Thùy Trang', N'8', N'7')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'63', N'Hỏi Đáp Về Kỹ Thuật Nuôi Trồng Hoa Và Cây Cảnh', 23000, N'cuốn', N'Hoa là tượng trưng của cái đẹp, là nguồn cảm giác ngọt ngào của cuộc sống. Khi con người vui vẻ nhìn thấy một đóa hoa tươi sẽ có cảm giác thơm ngọt trong không gian; khi tâm tình không sảng khoái nhìn đóa hoa tươi sẽ thấy một làn gió xuân an ủi, làm mất đi nỗi buồn trong lòng.

Hoa trong cuộc sống con người chiếm một địa vị thẩm mỹ quan trọng. Hoa mẫu đơn, thược dược có đặc sắc thiên tư; hoa sơn trà, nguyệt quế có tính kiều diễm;; hoa cúc thì sán lạn, hoa mai mảnh mai như người con gái đẹp; hoa quế có mùi thơm bay tỏa đi khắp nơi; hoa hồng có mùi ngọt mê hồn. Hoa phù dung có mùi thơm lan tỏa trong nước. Còn Hoa lan có mùi thơm êm dịu, làm cho con người trầm tĩnh thoát tục. Người ta ví hoa lan tượng trưng cho người quân tử, tượng trưng cho lý tưởng nhân cách, hoa huệ tượng trưng cho đại sĩ phu, có tính khẳng khái. Các nghệ sĩ cũng phải mượn hoa để tạo hình

Mấy năm nay nghề trồng hoa, cây cảnh đã phát triển. Người ta dùng hoa tươi để chúc mừng lễ tết, kết hôn, thăm viếng bạn bè và trở thành một vật phẩm tinh thần không thể thiếu được trong môi trường đẹp, cuộc sống đẹp và tâm linh đẹp.

Cây cảnh có nhiều loại: Loại xem lá, xem hoa, xem quả... Nhưng nhiều nhất vẫn là cây cảnh xem hoa. Cây cảnh xem hoa, xem quả thường có xuất xứ ở nhiều vùng khác nhau, thường được trồng trong chậu để ngoài trời hoặc trồng trên đất vườn; còn cây cảnh xem lá thường xuất xứ ở các vùng nhiệt đới, á nhiệt đới và được trồng vào chậu để trong nhà. Tất cả đều được gọi chung là hoa và cây cảnh.

Hy vọng cuốn sách sẽ là tài liệu tham khảo quý, đáp ứng phần nào nhu cầu về trồng hoa và cây cảnh hiện nay của đông đảo độc giả.', N'~/Hinhdulieu/kythuatnuoitronghoa.jpg', CAST(N'2012-05-07T00:00:00' AS SmallDateTime), 0, 0, N'Long Ngô', N'6', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'64', N'hyhrdass', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'5', N'4')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'7', N'Giáo trình SQL Server', 18000, N'cuốn', N'Hệ quản trị cơ sở dữ liệu SQl Server 2003
Test thu', N'~/hinhdulieu/KT0001.jpg', CAST(N'2012-04-27T00:00:00' AS SmallDateTime), 66, 0, N'Ks.Lê Tuấn Hùng', N'18', N'1')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'8', N'Phong Cách Quản Lý Kinh Doanh Hiện Đại ', 61000, N'cuốn', N'Cuốn sách này không đi vào chi tiết những chủ đề quản lý cổ điển đã được nhắc đến trong nhiều cuốn sách khác như tổ chức cuộc họp, cung cấp số liệu, quản lý thời gian. Mục đích của cuốn sách này là mang lại cho bạn "nhiều hơn", một giá trị gia tăng so với những gì bạn đã biết và đã áp dụng, và giúp bạn tối ưu hóa việc quản lý chuyên môn và quản lý nhân sự.
Nội dung sách bao gồm 9 chương:
Chương 1: Bốn cách nhìn quản lý theo sắc màu.
Chương 2: Quản lý các sắc màu của một cộng tác viên.
Chương 3: Quản lý nhóm theo màu sắc.
Chương 4: Quyết định cách thích hợp dựa vào bản thân, người khác và hoàn cảnh.
Chương 5: Phát triển hiệu quả tối ưu theo sắc màu.
Chương 6: Hiểu rõ những sai lệch trong cách quản lý của mình.
Chương 7: Nền tảng cơ sở của hệ thống Success Insights: Bốn màu với tám kiểu.
Chương 8: Nhận biết và quản lý tám kiểu cộng tác viên.
Chương 9: Cải thiện người quản lý.
Xin trân trọng giới thiệu. 
', N'~/hinhdulieu/KT0005.jpg', CAST(N'2012-04-03T00:00:00' AS SmallDateTime), 22, 0, N'Ks.Lý Thế Nam', N'9', N'8')
INSERT [dbo].[sach] ([Masach], [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [Ngaycapnhat], [Soluongban], [Solanxem], [tentacgia], [MaCD], [MaNXB]) VALUES (N'9', N'Cán Bộ Quản Lý Trong Sản Xuất Công Nghiệp', 25000, N'cuốn', N'Cuốn sách này gồm những nội dung chính sau:
Phần 1: Quản lý sản xuất công nghiệp trong kinh tế thị trường
- Kinh doanh sản xuất công nghiệp trong kinh tế thị trường
- Sự cần thiết và các chức năng của quản lý nhà nước đối với doanh nghiệp sản xuất công nghiệp
- Nội dung và tính chất của những công việc mà cán bộ quản lý sản xuất công nghiệp phải đảm nhiệm, hoàn thành.
- Kinh nghiệm đào tạo và đánh giá cán bộ quản lý kinh doanh ở Nhật.
Phần 2: Thực trạng và một số giải pháp nhằm nâng cao chất lượng đội ngũ cán bộ quản lý sản xuất công nghiệp Việt Nam
- Thực trạng cán bộ quản lý doanh nghiệp công nghiệp của Việt Nam
- Tiêu chuẩn hóa cán bộ quản lý sản xuất công nghiệp Việt Nam
- Đổi mới căn bản nội dung và phương pháp đào tạo cán bộ quản lý sản xuất công nghiệp Việt Nam
Xin trân trọng giới thiệu. 
 
', N'~/hinhdulieu/TH003.jpg', CAST(N'2012-04-01T00:00:00' AS SmallDateTime), 55, 0, N'Ts.Nguyễn Minh Thành', N'9', N'4')
GO
ALTER TABLE [dbo].[chitietgiohang]  WITH CHECK ADD FOREIGN KEY([MaGiohang])
REFERENCES [dbo].[giohang] ([MaGiohang])
GO
ALTER TABLE [dbo].[chitietgiohang]  WITH CHECK ADD FOREIGN KEY([Masach])
REFERENCES [dbo].[sach] ([Masach])
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD FOREIGN KEY([MaCD])
REFERENCES [dbo].[chude] ([MaCD])
GO
ALTER TABLE [dbo].[sach]  WITH CHECK ADD FOREIGN KEY([MaNXB])
REFERENCES [dbo].[nhaxuatban] ([MaNXB])
GO
USE [master]
GO
ALTER DATABASE [LaptrinhWeb_BTL_Bansach] SET  READ_WRITE 
GO
