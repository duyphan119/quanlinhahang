USE [QLNhaHang]
GO
/****** Object:  Table [dbo].[ban]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ban](
	[soban] [int] NOT NULL,
	[trangthai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[soban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[sohd] [varchar](10) NULL,
	[mamon] [varchar](10) NULL,
	[soluong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieunhap]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[sopn] [varchar](10) NULL,
	[manl] [varchar](10) NULL,
	[soluong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieuxuat]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieuxuat](
	[sopx] [varchar](10) NULL,
	[manl] [varchar](10) NULL,
	[soluong] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[sohd] [varchar](10) NOT NULL,
	[giovao] [datetime] NULL,
	[giora] [datetime] NULL,
	[manv] [varchar](10) NULL,
	[soban] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sohd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[monan]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monan](
	[mamon] [varchar](10) NOT NULL,
	[tenmon] [nvarchar](50) NOT NULL,
	[giatien] [decimal](18, 0) NOT NULL,
	[dvt] [nvarchar](10) NOT NULL,
	[manhom] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[mamon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nguyenlieu]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nguyenlieu](
	[manl] [varchar](10) NOT NULL,
	[tennl] [nvarchar](50) NOT NULL,
	[giatien] [decimal](18, 0) NOT NULL,
	[dvt] [nvarchar](10) NOT NULL,
	[mancc] [varchar](10) NULL,
 CONSTRAINT [PK__nguyenlieu] PRIMARY KEY CLUSTERED 
(
	[manl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[mancc] [varchar](10) NOT NULL,
	[tenncc] [nvarchar](100) NOT NULL,
	[diachi] [nvarchar](100) NOT NULL,
	[sdt] [varchar](11) NOT NULL,
 CONSTRAINT [PK__nhacungcap] PRIMARY KEY CLUSTERED 
(
	[mancc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[manv] [varchar](10) NOT NULL,
	[tennv] [nvarchar](50) NOT NULL,
	[ngaysinh] [datetime] NOT NULL,
	[gioitinh] [nvarchar](5) NOT NULL,
	[diachi] [nvarchar](150) NOT NULL,
	[sdt] [varchar](11) NOT NULL,
	[chucvu] [nvarchar](30) NOT NULL,
	[matkhau] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhommon]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhommon](
	[manhom] [varchar](10) NOT NULL,
	[tennhom] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[manhom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhap]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap](
	[sopn] [varchar](10) NOT NULL,
	[ngaynhap] [datetime] NOT NULL,
	[manv] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[sopn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieuxuat]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieuxuat](
	[sopx] [varchar](10) NOT NULL,
	[ngayxuat] [datetime] NOT NULL,
	[manv] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[sopx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (1, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (2, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (3, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (4, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (5, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (6, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (7, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (8, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (9, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (10, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (11, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (12, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (13, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (14, 0)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (15, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (16, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (17, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (18, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (19, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (20, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (21, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (22, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (23, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (24, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (25, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (26, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (27, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (28, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (29, 1)
GO
INSERT [dbo].[ban] ([soban], [trangthai]) VALUES (30, 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P025', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P026', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P027', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P024', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P038', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P037', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P062', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P063', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000002', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P094', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P096', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P129', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P138', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000003', N'P137', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000004', N'P013', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000004', N'P070', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000004', N'P150', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000004', N'P153', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P088', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P087', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P083', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P085', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P086', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P090', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P089', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P092', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P091', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P084', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000005', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000006', N'P082', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000006', N'P109', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000006', N'P148', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000006', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P054', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P055', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P056', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P152', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000007', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P033', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P028', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P032', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P074', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P104', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P105', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000008', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000009', N'P004', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000009', N'P051', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000009', N'P094', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000009', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000009', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000009', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P067', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P068', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P112', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P116', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P113', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P142', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P141', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P140', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P151', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000010', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000011', N'P079', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000011', N'P080', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000011', N'P125', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000011', N'P153', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000011', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P023', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P022', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P066', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P067', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P068', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000012', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000013', N'P087', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000013', N'P091', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000013', N'P086', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000013', N'P095', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000013', N'P094', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000013', N'P151', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P002', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P024', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P026', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P025', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P027', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P151', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000014', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000015', N'P004', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000015', N'P026', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000015', N'P071', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000015', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000015', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000015', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P059', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P058', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P060', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P057', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P085', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P088', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P156', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000016', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P093', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P098', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P096', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P140', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P139', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P144', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P146', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000017', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P127', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P130', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P138', 5)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P137', 4)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P102', 6)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P062', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P063', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000018', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000019', N'P014', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000019', N'P034', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000019', N'P054', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000019', N'P119', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000019', N'P156', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000019', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P001', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P060', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P082', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P123', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000020', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P004', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P023', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P022', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P021', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P113', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P114', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000021', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P002', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P026', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P027', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P081', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000022', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P104', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P106', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P105', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P103', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P107', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P108', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P109', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P110', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P128', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P137', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P138', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000023', N'P155', 4)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000024', N'P079', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000024', N'P154', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P023', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P044', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P046', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P095', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P098', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000025', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P026', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P046', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P044', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P094', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P098', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000026', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000027', N'P002', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000027', N'P030', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000027', N'P033', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000027', N'P085', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000027', N'P087', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000028', N'P129', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000028', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000028', N'P138', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000028', N'P137', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P030', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P031', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P054', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P108', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P110', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000029', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P027', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P026', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P050', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P075', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P105', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P106', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P133', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000030', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P023', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P021', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P062', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P090', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P083', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P119', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000031', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P028', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P029', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P031', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P030', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P033', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P085', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P089', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000032', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000033', N'P002', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000033', N'P027', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000033', N'P026', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000033', N'P072', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000033', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000033', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000034', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000034', N'P030', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000034', N'P055', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000034', N'P110', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000034', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000034', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P003', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P016', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P020', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P042', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P083', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000035', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P095', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P096', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P099', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P134', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P117', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P118', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000037', N'P153', 4)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P045', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P043', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P068', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P141', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000038', N'P154', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P026', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P024', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P067', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P111', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000039', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000040', N'P012', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000040', N'P035', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000040', N'P079', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000040', N'P150', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000040', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000040', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000041', N'P006', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000041', N'P007', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000041', N'P045', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000041', N'P104', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000041', N'P133', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000041', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P023', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P030', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P029', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P049', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P085', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P088', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P119', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000042', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P020', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000001', N'P010', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000054', N'P001', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000054', N'P055', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000054', N'P113', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000054', N'P104', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000036', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000054', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000054', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000036', N'P079', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000036', N'P080', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000036', N'P125', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000036', N'P153', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P126', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P015', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P034', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P057', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000055', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P112', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P096', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P132', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P017', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P019', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P098', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P092', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P123', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000058', N'P125', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P122', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P081', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P099', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P128', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P138', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P137', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P096', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000059', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P057', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P077', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P109', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P122', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P116', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P035', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P151', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000060', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000062', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000062', N'P077', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000062', N'P111', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000062', N'P154', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000062', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P015', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P024', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P026', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P040', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P070', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000063', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000064', N'P005', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000065', N'P015', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000065', N'P028', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000065', N'P049', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000065', N'P103', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000065', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000065', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P017', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P031', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P087', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P151', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P124', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P011', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P025', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P046', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P070', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P113', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P116', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000067', N'P153', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P153', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P124', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P126', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P132', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P137', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P138', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P134', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000069', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P100', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P101', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P102', 4)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P122', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P125', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P142', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P144', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000070', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P100', 5)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P101', 5)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P122', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P126', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P142', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P145', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000071', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P002', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P100', 5)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P129', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P151', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P137', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P138', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000072', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P151', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P129', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P137', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P138', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P087', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P072', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000074', N'P151', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000075', N'P015', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000075', N'P037', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000075', N'P078', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000075', N'P106', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000075', N'P151', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000075', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000080', N'P015', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000080', N'P038', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000080', N'P069', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000080', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000080', N'P121', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000080', N'P124', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000081', N'P015', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000082', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000083', N'P021', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000084', N'P003', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000084', N'P018', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000084', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000084', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000085', N'P002', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000085', N'P035', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000085', N'P077', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000086', N'P003', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000086', N'P049', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000086', N'P111', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000086', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P001', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P073', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P117', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P128', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P137', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P138', 4)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P103', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P104', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P105', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P106', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000043', N'P127', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P022', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P021', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P036', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P108', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P109', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000044', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P003', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P012', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P059', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P119', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P118', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000045', N'P110', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P003', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P017', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P038', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P066', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P095', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000046', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000047', N'P079', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000047', N'P123', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000047', N'P126', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000047', N'P150', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000047', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000047', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P029', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P031', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P075', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P109', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P107', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P148', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P149', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000048', N'P155', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000049', N'P004', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000049', N'P002', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000049', N'P055', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000049', N'P115', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000049', N'P114', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000049', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P029', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P032', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P051', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P087', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P086', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P141', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P152', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000050', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000051', N'P040', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000051', N'P066', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000051', N'P109', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000051', N'P149', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000051', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000051', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P017', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P016', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P036', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P035', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P058', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P059', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000052', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P040', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P068', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P135', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P134', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P130', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P137', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P138', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000053', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000064', N'P061', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000066', N'P029', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000077', N'P001', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000077', N'P024', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000077', N'P053', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000077', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P037', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000087', N'P038', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P137', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P138', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P113', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P087', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000056', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000057', N'P081', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000076', N'P001', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000076', N'P021', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000076', N'P023', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000076', N'P051', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000076', N'P151', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000057', N'P094', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000057', N'P143', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000057', N'P145', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000057', N'P153', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000057', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000062', N'P035', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P129', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P138', 3)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P137', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P153', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P070', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000073', N'P071', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000078', N'P001', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000078', N'P024', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000078', N'P049', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000078', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000061', N'P021', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000061', N'P043', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000061', N'P073', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000061', N'P151', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000061', N'P155', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000064', N'P113', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000064', N'P156', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000064', N'P154', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000081', N'P035', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000081', N'P061', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000081', N'P119', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000081', N'P152', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000079', N'P021', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P101', 5)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P100', 5)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P125', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P126', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P142', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000068', N'P139', 1)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000079', N'P041', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000079', N'P104', 2)
GO
INSERT [dbo].[chitiethoadon] ([sohd], [mamon], [soluong]) VALUES (N'HD0000079', N'P153', 2)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0003', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0007', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0002', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0001', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0004', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0005', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0008', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0006', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000001', N'0009', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000002', N'0001', 3)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000002', N'0002', 17)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000002', N'0003', 7)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000002', N'0004', 17)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000002', N'0005', 12)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000003', N'0006', 27)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000003', N'0007', 27)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000003', N'0008', 27)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000003', N'0009', 27)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000003', N'0010', 27)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000004', N'0011', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000004', N'0012', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000004', N'0013', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000004', N'0014', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000004', N'0015', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000005', N'0016', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000005', N'0017', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000005', N'0018', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000005', N'0019', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000005', N'0020', 20)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000006', N'0021', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000006', N'0022', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000006', N'0023', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000006', N'0024', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000006', N'0025', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000008', N'0001', 28)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0010', 23)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0026', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0027', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0028', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0029', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0030', 50)
GO
INSERT [dbo].[chitietphieunhap] ([sopn], [manl], [soluong]) VALUES (N'PN0000007', N'0031', 50)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000001', N'0001', 13)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000002', N'0001', 1)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000003', N'0001', 2)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000003', N'0002', 2)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000003', N'0005', 2)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000003', N'0007', 2)
GO
INSERT [dbo].[chitietphieuxuat] ([sopx], [manl], [soluong]) VALUES (N'PX0000003', N'0008', 2)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000001', CAST(N'2021-12-11T23:45:41.000' AS DateTime), CAST(N'2021-12-11T23:50:30.000' AS DateTime), N'210015', 1)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000002', CAST(N'2021-12-11T23:46:18.000' AS DateTime), CAST(N'2021-12-11T23:50:48.000' AS DateTime), N'210015', 10)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000003', CAST(N'2021-12-11T23:47:07.000' AS DateTime), CAST(N'2021-12-11T23:50:41.000' AS DateTime), N'210015', 2)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000004', CAST(N'2021-12-11T23:49:04.000' AS DateTime), CAST(N'2021-12-11T23:50:53.000' AS DateTime), N'210015', 7)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000005', CAST(N'2021-12-11T23:49:47.000' AS DateTime), CAST(N'2021-12-11T23:50:59.000' AS DateTime), N'210015', 15)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000006', CAST(N'2021-12-11T23:50:20.000' AS DateTime), CAST(N'2021-12-11T23:51:07.000' AS DateTime), N'210015', 17)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000007', CAST(N'2021-12-11T23:52:27.000' AS DateTime), CAST(N'2021-12-11T23:57:54.000' AS DateTime), N'210015', 13)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000008', CAST(N'2021-12-11T23:53:40.000' AS DateTime), CAST(N'2021-12-11T23:57:59.000' AS DateTime), N'210015', 15)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000009', CAST(N'2021-12-11T23:54:31.000' AS DateTime), CAST(N'2021-12-11T23:58:29.000' AS DateTime), N'210015', 23)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000010', CAST(N'2021-12-11T23:55:47.000' AS DateTime), CAST(N'2021-12-11T23:58:12.000' AS DateTime), N'210015', 25)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000011', CAST(N'2021-12-11T23:57:45.000' AS DateTime), CAST(N'2021-12-11T23:58:22.000' AS DateTime), N'210015', 20)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000012', CAST(N'2021-12-12T19:19:48.000' AS DateTime), CAST(N'2021-12-12T20:02:49.000' AS DateTime), N'210015', 27)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000013', CAST(N'2021-12-12T19:20:11.000' AS DateTime), CAST(N'2021-12-12T20:02:59.000' AS DateTime), N'210015', 16)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000014', CAST(N'2021-12-12T19:45:41.000' AS DateTime), CAST(N'2021-12-12T21:32:13.000' AS DateTime), N'210015', 6)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000015', CAST(N'2021-12-12T20:02:35.000' AS DateTime), CAST(N'2021-12-12T20:24:25.000' AS DateTime), N'210015', 10)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000016', CAST(N'2021-12-12T20:03:33.000' AS DateTime), CAST(N'2021-12-12T21:32:28.000' AS DateTime), N'210015', 13)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000017', CAST(N'2021-12-12T20:04:18.000' AS DateTime), CAST(N'2021-12-12T21:32:48.000' AS DateTime), N'210015', 24)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000018', CAST(N'2021-12-12T20:13:34.000' AS DateTime), CAST(N'2021-12-12T21:32:42.000' AS DateTime), N'210015', 15)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000019', CAST(N'2021-12-12T20:14:36.000' AS DateTime), CAST(N'2021-12-12T21:32:38.000' AS DateTime), N'210015', 26)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000020', CAST(N'2021-12-12T20:15:29.000' AS DateTime), CAST(N'2021-12-12T21:32:33.000' AS DateTime), N'210015', 19)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000021', CAST(N'2021-12-12T20:24:13.000' AS DateTime), CAST(N'2021-12-12T21:32:21.000' AS DateTime), N'210015', 12)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000022', CAST(N'2021-12-12T22:43:04.000' AS DateTime), CAST(N'2021-12-13T00:09:42.000' AS DateTime), N'210015', 11)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000023', CAST(N'2021-12-12T22:44:01.000' AS DateTime), CAST(N'2021-12-13T00:09:56.000' AS DateTime), N'210015', 23)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000024', CAST(N'2021-12-12T22:44:30.000' AS DateTime), CAST(N'2021-12-13T00:10:05.000' AS DateTime), N'210015', 17)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000025', CAST(N'2021-12-13T15:58:47.000' AS DateTime), CAST(N'2021-12-13T16:39:38.000' AS DateTime), N'210015', 6)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000026', CAST(N'2021-12-13T16:39:34.000' AS DateTime), CAST(N'2021-12-13T16:53:56.000' AS DateTime), N'210015', 11)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000027', CAST(N'2021-12-13T16:40:06.000' AS DateTime), CAST(N'2021-12-13T16:54:40.000' AS DateTime), N'210015', 9)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000028', CAST(N'2021-12-13T16:54:32.000' AS DateTime), CAST(N'2021-12-13T17:25:40.000' AS DateTime), N'210015', 17)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000029', CAST(N'2021-12-13T16:55:47.000' AS DateTime), CAST(N'2021-12-13T17:25:24.000' AS DateTime), N'210015', 12)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000030', CAST(N'2021-12-13T16:57:14.000' AS DateTime), CAST(N'2021-12-13T17:25:45.000' AS DateTime), N'210015', 20)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000031', CAST(N'2021-12-13T16:57:55.000' AS DateTime), CAST(N'2021-12-13T17:25:33.000' AS DateTime), N'210015', 27)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000032', CAST(N'2021-12-13T20:06:25.000' AS DateTime), CAST(N'2021-12-13T21:07:26.000' AS DateTime), N'210015', 16)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000033', CAST(N'2021-12-13T20:10:38.000' AS DateTime), CAST(N'2021-12-13T21:07:33.000' AS DateTime), N'210015', 6)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000034', CAST(N'2021-12-13T20:16:39.000' AS DateTime), CAST(N'2021-12-13T21:07:42.000' AS DateTime), N'210015', 18)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000035', CAST(N'2021-12-13T20:18:18.000' AS DateTime), CAST(N'2021-12-13T20:53:34.000' AS DateTime), N'210015', 11)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000036', CAST(N'2021-12-13T20:47:40.000' AS DateTime), CAST(N'2021-12-13T21:42:24.000' AS DateTime), N'210015', 18)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000037', CAST(N'2021-12-13T20:47:51.000' AS DateTime), CAST(N'2021-12-13T21:07:53.000' AS DateTime), N'210015', 23)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000038', CAST(N'2021-12-13T20:48:01.000' AS DateTime), CAST(N'2021-12-13T21:07:49.000' AS DateTime), N'210015', 26)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000039', CAST(N'2021-12-14T12:52:49.000' AS DateTime), CAST(N'2021-12-14T13:01:23.000' AS DateTime), N'210015', 13)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000040', CAST(N'2021-12-14T12:53:11.000' AS DateTime), CAST(N'2021-12-14T13:01:50.000' AS DateTime), N'210015', 12)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000041', CAST(N'2021-12-14T12:53:40.000' AS DateTime), CAST(N'2021-12-14T13:01:33.000' AS DateTime), N'210015', 19)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000042', CAST(N'2021-12-14T12:54:10.000' AS DateTime), CAST(N'2021-12-14T13:01:42.000' AS DateTime), N'210015', 26)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000043', CAST(N'2021-12-14T13:04:14.000' AS DateTime), CAST(N'2021-12-14T14:49:54.000' AS DateTime), N'210015', 17)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000044', CAST(N'2021-12-14T13:05:22.000' AS DateTime), CAST(N'2021-12-14T14:49:33.000' AS DateTime), N'210015', 26)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000045', CAST(N'2021-12-14T13:07:35.000' AS DateTime), CAST(N'2021-12-14T14:49:22.000' AS DateTime), N'210015', 1)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000046', CAST(N'2021-12-14T13:09:11.000' AS DateTime), CAST(N'2021-12-14T14:50:03.000' AS DateTime), N'210015', 11)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000047', CAST(N'2021-12-14T13:09:50.000' AS DateTime), CAST(N'2021-12-14T14:49:46.000' AS DateTime), N'210015', 24)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000048', CAST(N'2021-12-14T13:10:55.000' AS DateTime), CAST(N'2021-12-14T14:50:07.000' AS DateTime), N'210015', 9)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000049', CAST(N'2021-12-14T13:11:31.000' AS DateTime), CAST(N'2021-12-14T14:49:42.000' AS DateTime), N'210015', 29)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000050', CAST(N'2021-12-14T13:15:36.000' AS DateTime), CAST(N'2021-12-14T14:49:59.000' AS DateTime), N'210015', 16)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000051', CAST(N'2021-12-14T13:19:54.000' AS DateTime), CAST(N'2021-12-14T14:49:50.000' AS DateTime), N'210015', 19)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000052', CAST(N'2021-12-14T13:20:24.000' AS DateTime), CAST(N'2021-12-14T14:50:13.000' AS DateTime), N'210015', 4)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000053', CAST(N'2021-12-14T13:34:57.000' AS DateTime), CAST(N'2021-12-14T14:49:37.000' AS DateTime), N'210015', 28)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000054', CAST(N'2021-12-15T08:40:02.000' AS DateTime), CAST(N'2021-12-15T09:20:49.000' AS DateTime), N'210015', 8)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000055', CAST(N'2021-12-15T08:41:03.000' AS DateTime), CAST(N'2021-12-15T09:20:42.000' AS DateTime), N'210015', 13)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000056', CAST(N'2021-12-15T08:44:41.000' AS DateTime), CAST(N'2021-12-15T09:20:34.000' AS DateTime), N'210015', 24)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000057', CAST(N'2021-12-15T08:48:11.000' AS DateTime), CAST(N'2021-12-15T09:20:38.000' AS DateTime), N'210015', 22)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000058', CAST(N'2021-12-15T08:51:32.000' AS DateTime), CAST(N'2021-12-15T09:20:26.000' AS DateTime), N'210015', 7)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000059', CAST(N'2021-12-15T08:52:54.000' AS DateTime), CAST(N'2021-12-15T09:30:20.000' AS DateTime), N'210015', 1)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000060', CAST(N'2021-12-15T08:54:58.000' AS DateTime), CAST(N'2021-12-15T09:40:30.000' AS DateTime), N'210015', 15)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000061', CAST(N'2021-12-15T14:12:36.000' AS DateTime), CAST(N'2021-12-15T14:50:45.000' AS DateTime), N'210015', 10)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000062', CAST(N'2021-12-15T21:24:00.000' AS DateTime), CAST(N'2021-12-15T22:20:13.000' AS DateTime), N'210015', 20)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000063', CAST(N'2021-12-16T06:23:34.000' AS DateTime), CAST(N'2021-12-16T06:38:37.000' AS DateTime), N'210020', 6)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000064', CAST(N'2021-12-16T06:26:40.000' AS DateTime), CAST(N'2021-12-16T06:38:46.000' AS DateTime), N'210020', 18)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000065', CAST(N'2021-12-16T09:14:47.000' AS DateTime), CAST(N'2021-12-16T10:03:34.000' AS DateTime), N'210020', 5)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000066', CAST(N'2021-12-16T17:44:27.000' AS DateTime), CAST(N'2021-12-16T22:07:43.000' AS DateTime), N'210020', 14)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000067', CAST(N'2021-12-16T17:47:17.000' AS DateTime), CAST(N'2021-12-16T18:19:47.000' AS DateTime), N'210020', 7)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000068', CAST(N'2021-12-16T17:52:48.000' AS DateTime), CAST(N'2021-12-16T22:07:54.000' AS DateTime), N'210020', 7)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000069', CAST(N'2021-12-16T17:57:38.000' AS DateTime), CAST(N'2021-12-16T22:07:58.000' AS DateTime), N'210020', 12)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000070', CAST(N'2021-12-16T18:00:35.000' AS DateTime), CAST(N'2021-12-16T22:07:50.000' AS DateTime), N'210020', 19)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000071', CAST(N'2021-12-16T18:01:34.000' AS DateTime), CAST(N'2021-12-16T22:08:08.000' AS DateTime), N'210020', 24)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000072', CAST(N'2021-12-16T18:02:37.000' AS DateTime), CAST(N'2021-12-16T22:08:15.000' AS DateTime), N'210020', 22)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000073', CAST(N'2021-12-16T18:07:23.000' AS DateTime), CAST(N'2021-12-16T22:08:01.000' AS DateTime), N'210020', 1)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000074', CAST(N'2021-12-16T18:10:52.000' AS DateTime), CAST(N'2021-12-16T22:08:04.000' AS DateTime), N'210020', 13)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000075', CAST(N'2021-12-16T18:15:34.000' AS DateTime), CAST(N'2021-12-16T22:08:11.000' AS DateTime), N'210020', 23)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000076', CAST(N'2021-12-16T22:38:29.000' AS DateTime), CAST(N'2021-12-16T23:36:17.000' AS DateTime), N'210020', 1)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000077', CAST(N'2021-12-16T22:43:27.000' AS DateTime), CAST(N'2021-12-16T23:55:06.000' AS DateTime), N'210020', 10)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000078', CAST(N'2021-12-16T23:11:47.000' AS DateTime), CAST(N'2021-12-16T23:52:27.000' AS DateTime), N'210020', 4)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000079', CAST(N'2021-12-16T23:20:17.000' AS DateTime), CAST(N'2021-12-16T23:58:41.000' AS DateTime), N'210020', 3)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000080', CAST(N'2021-12-18T23:57:56.000' AS DateTime), CAST(N'2021-12-19T00:08:14.000' AS DateTime), N'210001', 2)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000081', CAST(N'2021-12-19T00:04:02.000' AS DateTime), CAST(N'2021-12-19T00:09:07.000' AS DateTime), N'210001', 9)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000082', CAST(N'2021-12-23T14:56:58.000' AS DateTime), CAST(N'2021-12-23T16:29:09.000' AS DateTime), N'210001', 16)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000083', CAST(N'2021-12-23T14:58:42.000' AS DateTime), CAST(N'2021-12-23T16:29:11.000' AS DateTime), N'210001', 3)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000084', CAST(N'2021-12-24T12:04:02.000' AS DateTime), CAST(N'2021-12-24T12:08:38.000' AS DateTime), N'210013', 10)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000085', CAST(N'2021-12-24T12:20:08.000' AS DateTime), CAST(N'2021-12-24T12:20:24.000' AS DateTime), N'210013', 8)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000086', CAST(N'2021-12-24T12:21:42.000' AS DateTime), CAST(N'2021-12-24T12:22:11.000' AS DateTime), N'210013', 9)
GO
INSERT [dbo].[hoadon] ([sohd], [giovao], [giora], [manv], [soban]) VALUES (N'HD0000087', CAST(N'2021-12-25T10:51:11.000' AS DateTime), CAST(N'2021-12-25T10:51:11.000' AS DateTime), N'210013', 14)
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P001', N'Gỏi cá mai', CAST(250000 AS Decimal(18, 0)), N'Dĩa', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P002', N'Gỏi sò huyết', CAST(285000 AS Decimal(18, 0)), N'Dĩa', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P003', N'Gỏi sứa tôm thịt', CAST(260000 AS Decimal(18, 0)), N'Dĩa', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P004', N'Gỏi lươn', CAST(230000 AS Decimal(18, 0)), N'Dĩa', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P005', N'Hàu sống', CAST(38000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P006', N'Hàu chưng tàu xì', CAST(45000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P007', N'Hàu nướng mọi', CAST(40000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P008', N'Hàu chiên trứng', CAST(45000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P009', N'Hàu nướng mở hành', CAST(450000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P010', N'Hàu đút lò hạnh nhân', CAST(45000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P011', N'Vẹm hấp kiểu Pháp', CAST(265000 AS Decimal(18, 0)), N'Dĩa', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P012', N'Vẹm nướng mỡ hành', CAST(265000 AS Decimal(18, 0)), N'Dĩa', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P013', N'Vẹm đút lò phô mai', CAST(265000 AS Decimal(18, 0)), N'Dĩa', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P014', N'Vẹm xào bơ', CAST(265000 AS Decimal(18, 0)), N'Dĩa', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P015', N'Sò điệp xào tỏi', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P016', N'Sò điệp nướng mỡ hành', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P017', N'Sò điệp nướng sa tế', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P018', N'Sò điệp đút lò phô mai', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P019', N'Sò điệp nướng', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P020', N'Sò điệp xào bơ', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P021', N'Sò dương xào bơ', CAST(95000 AS Decimal(18, 0)), N'Con', N'G05')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P022', N'Sò dương nướng mỡ hành', CAST(95000 AS Decimal(18, 0)), N'Con', N'G05')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P023', N'Sò dương đút lò phô mai', CAST(95000 AS Decimal(18, 0)), N'Con', N'G05')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P024', N'Sò huyết nướng', CAST(240000 AS Decimal(18, 0)), N'Dĩa', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P025', N'Sò huyết rang tiêu', CAST(260000 AS Decimal(18, 0)), N'Dĩa', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P026', N'Sò huyết rang me', CAST(260000 AS Decimal(18, 0)), N'Dĩa', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P027', N'Sò huyết Tứ Xuyên', CAST(260000 AS Decimal(18, 0)), N'Dĩa', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P028', N'Ốc hương nướng', CAST(570000 AS Decimal(18, 0)), N'Dĩa', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P029', N'Ốc nhảy nướng', CAST(275000 AS Decimal(18, 0)), N'Dĩa', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P030', N'Ốc móng tay xào tỏi', CAST(225000 AS Decimal(18, 0)), N'Dĩa', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P031', N'Ốc móng tay xào rau muống', CAST(225000 AS Decimal(18, 0)), N'Dĩa', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P032', N'Ốc móng tay xào sa tế', CAST(225000 AS Decimal(18, 0)), N'Dĩa', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P033', N'Ốc móng tay rang me', CAST(225000 AS Decimal(18, 0)), N'Dĩa', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P034', N'Ốc vòi voi ăn sống', CAST(399000 AS Decimal(18, 0)), N'100g', N'G08')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P035', N'Ốc vòi voi nấu cháo', CAST(399000 AS Decimal(18, 0)), N'100g', N'G08')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P036', N'Tu hài hấp sả', CAST(225000 AS Decimal(18, 0)), N'Con', N'G08')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P037', N'Nghêu nướng bơ', CAST(240000 AS Decimal(18, 0)), N'Dĩa', N'G09')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P038', N'Nghêu đút lò phô mai', CAST(240000 AS Decimal(18, 0)), N'Dĩa', N'G09')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P039', N'Nghêu hai cồi hấp sả', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P040', N'Nghêu hai cồi xào tỏi', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P041', N'Nghêu hai cồi nướng mỡ hành', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P042', N'Nghêu hai cồi đút lò phô mai', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P043', N'Tôm càng hấp', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P044', N'Tôm càng dầu giấm', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P045', N'Tôm càng nướng', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P046', N'Tôm càng rang me', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P047', N'Tôm càng đút lò phô mai', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P048', N'Tôm càng rang tỏi', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P049', N'Tôm hùm 3 món đặc biệt', CAST(445000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P050', N'Tôm hùm sống', CAST(415000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P051', N'Tôm hùm đút lò phô mai', CAST(415000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P052', N'Tôm hùm rang tỏi', CAST(415000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P053', N'Tôm hùm Alaska hấp', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P054', N'Tôm hùm Alaska đút lò phô mai', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P055', N'Tôm hùm Alaska nướng', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P056', N'Tôm hùm Alaska rang tỏi', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P057', N'Tôm tích cháy tỏi', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P058', N'Tôm tích nướng', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P059', N'Tôm tích rang muối', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P060', N'Tôm tích hấp', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P061', N'Tôm sú sống', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P062', N'Tôm sú đốt rượu', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P063', N'Tôm sú rang muối', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P064', N'Tôm sú hấp bia', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P065', N'Tôm mũ ni hấp', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P066', N'Tôm mũ ni đút lò phô mai', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P067', N'Tôm mũ ni nướng', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P068', N'Tôm mũ ni rang tỏi', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P069', N'Ghẹ nướng', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P070', N'Ghẹ hấp', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P071', N'Ghẹ rang muối', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P072', N'Ghẹ rang me', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P073', N'Cua nướng', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P074', N'Cua sốt ớt Singapore', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P075', N'Cua rang muối', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P076', N'Cua hấp bia', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P077', N'Cua hoàng đế 3 món', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P078', N'Cua hoàng đế hấp', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P079', N'Cua hoàng đế nướng', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P080', N'Cua hoàng đế rang muối', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P081', N'Cua hai da hấp', CAST(180000 AS Decimal(18, 0)), N'100g', N'G20')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P082', N'Cua hai da nướng', CAST(180000 AS Decimal(18, 0)), N'100g', N'G20')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P083', N'Cá trứng nướng', CAST(20000 AS Decimal(18, 0)), N'Con', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P084', N'Cá trứng chiên giòn', CAST(20000 AS Decimal(18, 0)), N'Con', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P085', N'Cá bớp nướng', CAST(335000 AS Decimal(18, 0)), N'Dĩa', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P086', N'Cá mú sống nướng', CAST(85000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P087', N'Cá mú hấp Đài Loan', CAST(85000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P088', N'Cá chình xào lăn', CAST(130000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P089', N'Cá chình nấu măng chua', CAST(130000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P090', N'Cá mặt quỷ nướng muối ớt', CAST(225000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P091', N'Cá mặt quỷ hấp Đài Loan', CAST(225000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P092', N'Cá mặt quỷ chưng tương', CAST(225000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P093', N'Mực ống chiên nước mắm', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P094', N'Mực ống hấp', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P095', N'Mực ống nướng', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P096', N'Mực trứng nướng', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P097', N'Mực trứng hấp', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P098', N'Râu mực chiên giòn', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P099', N'Râu mực chiên muối ớt', CAST(225000 AS Decimal(18, 0)), N'Dĩa', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P100', N'Chả giò tôm thịt', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G23')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P101', N'Chả giò hải sản', CAST(49000 AS Decimal(18, 0)), N'Cuốn', N'G23')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P102', N'Gỏi cuốn tôm thịt', CAST(45000 AS Decimal(18, 0)), N'Cuốn', N'G23')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P103', N'Lươn nướng muối ớt', CAST(230000 AS Decimal(18, 0)), N'Dĩa', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P104', N'Lươn um nước dừa', CAST(230000 AS Decimal(18, 0)), N'Dĩa', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P105', N'Lươn xào lăn', CAST(230000 AS Decimal(18, 0)), N'Dĩa', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P106', N'Lươn chiên giòn', CAST(175000 AS Decimal(18, 0)), N'Dĩa', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P107', N'Xà lách dầu giấm', CAST(105000 AS Decimal(18, 0)), N'Dĩa', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P108', N'Xà lách cá ngừ', CAST(235000 AS Decimal(18, 0)), N'Dĩa', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P109', N'Xà lách cá hồi xông khói', CAST(210000 AS Decimal(18, 0)), N'Dĩa', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P110', N'Xà lách cá hồi Teriyaki', CAST(270000 AS Decimal(18, 0)), N'Dĩa', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P111', N'Rau muống xào tỏi', CAST(105000 AS Decimal(18, 0)), N'Dĩa', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P112', N'Bông bí xào tỏi', CAST(105000 AS Decimal(18, 0)), N'Dĩa', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P113', N'Rau luộc thập cẩm kho quẹt', CAST(165000 AS Decimal(18, 0)), N'Dĩa', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P114', N'Chả giò tôm thịt', CAST(105000 AS Decimal(18, 0)), N'Dĩa', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P115', N'Khổ qua xào trứng', CAST(105000 AS Decimal(18, 0)), N'Dĩa', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P116', N'Rau lang hấp', CAST(105000 AS Decimal(18, 0)), N'Dĩa', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P117', N'Súp cua bắp măng', CAST(65000 AS Decimal(18, 0)), N'Chén', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P118', N'Súp cua vi cá', CAST(32000 AS Decimal(18, 0)), N'Chén', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P119', N'Súp rong biển hải sản', CAST(65000 AS Decimal(18, 0)), N'Chén', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P120', N'Súp bong bóng cá cua', CAST(65000 AS Decimal(18, 0)), N'Chén', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P121', N'Cháo cá', CAST(75000 AS Decimal(18, 0)), N'Chén', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P122', N'Cháo tôm', CAST(75000 AS Decimal(18, 0)), N'Chén', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P123', N'Cháo cua', CAST(75000 AS Decimal(18, 0)), N'Chén', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P124', N'Cháo lươn', CAST(75000 AS Decimal(18, 0)), N'Chén', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P125', N'Cháo hải sản', CAST(75000 AS Decimal(18, 0)), N'Chén', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P126', N'Cháo bào ngư', CAST(160000 AS Decimal(18, 0)), N'Chén', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P127', N'Lẩu canh chua truyền thống', CAST(450000 AS Decimal(18, 0)), N'Lẩu', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P128', N'Lẩu măng chua đầu cá hồi', CAST(405000 AS Decimal(18, 0)), N'Lẩu', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P129', N'Lẩu hải sản', CAST(540000 AS Decimal(18, 0)), N'Lẩu', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P130', N'Lẩu Thái Lan hải sản', CAST(540000 AS Decimal(18, 0)), N'Lẩu', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P131', N'Lẩu nấm hải sản', CAST(495000 AS Decimal(18, 0)), N'Lẩu', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P132', N'Lẩu gà lá giang', CAST(450000 AS Decimal(18, 0)), N'Lẩu', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P133', N'Cơm trắng', CAST(49000 AS Decimal(18, 0)), N'Thố', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P134', N'Bánh mì', CAST(49000 AS Decimal(18, 0)), N'Dĩa', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P135', N'Bánh mì bơ tỏi', CAST(69000 AS Decimal(18, 0)), N'Dĩa', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P136', N'Bánh mì đút lò phô mai', CAST(69000 AS Decimal(18, 0)), N'Dĩa', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P137', N'Rau lẩu', CAST(49000 AS Decimal(18, 0)), N'Dĩa', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P138', N'Bún', CAST(49000 AS Decimal(18, 0)), N'Dĩa', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P139', N'Cơm chiên tỏi', CAST(145000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P140', N'Cơm chiên cá mặn', CAST(225000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P141', N'Cơm chiên cua', CAST(225000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P142', N'Cơm chiên tôm', CAST(225000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P143', N'Cơm Dương Châu', CAST(225000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P144', N'Cơm tay cầm hải sản', CAST(255000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P145', N'Cơm tay cầm bò', CAST(255000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P146', N'Cơm cháy hải sản', CAST(275000 AS Decimal(18, 0)), N'Thố', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P147', N'Mì xào thập cẩm', CAST(250000 AS Decimal(18, 0)), N'Dĩa', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P148', N'Bún gạo xào thập cẩm', CAST(250000 AS Decimal(18, 0)), N'Dĩa', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P149', N'Miến xào thịt cua', CAST(320000 AS Decimal(18, 0)), N'Thố', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P150', N'Miến xào cua con', CAST(95000 AS Decimal(18, 0)), N'100g', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P151', N'Sting Đỏ', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P152', N'7 Up', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P153', N'Coca Cola', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P154', N'Pepsi', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P155', N'Sữa Đậu Nành', CAST(10000 AS Decimal(18, 0)), N'Ly', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P156', N'Mountain Dew', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0001', N'Cua Hoàng Đế', CAST(2000000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0002', N'Tôm Hùm Alaska', CAST(1400000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0003', N'Mực Ống', CAST(550000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0004', N'Ghẹ Đỏ', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0005', N'Tôm Tích', CAST(760000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0006', N'Hàu Biển', CAST(44000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0007', N'Sò Điệp', CAST(120000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0008', N'Sò Dương', CAST(140000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0009', N'Ốc Vòi Voi', CAST(990000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0010', N'Tu Hài', CAST(470000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0011', N'Ốc Móng Tay', CAST(520000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0012', N'Sò Huyết', CAST(110000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0013', N'Lươn', CAST(140000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0014', N'Cá Mai', CAST(180000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0015', N'Vẹm', CAST(100000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0016', N'Ốc Hương', CAST(690000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0017', N'Ốc Nhảy', CAST(170000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0018', N'Tôm Càng', CAST(430000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0019', N'Tôm Hùm', CAST(800000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0020', N'Sứa', CAST(80000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0021', N'Cua Hai Da', CAST(680000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0022', N'Cá Trứng', CAST(90000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0023', N'Cá Bóp', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0024', N'Cá Mú', CAST(200000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0025', N'Cá Chình', CAST(270000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0026', N'Cá Mặt Quỷ', CAST(310000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0027', N'Mực Ống', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0028', N'Mực Trứng', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0029', N'Cá Ngừ', CAST(150000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0030', N'Cá Hồi', CAST(270000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0031', N'Vi Cá', CAST(700000 AS Decimal(18, 0)), N'100g', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0032', N'Rau Muống', CAST(8000 AS Decimal(18, 0)), N'kg', N'SUP02')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0033', N'Rong biển', CAST(75000 AS Decimal(18, 0)), N'100g', N'SUP02')
GO
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt]) VALUES (N'SUP01', N'Nhà Phân Phối Hải Sản QTĐ', N'400 Lê Văn Việt, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', N'0385512354')
GO
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt]) VALUES (N'SUP02', N'Nhà Phân Phối Rau Sạch QTĐ', N'200 Lê Văn Việt, Thành phố Thủ Đức, Thành phố Hồ Chí Minh', N'0325846227')
GO
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt]) VALUES (N'SUP03', N'Đại Lý Bia Sài Gòn', N'23, Đường Số 3, Phường Hiệp Bình Chánh, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0903923412')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210001', N'Phan Khánh Duy', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'Nam', N'11 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254130', N'Quản Lý', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210002', N'Nguyễn Hữu An', CAST(N'1986-02-01T00:00:00.000' AS DateTime), N'Nam', N'21 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254131', N'Bếp Trưởng', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210003', N'Phạm Minh Hiếu', CAST(N'1989-03-11T00:00:00.000' AS DateTime), N'Nam', N'31 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254132', N'Thủ Kho', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210004', N'Trần Mặc Khải', CAST(N'1989-04-21T00:00:00.000' AS DateTime), N'Nam', N'41 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254133', N'Kế Toán Trưởng', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210005', N'Trần Tấn Nhựt', CAST(N'1989-05-05T00:00:00.000' AS DateTime), N'Nam', N'51 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254134', N'Giám Sát Nhà Hàng', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210006', N'Trần Đăng Chương', CAST(N'1989-02-01T00:00:00.000' AS DateTime), N'Nam', N'61 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254135', N'Nhân Viên Chạy Bàn', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210007', N'Lê Quang Khánh', CAST(N'1999-03-01T00:00:00.000' AS DateTime), N'Nam', N'71 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254136', N'Nhân Viên Vệ Sinh', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210008', N'Lê Anh Tú', CAST(N'1999-04-01T00:00:00.000' AS DateTime), N'Nam', N'81 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254137', N'Nhân Viên Kho', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210009', N'Nguyễn Anh Tú', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'Nam', N'91 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254138', N'Nhân Viên Phục Vụ', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210010', N'Trần Văn Tùng', CAST(N'1999-11-01T00:00:00.000' AS DateTime), N'Nam', N'101 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254139', N'Nhân Viên Bếp', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210011', N'Nguyễn Phú Quốc', CAST(N'1999-07-01T00:00:00.000' AS DateTime), N'Nam', N'111 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254140', N'Nhân Viên Bếp', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210012', N'Lê Thị Ngọc', CAST(N'1994-01-06T00:00:00.000' AS DateTime), N'Nữ', N'121 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254141', N'Nhân Viên Kế Toán', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210013', N'Nguyễn Thị Thanh', CAST(N'1995-07-11T00:00:00.000' AS DateTime), N'Nữ', N'131 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254142', N'Thu Ngân', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210014', N'Phạm Tuấn Tú', CAST(N'1998-06-06T00:00:00.000' AS DateTime), N'Nam', N'141 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254143', N'Nhân Viên Kho', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210015', N'Phan Thị Thanh', CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'Nữ', N'151 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254144', N'Nhân Viên Phục Vụ', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210016', N'Trần Văn Toàn', CAST(N'1993-11-06T00:00:00.000' AS DateTime), N'Nam', N'161 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254145', N'Bảo Vệ', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210017', N'Nguyễn Khánh Duy', CAST(N'1998-07-02T19:22:00.000' AS DateTime), N'Nam', N'171 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254146', N'Nhân Viên Vệ Sinh', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210018', N'Trần Thanh Thảo', CAST(N'1997-03-20T19:22:00.000' AS DateTime), N'Nữ', N'181 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254147', N'Thu Ngân', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210019', N'Nguyễn Thu Thảo', CAST(N'1987-07-31T19:22:00.000' AS DateTime), N'Nữ', N'191 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254148', N'Nhân Viên Bếp', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210020', N'Võ Ngọc Kim Khánh', CAST(N'1996-07-30T00:00:00.000' AS DateTime), N'Nữ', N'201 Lê Văn Việt, Tăng Nhơn Phú A, TP Thủ Đức, Thành phố Hồ Chí Minh', N'0383254149', N'Nhân Viên Phục Vụ', N'123456')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G01', N'Gỏi')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G02', N'Hàu')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G03', N'Vẹm')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G04', N'Sò Điệp')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G05', N'Sò Dương')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G06', N'Sò Huyết')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G07', N'Ốc')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G08', N'Ốc Vòi Voi')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G09', N'Nghêu')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G10', N'Nghêu Hai Cồi')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G11', N'Tôm Càng')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G12', N'Tôm Hùm')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G13', N'Tôm Hùm Alaska')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G14', N'Tôm Tích')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G15', N'Tôm Sú')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G16', N'Tôm Mũ Ni')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G17', N'Ghẹ')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G18', N'Cua')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G19', N'Cua Hoàng Đế')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G20', N'Cua Hai Da')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G21', N'Cá')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G22', N'Mực')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G23', N'Các Loại Cuốn')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G24', N'Lươn')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G25', N'Xà Lách')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G26', N'Các Loại Rau')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G27', N'Súp')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G28', N'Cháo')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G29', N'Lẩu')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G30', N'Các Món Ăn Kèm')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G31', N'Cơm')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G32', N'Mì')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G33', N'Nước Giải Khát')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000001', CAST(N'2021-12-13T15:59:50.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000002', CAST(N'2021-12-16T13:58:02.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000003', CAST(N'2021-12-16T13:59:33.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000004', CAST(N'2021-12-16T14:06:48.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000005', CAST(N'2021-12-16T14:08:12.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000006', CAST(N'2021-12-16T14:09:10.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000007', CAST(N'2021-12-16T14:10:26.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieunhap] ([sopn], [ngaynhap], [manv]) VALUES (N'PN0000008', CAST(N'2021-12-16T22:20:54.000' AS DateTime), N'210001')
GO
INSERT [dbo].[phieuxuat] ([sopx], [ngayxuat], [manv]) VALUES (N'PX0000001', CAST(N'2021-12-13T16:28:23.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieuxuat] ([sopx], [ngayxuat], [manv]) VALUES (N'PX0000002', CAST(N'2021-12-13T16:46:13.000' AS DateTime), N'210015')
GO
INSERT [dbo].[phieuxuat] ([sopx], [ngayxuat], [manv]) VALUES (N'PX0000003', CAST(N'2021-12-16T22:47:26.000' AS DateTime), N'210001')
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD FOREIGN KEY([mamon])
REFERENCES [dbo].[monan] ([mamon])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitiethoadon]  WITH CHECK ADD FOREIGN KEY([sohd])
REFERENCES [dbo].[hoadon] ([sohd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD FOREIGN KEY([manl])
REFERENCES [dbo].[nguyenlieu] ([manl])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietphieunhap]  WITH CHECK ADD FOREIGN KEY([sopn])
REFERENCES [dbo].[phieunhap] ([sopn])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietphieuxuat]  WITH CHECK ADD FOREIGN KEY([manl])
REFERENCES [dbo].[nguyenlieu] ([manl])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chitietphieuxuat]  WITH CHECK ADD FOREIGN KEY([sopx])
REFERENCES [dbo].[phieuxuat] ([sopx])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hoadon]  WITH CHECK ADD FOREIGN KEY([soban])
REFERENCES [dbo].[ban] ([soban])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[monan]  WITH CHECK ADD FOREIGN KEY([manhom])
REFERENCES [dbo].[nhommon] ([manhom])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nguyenlieu]  WITH CHECK ADD  CONSTRAINT [FK__nguyenlieu__mancc] FOREIGN KEY([mancc])
REFERENCES [dbo].[nhacungcap] ([mancc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[nguyenlieu] CHECK CONSTRAINT [FK__nguyenlieu__mancc]
GO
ALTER TABLE [dbo].[phieunhap]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[phieuxuat]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[nhanvien] ([manv])
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[sp_DanhSachMonAnCuaBan]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DanhSachMonAnCuaBan]
	(
		@soban int
	)
	as
		begin
			--Lấy ra danh sách món ăn
			select hd.sohd, m.mamon, m.tenmon, cthd.soluong , m.dvt, m.giatien, (cthd.soluong * m.giatien) as 'thanhtien'
			from hoadon hd, monan m, chitiethoadon cthd
			where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giora = hd.giovao and hd.soban = @soban --Ngày là null : chưa thanh toán
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_datBan]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_datBan] 
(@sohd varchar(10), @soban int, @giodat datetime, @manv varchar(10))
as
	begin
		declare @now datetime;
		set @now = getdate();
		update ban set trangthai = 0 where soban = @soban;
		insert into hoadon(sohd, giovao,giora, soban, manv) 
		values (@sohd, @giodat,@giodat,@soban, @manv); 
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuCacNamGanDay]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DoanhThuCacNamGanDay]
(@count int)
as
	begin
		declare @CacNamGanDay table (nam int, doanhthu decimal);
		declare @nam int;
		declare @doanhthu decimal;
			

		while @count > 0
			begin
				set @nam = YEAR(DATEADD(year, 1 - @count, CAST(GETDATE() AS date)));

				select @doanhthu = sum(m.giatien * cthd.soluong)
				from hoadon hd, monan m, chitiethoadon cthd
				where hd.sohd = cthd.sohd and hd.giovao != hd.giora and m.mamon = cthd.mamon and year(hd.giora) = @nam;

				if(@doanhthu is null)
					begin
						insert into @CacNamGanDay(nam, doanhthu) values (@nam, 0);
					end
				else
					begin
						insert into @CacNamGanDay(nam, doanhthu) values (@nam, @doanhthu);
					end

				set @count = @count - 1;
			end

		select * from @CacNamGanDay
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuCacNgayTrongThang]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DoanhThuCacNgayTrongThang]
(@thang int, @nam int)
as
	begin
		select day(hd.giora) as 'ngay', sum(m.giatien * cthd.soluong) as 'doanhthu'
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giovao != hd.giora and MONTH(hd.giora) = @thang and YEAR(hd.giora) = @nam
		group by day(hd.giora)
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuCacNgayTrongTuan]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DoanhThuCacNgayTrongTuan]
(@ngay datetime)
as
begin
	declare @CacNgayTrongTuan table (thu int, doanhthu decimal);
	declare @doanhthu decimal;
	declare @loop_before int;
	declare @loop_after int;
		
	--Lấy ra doanh thu của @ngay
	select @doanhthu = sum(m.giatien * cthd.soluong)
	from hoadon hd, monan m, chitiethoadon cthd
	where 
		hd.sohd = cthd.sohd and 
		m.mamon = cthd.mamon and 
		hd.giovao != hd.giora and 
		DAY(hd.giora) = DAY(@ngay) and 
		MONTH(hd.giora) = MONTH(@ngay) and 
		YEAR(hd.giora) = YEAR(@ngay)

	if(DATEPART(dw,@ngay) = 1)
		begin
			set @loop_before = 6;
			set @loop_after = 0;
		end
	else
		begin
			set @loop_before = DATEPART(dw,@ngay) - 2;
			set @loop_after = 7 - DATEPART(dw,@ngay) + 1;
		end
		

	declare @ngayxet datetime;
	set @ngayxet = @ngay
	declare @doanhthuxet decimal;
	while @loop_before != 0
		begin
			set @ngayxet = DATEADD(day, -1, CAST(@ngayxet AS date));

				
			select @doanhthuxet = sum(m.giatien * cthd.soluong)
			from hoadon hd, monan m, chitiethoadon cthd
			where 
				hd.sohd = cthd.sohd and 
				m.mamon = cthd.mamon and 
				hd.giovao != hd.giora and 
				DAY(hd.giora) = DAY(@ngayxet) and 
				MONTH(hd.giora) = MONTH(@ngayxet) and 
				YEAR(hd.giora) = YEAR(@ngayxet)

			if(@doanhthuxet is null)
			begin
				set @doanhthuxet = 0
			end

			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngayxet), @doanhthuxet);

			set @loop_before = @loop_before -1;

		end
		
		
	if(@doanhthu is null)
		begin
			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngay), 0);
		end
	else
		begin
			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngay), @doanhthu);
		end

	set @ngayxet = @ngay
	while @loop_after != 0
		begin
			set @ngayxet = DATEADD(day, 1, CAST(@ngayxet AS date));

				
			select @doanhthuxet = sum(m.giatien * cthd.soluong)
			from hoadon hd, monan m, chitiethoadon cthd
			where 
				hd.sohd = cthd.sohd and 
				m.mamon = cthd.mamon and 
				hd.giovao != hd.giora and 
				DAY(hd.giora) = DAY(@ngayxet) and 
				MONTH(hd.giora) = MONTH(@ngayxet) and 
				YEAR(hd.giora) = YEAR(@ngayxet)

			if(@doanhthuxet is null)
			begin
				set @doanhthuxet = 0
			end

			insert into @CacNgayTrongTuan(thu, doanhthu) values(DATEPART(dw,@ngayxet), @doanhthuxet);

			set @loop_after = @loop_after - 1;
		end

	select * from @CacNgayTrongTuan order by thu;
end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuCacQuyTrongNam]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DoanhThuCacQuyTrongNam]
(@nam int)
as
	begin
		declare @CacQuyTrongNam table (quy int, doanhthu decimal);
		declare @quy int;
		declare @doanhthu decimal;

		set @quy = 1;

		while @quy <= 4
			begin
				select @doanhthu = sum(m.giatien * cthd.soluong)
				from hoadon hd, monan m, chitiethoadon cthd
				where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giovao != hd.giora and datepart(quarter,hd.giora) = @quy and YEAR(hd.giora) = @nam
				group by datepart(quarter,hd.giora)

				if(@doanhthu is null)
					begin
						insert into @CacQuyTrongNam(quy, doanhthu) values (@quy, 0);
					end
				else
					begin
						insert into @CacQuyTrongNam(quy, doanhthu) values (@quy, @doanhthu);
					end

				set @quy = @quy + 1;
			end

		select * from @CacQuyTrongNam
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuCacThangTrongNam]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DoanhThuCacThangTrongNam]
(@nam int)
as
	begin
		declare @CacThangTrongNam table (thang int, doanhthu decimal);
		declare @thang int;
		declare @doanhthu decimal;

		set @thang = 1;

		while @thang <= 12
			begin
				select @doanhthu = sum(m.giatien * cthd.soluong)
				from hoadon hd, monan m, chitiethoadon cthd
				where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giovao != hd.giora and month(hd.giora) = @thang and YEAR(hd.giora) = @nam
				group by month(hd.giora)

				if(@doanhthu is null)
					begin
						insert into @CacThangTrongNam(thang, doanhthu) values (@thang, 0);
					end
				else
					begin
						insert into @CacThangTrongNam(thang, doanhthu) values (@thang, @doanhthu);
					end

				set @thang = @thang + 1;
			end

		select * from @CacThangTrongNam
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_DoanhThuTuNgayDenNgay]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DoanhThuTuNgayDenNgay] 
(@tungay datetime, @denngay datetime )
as
	begin
		--Khai báo biến
		declare @doanhthu decimal
		--Tính doanh thu
		select @doanhthu = sum(m.giatien * cthd.soluong) 
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and giora between @tungay and @denngay
		--Trả về
		select @doanhthu
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThanhToan]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThanhToan]
(@sohd varchar(10), @giora datetime )
as
	begin
		--Khai báo biến
		declare @soban int;
		--Gán giá trị
		select @soban = soban from hoadon where sohd = @sohd;
		--Cập nhật thời gian thanh toán của hoá đơn
		update hoadon set giora = @giora where sohd = @sohd;
		--Cập nhật trạng thái của bàn
		update ban set trangthai = 1 where soban = @soban;
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_ThongKeSoLuongMonAnBanDuocTuNgayDenNgay]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_ThongKeSoLuongMonAnBanDuocTuNgayDenNgay]
	(@tungay datetime, @denngay datetime)
	as
		begin
			select n.manhom, n.tennhom, m.mamon, m.tenmon, m.dvt, m.giatien , x.soluong
			from monan m, nhommon n, (select c.mamon, sum(c.soluong) as 'soluong'
										from hoadon h, chitiethoadon c
										where
											h.sohd = c.sohd and
											h.giora between @tungay and @denngay and
											h.giovao != h.giora
										group by c.mamon ) as x
			where x.mamon = m.mamon and m.manhom = n.manhom
			order by x.soluong desc
		end
GO
/****** Object:  StoredProcedure [dbo].[sp_TinhTienCuaHoaDon]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TinhTienCuaHoaDon]
(@sohd varchar(10))
as
	begin
		declare @tongtien decimal
		
		select @tongtien = sum(m.giatien * cthd.soluong) 
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and 
			m.mamon = cthd.mamon and hd.sohd = @sohd
		
		select @tongtien
	end
GO
/****** Object:  StoredProcedure [dbo].[sp_TonKhoCuaNguyenLieu]    Script Date: 12/25/2021 10:59:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_TonKhoCuaNguyenLieu]
(@nguyenlieu int)
as 
	begin
		declare @soluongtrongphieunhap int;
		declare @soluongtrongphieuxuat int;
		declare @tonkho int;
		--Lấy số lượng đã nhập
		select @soluongtrongphieunhap = sum(soluong)
		from chitietphieunhap ct
		where manl = @nguyenlieu
		group by manl
		--Lấy số lượng đã xuất
		select @soluongtrongphieuxuat = sum(soluong)
		from chitietphieuxuat
		where manl = @nguyenlieu
		group by manl
		--Nếu chưa xuất thì là null -> số lượng = 0
		if(@soluongtrongphieuxuat is null)
			begin
				set @soluongtrongphieuxuat = 0
			end
		--Tồn kho là số lượng đã nhập - số lượng đã xuất
		set @tonkho = @soluongtrongphieunhap - @soluongtrongphieuxuat;
		if(@tonkho is null) 
			begin
				set @tonkho = 0
			end
		select @tonkho
	end
GO
