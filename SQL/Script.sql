USE [master]
GO
/****** Object:  Database [QLBanMyPham]    Script Date: 8/28/2021 2:40:56 PM ******/
CREATE DATABASE [QLBanMyPham]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBanMyPham', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBanMyPham.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBanMyPham_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLBanMyPham_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBanMyPham] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanMyPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanMyPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanMyPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanMyPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanMyPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanMyPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanMyPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanMyPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanMyPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanMyPham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBanMyPham] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanMyPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanMyPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanMyPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanMyPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanMyPham] SET DELAYED_DURABILITY = DISABLED 
GO
--ALTER DATABASE [QLBanMyPham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBanMyPham] SET QUERY_STORE = OFF
GO
USE [QLBanMyPham]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[TenCuaHang] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[SoTaiKhoan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [nvarchar](50) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongPhieuDat]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongPhieuDat](
	[MaSP] [nvarchar](20) NOT NULL,
	[MaPhieuDat] [nvarchar](20) NOT NULL,
	[SoLuongDat] [int] NOT NULL,
	[GiaDat] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongPhieuNhap]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongPhieuNhap](
	[MaPhieuNhap] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](20) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
	[MaKH] [nvarchar](20) NOT NULL,
	[TichDiemHT] [int] NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](20) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[SDT] [nvarchar](11) NULL,
	[TichDiem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [nvarchar](20) NOT NULL,
	[GiamGia] [int] NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Fax] [nvarchar](100) NOT NULL,
	[SoTaiKhoan] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[Anh] [nvarchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nvarchar](11) NULL,
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[ChucVuNV] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPhieuDat] [nvarchar](20) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[MaNCC] [nvarchar](20) NOT NULL,
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDoiTra]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDoiTra](
	[MaPhieuDT] [nvarchar](20) NOT NULL,
	[LyDoDT] [nvarchar](200) NULL,
	[MaHD] [nvarchar](20) NOT NULL,
	[tongTien] [money] NULL,
	[NgayLap] [datetime] NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [nvarchar](20) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[ThanhToan] [nvarchar](50) NULL,
	[MaPhieuDat] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](20) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[SLTon] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[XuatXu] [nvarchar](100) NOT NULL,
	[ThuongHieu] [nvarchar](100) NOT NULL,
	[MaDM] [nvarchar](50) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
	[DinhMucHetHang] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamKM]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamKM](
	[MaKM] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[GiaKM] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](30) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[ChucVu] [bit] NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinHD]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHD](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[DonGiaHT] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinSPDT]    Script Date: 8/28/2021 2:40:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSPDT](
	[MaSP] [nvarchar](20) NOT NULL,
	[MaPhieuDT] [nvarchar](20) NOT NULL,
	[SoLuongDT] [int] NULL,
	[PhanLoai] [bit] NULL,
	[DonGiaHT] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPhieuDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [DienThoai], [SoTaiKhoan]) VALUES (N'CH01', N'CocoShop 1', N'128, Xuân Thủy, Hà Nội', N'0983154455', N'1222354468752')
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [DienThoai], [SoTaiKhoan]) VALUES (N'CH02', N'CocoShop 2', N'258 Bà Triệu, Hà Nội', N'0988888948', N'1244436554124')
GO
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM01', N'Trang điểm')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM02', N'Son môi')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM03', N'Chăm sóc da')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM04', N'Chăm sóc cơ thể')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM05', N'Chăm sóc tóc')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM06', N'Dụng cụ trang điểm')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM07', N'Nước hoa')
GO
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP01', N'PDH01', 200, 150000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP02', N'PDH01', 1000, 100000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP03', N'PDH03', 50, 750000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP05', N'PDH02', 200, 30000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP08', N'PDH02', 300, 10000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP09', N'PDH03', 100, 100000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP10', N'PDH02', 50, 200000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP11', N'PDH02', 150, 100000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP13', N'PDH03', 50, 15000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP14', N'PDH02', 80, 400000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP16', N'PDH03', 60, 500000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP17', N'PDH02', 100, 50000.0000)
INSERT [dbo].[DongPhieuDat] ([MaSP], [MaPhieuDat], [SoLuongDat], [GiaDat]) VALUES (N'SP21', N'PDH01', 100, 50000.0000)
GO
INSERT [dbo].[DongPhieuNhap] ([MaPhieuNhap], [MaSP], [SoLuong], [GiaNhap]) VALUES (N'PN05309', N'SP01', 200, 150000.0000)
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TichDiemHT], [TongTien]) VALUES (N'HD19793', CAST(N'2021-08-27T20:46:15.150' AS DateTime), N'NV01', N'KH01', NULL, 387000.0000)
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TichDiemHT], [TongTien]) VALUES (N'HD50169', CAST(N'2021-08-27T20:47:10.213' AS DateTime), N'NV01', N'KH70649', 841, 841500.0000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [TichDiem]) VALUES (N'KH01', N'Khách lẻ', N'', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [TichDiem]) VALUES (N'KH66598', N'Nguyễn Văn Bình', N'02222222222', 0)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [TichDiem]) VALUES (N'KH70649', N'Nguyễn Viết Hoàng', N'01111111111', 841)
GO
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (N'KM45165', 10, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-08-06T00:00:00.000' AS DateTime))
INSERT [dbo].[KhuyenMai] ([MaKM], [GiamGia], [NgayBD], [NgayKT]) VALUES (N'KM68785', 15, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-08-06T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Fax], [SoTaiKhoan]) VALUES (N'NCC01', N'Công ty TNHH Xuân Hạ', N'01234568742', N'Thường Tín, Hà Nội', N'012345687424', N'123456214789')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Fax], [SoTaiKhoan]) VALUES (N'NCC02', N'Công ty TNHH Linh Chi', N'01234567815', N'Đống Đa, Hà Nội', N'013479798794', N'112345620147')
INSERT [dbo].[NhaCC] ([MaNCC], [TenNCC], [DienThoai], [DiaChi], [Fax], [SoTaiKhoan]) VALUES (N'NCC03', N'Công ty TNHH Thanh Xuân', N'03451247896', N'Thanh Xuân, Hà nội', N'015454987987', N'234567487887')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV01', N'Trần Chiến Công', N'\images\tcc.png', 1, N'0384215155', N'CH01', N'Quản lý')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV02', N'Phạm Minh Tú', N'\images\tu.jpg', 0, N'0215464654', N'CH01', N'Nhân viên')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV03', N'Nguyễn Viết Hoàng', N'\images\hoang.jpg', 1, N'0983154424', N'CH01', N'Bảo vệ')
GO
INSERT [dbo].[PhieuDatHang] ([MaPhieuDat], [NgayDat], [MaNCC], [MaCuaHang], [MaNV]) VALUES (N'PDH01', CAST(N'2021-08-15T00:31:36.970' AS DateTime), N'NCC01', N'CH01', N'NV01')
INSERT [dbo].[PhieuDatHang] ([MaPhieuDat], [NgayDat], [MaNCC], [MaCuaHang], [MaNV]) VALUES (N'PDH02', CAST(N'2021-07-03T17:56:48.340' AS DateTime), N'NCC02', N'CH02', N'NV01')
INSERT [dbo].[PhieuDatHang] ([MaPhieuDat], [NgayDat], [MaNCC], [MaCuaHang], [MaNV]) VALUES (N'PDH03', CAST(N'2021-06-12T00:31:36.970' AS DateTime), N'NCC01', N'CH02', N'NV01')
GO
INSERT [dbo].[PhieuDoiTra] ([MaPhieuDT], [LyDoDT], [MaHD], [tongTien], [NgayLap], [MaNV]) VALUES (N'PDT27236', N'Không phù hợp với da', N'HD50169', 0.0000, CAST(N'2021-08-27T20:54:10.287' AS DateTime), N'NV01')
GO
INSERT [dbo].[PhieuNhap] ([MaPhieuNhap], [NgayNhap], [ThanhToan], [MaPhieuDat], [MaNV]) VALUES (N'PN05309', CAST(N'2021-08-27T20:52:01.333' AS DateTime), N'Đã Thanh Toán', N'PDH01', N'NV01')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP01', N'Phấn nước Loria', 200, 350000.0000, N'Hàn Quốc', N'Loria', N'DM01', N'Hộp', 100)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP02', N'Phấn Mắt Karadium 4 ô Bling Fit Bijou Box Shadow', 85, 215000.0000, N'Hàn Quốc', N'Karadium', N'DM01', N'Hộp', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP03', N'Kem Nền MAC Kiềm Dầu SPF15', 45, 990000.0000, N'Mỹ', N'MAC', N'DM01', N'Lọ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP04', N'Son Bóng Romand Glasting Water Tint 04 Vintage Ocean', 50, 170000.0000, N'Hàn Quốc', N'Romand', N'DM02', N'Thỏi', 200)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP05', N'Sáp Dưỡng Môi Rohto Chuyên Biệt Cho Môi Khô', 200, 75.0000, N'Nhật Bản', N'Rohto', N'DM02', N'Lọ', 100)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP06', N'Son dưỡng Dior Addict Lip Maximizer 001 Pink 6ml', 100, 635000.0000, N'Pháp', N'Dior', N'DM02', N'Thỏi', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP07', N'Tẩy Tế Bào Chết Mặt Cà Phê Đắk Lắk Cocoon', 20, 145000.0000, N'Việt Nam', N'Cocoon', N'DM03', N'Lọ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP08', N'Mặt Nạ JMsolution Sáp Ong', 0, 22000.0000, N'Hàn Quốc', N'JMsolution', N'DM03', N'Miếng', 100)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP09', N'Nước tẩy trang hoa hồng Cocoon', 50, 275000.0000, N'Việt Nam', N'Cocoon', N'DM03', N'Lọ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP10', N'Xịt Thơm Body Victoria Secret', 100, 270000.0000, N'Mỹ', N'Victoria Secret', N'DM04', N'Chai', 60)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP11', N'Sữa Dưỡng Thể Vaseline Instant Fair', 0, 141000.0000, N'Mỹ', N'Vaseline', N'DM04', N'Lọ', 80)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP12', N'Sữa Tắm Senka Perfect Whip For Body', 80, 149000.0000, N'Nhật Bản', N'Senka', N'DM04', N'Chai', 60)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP13', N'Dầu Gội Khô Evoluderm', 123, 270000.0000, N'Pháp', N'Evoluderm', N'DM05', N'Lọ', 60)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP14', N'Kẹo nhai Mọc Tóc HairBurst Chewable Hair Vitamins', 44, 600000.0000, N'Anh', N'HairBurst', N'DM05', N'Lọ', 70)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP15', N'Dầu Gội Dove Avocado Extract Argan Oil', 56, 175000.0000, N'Nhật Bản', N'Dove', N'DM05', N'Chai', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP16', N'Bộ cọ 4 cây Etude House', 150, 215000.0000, N'Hàn Quốc', N'Etude House', N'DM06', N'Túi', 120)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP17', N'Mi giả Dahlia (3D-67)', 156, 75000.0000, N'Hàn Quốc', N'Dahlia', N'DM06', N'Miếng', 200)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP18', N'Bông tẩy trang Miniso 475 miếng', 300, 60000.0000, N'Nhật Bản', N'Miniso', N'DM06', N'Hộp', 250)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP19', N'Nước Hoa Marc Jacobs Daisy Love EDT', 55, 2860000.0000, N'Mỹ', N'Marc Jacobs', N'DM07', N'Lọ', 50)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP20', N'Nước hoa bỏ túi DKNY STORIES PURSE SPRAY', 55, 650.0000, N'Pháp', N'DKNY', N'DM07', N'Lọ', 30)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh], [DinhMucHetHang]) VALUES (N'SP21', N'Nước Hoa Vial Chanel Gabrielle', 142, 95000.0000, N'Pháp', N'Coco Chanel', N'DM07', N'Lọ', 100)
GO
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (N'KM45165', N'SP01', 315000.0000)
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (N'KM45165', N'SP02', 193500.0000)
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (N'KM68785', N'SP03', 841500.0000)
INSERT [dbo].[SanPhamKM] ([MaKM], [MaSP], [GiaKM]) VALUES (N'KM68785', N'SP04', 144500.0000)
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'admin', N'7367CC4CEE061A476290D18978830414', 1, N'NV01')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'nhanvien', N'7367CC4CEE061A476290D18978830414', 0, N'NV02')
GO
INSERT [dbo].[ThongTinHD] ([MaHD], [MaSP], [SoLuongMua], [DonGiaHT]) VALUES (N'HD19793', N'SP02', 2, 193500.0000)
INSERT [dbo].[ThongTinHD] ([MaHD], [MaSP], [SoLuongMua], [DonGiaHT]) VALUES (N'HD50169', N'SP03', 1, 841500.0000)
GO
INSERT [dbo].[ThongTinSPDT] ([MaSP], [MaPhieuDT], [SoLuongDT], [PhanLoai], [DonGiaHT]) VALUES (N'SP02', N'PDT27236', 1, 1, 193500.0000)
INSERT [dbo].[ThongTinSPDT] ([MaSP], [MaPhieuDT], [SoLuongDT], [PhanLoai], [DonGiaHT]) VALUES (N'SP03', N'PDT27236', 1, 0, 841500.0000)
GO
ALTER TABLE [dbo].[DongPhieuDat]  WITH CHECK ADD FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[DongPhieuDat]  WITH CHECK ADD FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[DongPhieuDat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DongPhieuDat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDoiTra]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[PhieuDoiTra]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[PhieuDoiTra]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDoiTra]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongTinSPDT]  WITH CHECK ADD FOREIGN KEY([MaPhieuDT])
REFERENCES [dbo].[PhieuDoiTra] ([MaPhieuDT])
GO
ALTER TABLE [dbo].[ThongTinSPDT]  WITH CHECK ADD FOREIGN KEY([MaPhieuDT])
REFERENCES [dbo].[PhieuDoiTra] ([MaPhieuDT])
GO
ALTER TABLE [dbo].[ThongTinSPDT]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongTinSPDT]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
USE [master]
GO
ALTER DATABASE [QLBanMyPham] SET  READ_WRITE 
GO
