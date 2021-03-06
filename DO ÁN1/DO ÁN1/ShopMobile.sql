USE [master]
GO
/****** Object:  Database [ShopMobile]    Script Date: 7/10/2021 10:18:21 AM ******/
CREATE DATABASE [ShopMobile]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopMobile', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopMobile.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopMobile_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ShopMobile_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 
GO
ALTER DATABASE [ShopMobile] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopMobile].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopMobile] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopMobile] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopMobile] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopMobile] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopMobile] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopMobile] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopMobile] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopMobile] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopMobile] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopMobile] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopMobile] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopMobile] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopMobile] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopMobile] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopMobile] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopMobile] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopMobile] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopMobile] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopMobile] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopMobile] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopMobile] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopMobile] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopMobile] SET RECOVERY FULL 
GO
ALTER DATABASE [ShopMobile] SET  MULTI_USER 
GO
ALTER DATABASE [ShopMobile] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopMobile] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopMobile] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopMobile] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ShopMobile] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopMobile] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopMobile', N'ON'
GO
ALTER DATABASE [ShopMobile] SET QUERY_STORE = OFF
GO
USE [ShopMobile]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 7/10/2021 10:18:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSanPham] [nvarchar](10) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NULL,
	[TinhTrang] [nchar](3) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 7/10/2021 10:18:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSanXuat] [nvarchar](10) NOT NULL,
	[TenNhaSanXuat] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSanXuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/10/2021 10:18:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [nvarchar](10) NOT NULL,
	[MaLoaiSanPham] [nvarchar](10) NULL,
	[MaNhaSanXuat] [nvarchar](10) NULL,
	[TenSanPham] [nvarchar](max) NULL,
	[CauHinh] [text] NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nchar](10) NULL,
	[Gia] [int] NULL,
	[SoLuongDaBan] [int] NULL,
	[LuotView] [int] NULL,
	[TinhTrang] [nchar](10) NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP01', N'Cao Cấp ', N'0  ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP02', N'Trung Cấp', N'0  ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP03', N'Giá Rẻ', N'0  ')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSanPham], [TenLoaiSanPham], [TinhTrang]) VALUES (N'LSP04', N'Hàng Củ', N'0  ')
GO
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX01', N'Iphone', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX02', N'Samsung', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX03', N'Oppo', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX04', N'LG', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNhaSanXuat], [TenNhaSanXuat], [TinhTrang]) VALUES (N'NSX05', N'Xiaomi', N'0         ')
GO
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP01', N'LSP03', N'NSX01', N'Iphone 12 Promax 512 GB', N'Chua xác dinh', N'1.png', NULL, NULL, NULL, NULL, 37990000, 5, 3, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP02', N'LSP02', N'NSX01', N'Iphone XR 256GB', N'Chua xác dinh', N'2.png', NULL, NULL, NULL, NULL, 12490000, 5, 1, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP03', N'LSP01', N'NSX01', N'Iphone 12 ', N'Chua xác dinh', N'3.png', NULL, NULL, NULL, NULL, 19990000, 5, 6, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP04', N'LSP01', N'NSX02', N'Samsung Galaxy S21 5G', N'Chua xác dinh', N'4.png', NULL, NULL, NULL, NULL, 16990000, 0, 5, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP05', N'LSP02', N'NSX02', N'Samsung Galaxy S20', N'Chua xác dinh', N'5.png', NULL, NULL, NULL, NULL, 13990000, 3, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP06', N'LSP03', N'NSX03', N'Oppo Find X3', N'Chua xác dinh', N'6.png', NULL, NULL, NULL, NULL, 26990000, 8, 6, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP07', N'LSP01', N'NSX03', N'Oppo Reno 5', N'Chua xác dinh', N'7.png', NULL, NULL, NULL, NULL, 8290000, 0, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP08', N'LSP01', N'NSX01', N'Iphone 11', N'Chua xác dinh', N'8.png', NULL, NULL, NULL, NULL, 14990000, 0, 8, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP09', N'LSP03', N'NSX02', N'Samsung Galaxy Z Fold2 5G ', N'Chua xác dinh', N'9.png', NULL, NULL, NULL, NULL, 49990000, 9, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP10', N'LSP02', N'NSX03', N'Oppo Reno4 Pro', N'Chua xác dinh', N'10.png', NULL, NULL, NULL, NULL, 7499000, 0, 6, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP11', N'LSP03', N'NSX01', N'Iphone 12 Promax 256 GB', N'Chua xác dinh', N'11.png', NULL, NULL, NULL, NULL, 37990000, 0, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP12', N'LSP03', N'NSX01', N'Iphone 12 Promax 256 GB', N'Chua xác dinh', N'12.png', NULL, NULL, NULL, NULL, 37990000, 7, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP13', N'LSP03', N'NSX02', N'Samsung Galaxy Z Fold2 5G ', N'Chua xác dinh', N'13.png', NULL, NULL, NULL, NULL, 37990000, 0, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP14', N'LSP03', N'NSX01', N'Samsung Galaxy Z Fold2 5G ', N'Chua xác dinh', N'14.png', NULL, NULL, NULL, NULL, 37990000, 0, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP15', N'LSP02', N'NSX02', N'Samsung Galaxy Z Fold2 5G ', N'Chua xác dinh', N'15.png', NULL, NULL, NULL, NULL, 37990000, 0, 0, N'0         ', N'0')
INSERT [dbo].[SanPham] ([MaSanPham], [MaLoaiSanPham], [MaNhaSanXuat], [TenSanPham], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP16', N'LSP02', N'NSX02', N'Samsung Galaxy Z Fold2 5G ', N'Chua xác dinh', N'16.png', NULL, NULL, NULL, NULL, 37990000, 0, 0, N'0         ', N'0')
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  CONSTRAINT [DF_LoaiSanPham_Tình Trạng]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[NhaSanXuat] ADD  CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuongDaBan]  DEFAULT ((0)) FOR [SoLuongDaBan]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)) FOR [LuotView]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New') FOR [GhiChu]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSanXuat])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSanXuat])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
USE [master]
GO
ALTER DATABASE [ShopMobile] SET  READ_WRITE 
GO
