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
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P001', N'G???i c?? mai', CAST(250000 AS Decimal(18, 0)), N'D??a', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P002', N'G???i s?? huy???t', CAST(285000 AS Decimal(18, 0)), N'D??a', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P003', N'G???i s???a t??m th???t', CAST(260000 AS Decimal(18, 0)), N'D??a', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P004', N'G???i l????n', CAST(230000 AS Decimal(18, 0)), N'D??a', N'G01')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P005', N'H??u s???ng', CAST(38000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P006', N'H??u ch??ng t??u x??', CAST(45000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P007', N'H??u n?????ng m???i', CAST(40000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P008', N'H??u chi??n tr???ng', CAST(45000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P009', N'H??u n?????ng m??? h??nh', CAST(450000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P010', N'H??u ????t l?? h???nh nh??n', CAST(45000 AS Decimal(18, 0)), N'Con', N'G02')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P011', N'V???m h???p ki???u Ph??p', CAST(265000 AS Decimal(18, 0)), N'D??a', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P012', N'V???m n?????ng m??? h??nh', CAST(265000 AS Decimal(18, 0)), N'D??a', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P013', N'V???m ????t l?? ph?? mai', CAST(265000 AS Decimal(18, 0)), N'D??a', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P014', N'V???m x??o b??', CAST(265000 AS Decimal(18, 0)), N'D??a', N'G03')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P015', N'S?? ??i???p x??o t???i', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P016', N'S?? ??i???p n?????ng m??? h??nh', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P017', N'S?? ??i???p n?????ng sa t???', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P018', N'S?? ??i???p ????t l?? ph?? mai', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P019', N'S?? ??i???p n?????ng', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P020', N'S?? ??i???p x??o b??', CAST(55000 AS Decimal(18, 0)), N'Con', N'G04')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P021', N'S?? d????ng x??o b??', CAST(95000 AS Decimal(18, 0)), N'Con', N'G05')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P022', N'S?? d????ng n?????ng m??? h??nh', CAST(95000 AS Decimal(18, 0)), N'Con', N'G05')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P023', N'S?? d????ng ????t l?? ph?? mai', CAST(95000 AS Decimal(18, 0)), N'Con', N'G05')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P024', N'S?? huy???t n?????ng', CAST(240000 AS Decimal(18, 0)), N'D??a', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P025', N'S?? huy???t rang ti??u', CAST(260000 AS Decimal(18, 0)), N'D??a', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P026', N'S?? huy???t rang me', CAST(260000 AS Decimal(18, 0)), N'D??a', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P027', N'S?? huy???t T??? Xuy??n', CAST(260000 AS Decimal(18, 0)), N'D??a', N'G06')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P028', N'???c h????ng n?????ng', CAST(570000 AS Decimal(18, 0)), N'D??a', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P029', N'???c nh???y n?????ng', CAST(275000 AS Decimal(18, 0)), N'D??a', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P030', N'???c m??ng tay x??o t???i', CAST(225000 AS Decimal(18, 0)), N'D??a', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P031', N'???c m??ng tay x??o rau mu???ng', CAST(225000 AS Decimal(18, 0)), N'D??a', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P032', N'???c m??ng tay x??o sa t???', CAST(225000 AS Decimal(18, 0)), N'D??a', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P033', N'???c m??ng tay rang me', CAST(225000 AS Decimal(18, 0)), N'D??a', N'G07')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P034', N'???c v??i voi ??n s???ng', CAST(399000 AS Decimal(18, 0)), N'100g', N'G08')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P035', N'???c v??i voi n???u ch??o', CAST(399000 AS Decimal(18, 0)), N'100g', N'G08')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P036', N'Tu h??i h???p s???', CAST(225000 AS Decimal(18, 0)), N'Con', N'G08')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P037', N'Ngh??u n?????ng b??', CAST(240000 AS Decimal(18, 0)), N'D??a', N'G09')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P038', N'Ngh??u ????t l?? ph?? mai', CAST(240000 AS Decimal(18, 0)), N'D??a', N'G09')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P039', N'Ngh??u hai c???i h???p s???', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P040', N'Ngh??u hai c???i x??o t???i', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P041', N'Ngh??u hai c???i n?????ng m??? h??nh', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P042', N'Ngh??u hai c???i ????t l?? ph?? mai', CAST(59000 AS Decimal(18, 0)), N'100g', N'G10')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P043', N'T??m c??ng h???p', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P044', N'T??m c??ng d???u gi???m', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P045', N'T??m c??ng n?????ng', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P046', N'T??m c??ng rang me', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P047', N'T??m c??ng ????t l?? ph?? mai', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P048', N'T??m c??ng rang t???i', CAST(179000 AS Decimal(18, 0)), N'100g', N'G11')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P049', N'T??m h??m 3 m??n ?????c bi???t', CAST(445000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P050', N'T??m h??m s???ng', CAST(415000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P051', N'T??m h??m ????t l?? ph?? mai', CAST(415000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P052', N'T??m h??m rang t???i', CAST(415000 AS Decimal(18, 0)), N'100g', N'G12')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P053', N'T??m h??m Alaska h???p', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P054', N'T??m h??m Alaska ????t l?? ph?? mai', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P055', N'T??m h??m Alaska n?????ng', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P056', N'T??m h??m Alaska rang t???i', CAST(280000 AS Decimal(18, 0)), N'100g', N'G13')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P057', N'T??m t??ch ch??y t???i', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P058', N'T??m t??ch n?????ng', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P059', N'T??m t??ch rang mu???i', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P060', N'T??m t??ch h???p', CAST(315000 AS Decimal(18, 0)), N'100g', N'G14')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P061', N'T??m s?? s???ng', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P062', N'T??m s?? ?????t r?????u', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P063', N'T??m s?? rang mu???i', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P064', N'T??m s?? h???p bia', CAST(95000 AS Decimal(18, 0)), N'100g', N'G15')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P065', N'T??m m?? ni h???p', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P066', N'T??m m?? ni ????t l?? ph?? mai', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P067', N'T??m m?? ni n?????ng', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P068', N'T??m m?? ni rang t???i', CAST(220000 AS Decimal(18, 0)), N'100g', N'G16')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P069', N'Gh??? n?????ng', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P070', N'Gh??? h???p', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P071', N'Gh??? rang mu???i', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P072', N'Gh??? rang me', CAST(165000 AS Decimal(18, 0)), N'100g', N'G17')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P073', N'Cua n?????ng', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P074', N'Cua s???t ???t Singapore', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P075', N'Cua rang mu???i', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P076', N'Cua h???p bia', CAST(95000 AS Decimal(18, 0)), N'100g', N'G18')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P077', N'Cua ho??ng ????? 3 m??n', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P078', N'Cua ho??ng ????? h???p', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P079', N'Cua ho??ng ????? n?????ng', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P080', N'Cua ho??ng ????? rang mu???i', CAST(480000 AS Decimal(18, 0)), N'100g', N'G19')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P081', N'Cua hai da h???p', CAST(180000 AS Decimal(18, 0)), N'100g', N'G20')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P082', N'Cua hai da n?????ng', CAST(180000 AS Decimal(18, 0)), N'100g', N'G20')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P083', N'C?? tr???ng n?????ng', CAST(20000 AS Decimal(18, 0)), N'Con', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P084', N'C?? tr???ng chi??n gi??n', CAST(20000 AS Decimal(18, 0)), N'Con', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P085', N'C?? b???p n?????ng', CAST(335000 AS Decimal(18, 0)), N'D??a', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P086', N'C?? m?? s???ng n?????ng', CAST(85000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P087', N'C?? m?? h???p ????i Loan', CAST(85000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P088', N'C?? ch??nh x??o l??n', CAST(130000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P089', N'C?? ch??nh n???u m??ng chua', CAST(130000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P090', N'C?? m???t qu??? n?????ng mu???i ???t', CAST(225000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P091', N'C?? m???t qu??? h???p ????i Loan', CAST(225000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P092', N'C?? m???t qu??? ch??ng t????ng', CAST(225000 AS Decimal(18, 0)), N'100g', N'G21')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P093', N'M???c ???ng chi??n n?????c m???m', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P094', N'M???c ???ng h???p', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P095', N'M???c ???ng n?????ng', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P096', N'M???c tr???ng n?????ng', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P097', N'M???c tr???ng h???p', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P098', N'R??u m???c chi??n gi??n', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P099', N'R??u m???c chi??n mu???i ???t', CAST(225000 AS Decimal(18, 0)), N'D??a', N'G22')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P100', N'Ch??? gi?? t??m th???t', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G23')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P101', N'Ch??? gi?? h???i s???n', CAST(49000 AS Decimal(18, 0)), N'Cu???n', N'G23')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P102', N'G???i cu???n t??m th???t', CAST(45000 AS Decimal(18, 0)), N'Cu???n', N'G23')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P103', N'L????n n?????ng mu???i ???t', CAST(230000 AS Decimal(18, 0)), N'D??a', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P104', N'L????n um n?????c d???a', CAST(230000 AS Decimal(18, 0)), N'D??a', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P105', N'L????n x??o l??n', CAST(230000 AS Decimal(18, 0)), N'D??a', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P106', N'L????n chi??n gi??n', CAST(175000 AS Decimal(18, 0)), N'D??a', N'G24')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P107', N'X?? l??ch d???u gi???m', CAST(105000 AS Decimal(18, 0)), N'D??a', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P108', N'X?? l??ch c?? ng???', CAST(235000 AS Decimal(18, 0)), N'D??a', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P109', N'X?? l??ch c?? h???i x??ng kh??i', CAST(210000 AS Decimal(18, 0)), N'D??a', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P110', N'X?? l??ch c?? h???i Teriyaki', CAST(270000 AS Decimal(18, 0)), N'D??a', N'G25')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P111', N'Rau mu???ng x??o t???i', CAST(105000 AS Decimal(18, 0)), N'D??a', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P112', N'B??ng b?? x??o t???i', CAST(105000 AS Decimal(18, 0)), N'D??a', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P113', N'Rau lu???c th???p c???m kho qu???t', CAST(165000 AS Decimal(18, 0)), N'D??a', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P114', N'Ch??? gi?? t??m th???t', CAST(105000 AS Decimal(18, 0)), N'D??a', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P115', N'Kh??? qua x??o tr???ng', CAST(105000 AS Decimal(18, 0)), N'D??a', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P116', N'Rau lang h???p', CAST(105000 AS Decimal(18, 0)), N'D??a', N'G26')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P117', N'S??p cua b???p m??ng', CAST(65000 AS Decimal(18, 0)), N'Ch??n', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P118', N'S??p cua vi c??', CAST(32000 AS Decimal(18, 0)), N'Ch??n', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P119', N'S??p rong bi???n h???i s???n', CAST(65000 AS Decimal(18, 0)), N'Ch??n', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P120', N'S??p bong b??ng c?? cua', CAST(65000 AS Decimal(18, 0)), N'Ch??n', N'G27')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P121', N'Ch??o c??', CAST(75000 AS Decimal(18, 0)), N'Ch??n', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P122', N'Ch??o t??m', CAST(75000 AS Decimal(18, 0)), N'Ch??n', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P123', N'Ch??o cua', CAST(75000 AS Decimal(18, 0)), N'Ch??n', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P124', N'Ch??o l????n', CAST(75000 AS Decimal(18, 0)), N'Ch??n', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P125', N'Ch??o h???i s???n', CAST(75000 AS Decimal(18, 0)), N'Ch??n', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P126', N'Ch??o b??o ng??', CAST(160000 AS Decimal(18, 0)), N'Ch??n', N'G28')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P127', N'L???u canh chua truy???n th???ng', CAST(450000 AS Decimal(18, 0)), N'L???u', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P128', N'L???u m??ng chua ?????u c?? h???i', CAST(405000 AS Decimal(18, 0)), N'L???u', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P129', N'L???u h???i s???n', CAST(540000 AS Decimal(18, 0)), N'L???u', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P130', N'L???u Th??i Lan h???i s???n', CAST(540000 AS Decimal(18, 0)), N'L???u', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P131', N'L???u n???m h???i s???n', CAST(495000 AS Decimal(18, 0)), N'L???u', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P132', N'L???u g?? l?? giang', CAST(450000 AS Decimal(18, 0)), N'L???u', N'G29')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P133', N'C??m tr???ng', CAST(49000 AS Decimal(18, 0)), N'Th???', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P134', N'B??nh m??', CAST(49000 AS Decimal(18, 0)), N'D??a', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P135', N'B??nh m?? b?? t???i', CAST(69000 AS Decimal(18, 0)), N'D??a', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P136', N'B??nh m?? ????t l?? ph?? mai', CAST(69000 AS Decimal(18, 0)), N'D??a', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P137', N'Rau l???u', CAST(49000 AS Decimal(18, 0)), N'D??a', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P138', N'B??n', CAST(49000 AS Decimal(18, 0)), N'D??a', N'G30')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P139', N'C??m chi??n t???i', CAST(145000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P140', N'C??m chi??n c?? m???n', CAST(225000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P141', N'C??m chi??n cua', CAST(225000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P142', N'C??m chi??n t??m', CAST(225000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P143', N'C??m D????ng Ch??u', CAST(225000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P144', N'C??m tay c???m h???i s???n', CAST(255000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P145', N'C??m tay c???m b??', CAST(255000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P146', N'C??m ch??y h???i s???n', CAST(275000 AS Decimal(18, 0)), N'Th???', N'G31')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P147', N'M?? x??o th???p c???m', CAST(250000 AS Decimal(18, 0)), N'D??a', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P148', N'B??n g???o x??o th???p c???m', CAST(250000 AS Decimal(18, 0)), N'D??a', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P149', N'Mi???n x??o th???t cua', CAST(320000 AS Decimal(18, 0)), N'Th???', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P150', N'Mi???n x??o cua con', CAST(95000 AS Decimal(18, 0)), N'100g', N'G32')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P151', N'Sting ?????', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P152', N'7 Up', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P153', N'Coca Cola', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P154', N'Pepsi', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P155', N'S???a ?????u N??nh', CAST(10000 AS Decimal(18, 0)), N'Ly', N'G33')
GO
INSERT [dbo].[monan] ([mamon], [tenmon], [giatien], [dvt], [manhom]) VALUES (N'P156', N'Mountain Dew', CAST(12000 AS Decimal(18, 0)), N'Chai', N'G33')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0001', N'Cua Ho??ng ?????', CAST(2000000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0002', N'T??m H??m Alaska', CAST(1400000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0003', N'M???c ???ng', CAST(550000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0004', N'Gh??? ?????', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0005', N'T??m T??ch', CAST(760000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0006', N'H??u Bi???n', CAST(44000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0007', N'S?? ??i???p', CAST(120000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0008', N'S?? D????ng', CAST(140000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0009', N'???c V??i Voi', CAST(990000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0010', N'Tu H??i', CAST(470000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0011', N'???c M??ng Tay', CAST(520000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0012', N'S?? Huy???t', CAST(110000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0013', N'L????n', CAST(140000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0014', N'C?? Mai', CAST(180000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0015', N'V???m', CAST(100000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0016', N'???c H????ng', CAST(690000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0017', N'???c Nh???y', CAST(170000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0018', N'T??m C??ng', CAST(430000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0019', N'T??m H??m', CAST(800000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0020', N'S???a', CAST(80000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0021', N'Cua Hai Da', CAST(680000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0022', N'C?? Tr???ng', CAST(90000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0023', N'C?? B??p', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0024', N'C?? M??', CAST(200000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0025', N'C?? Ch??nh', CAST(270000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0026', N'C?? M???t Qu???', CAST(310000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0027', N'M???c ???ng', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0028', N'M???c Tr???ng', CAST(300000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0029', N'C?? Ng???', CAST(150000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0030', N'C?? H???i', CAST(270000 AS Decimal(18, 0)), N'kg', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0031', N'Vi C??', CAST(700000 AS Decimal(18, 0)), N'100g', N'SUP01')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0032', N'Rau Mu???ng', CAST(8000 AS Decimal(18, 0)), N'kg', N'SUP02')
GO
INSERT [dbo].[nguyenlieu] ([manl], [tennl], [giatien], [dvt], [mancc]) VALUES (N'0033', N'Rong bi???n', CAST(75000 AS Decimal(18, 0)), N'100g', N'SUP02')
GO
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt]) VALUES (N'SUP01', N'Nh?? Ph??n Ph???i H???i S???n QT??', N'400 L?? V??n Vi???t, Th??nh ph??? Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0385512354')
GO
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt]) VALUES (N'SUP02', N'Nh?? Ph??n Ph???i Rau S???ch QT??', N'200 L?? V??n Vi???t, Th??nh ph??? Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0325846227')
GO
INSERT [dbo].[nhacungcap] ([mancc], [tenncc], [diachi], [sdt]) VALUES (N'SUP03', N'?????i L?? Bia S??i G??n', N'23, ???????ng S??? 3, Ph?????ng Hi???p B??nh Ch??nh, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0903923412')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210001', N'Phan Kh??nh Duy', CAST(N'1984-01-01T00:00:00.000' AS DateTime), N'Nam', N'11 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254130', N'Qu???n L??', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210002', N'Nguy???n H???u An', CAST(N'1986-02-01T00:00:00.000' AS DateTime), N'Nam', N'21 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254131', N'B???p Tr?????ng', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210003', N'Ph???m Minh Hi???u', CAST(N'1989-03-11T00:00:00.000' AS DateTime), N'Nam', N'31 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254132', N'Th??? Kho', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210004', N'Tr???n M???c Kh???i', CAST(N'1989-04-21T00:00:00.000' AS DateTime), N'Nam', N'41 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254133', N'K??? To??n Tr?????ng', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210005', N'Tr???n T???n Nh???t', CAST(N'1989-05-05T00:00:00.000' AS DateTime), N'Nam', N'51 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254134', N'Gi??m S??t Nh?? H??ng', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210006', N'Tr???n ????ng Ch????ng', CAST(N'1989-02-01T00:00:00.000' AS DateTime), N'Nam', N'61 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254135', N'Nh??n Vi??n Ch???y B??n', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210007', N'L?? Quang Kh??nh', CAST(N'1999-03-01T00:00:00.000' AS DateTime), N'Nam', N'71 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254136', N'Nh??n Vi??n V??? Sinh', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210008', N'L?? Anh T??', CAST(N'1999-04-01T00:00:00.000' AS DateTime), N'Nam', N'81 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254137', N'Nh??n Vi??n Kho', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210009', N'Nguy???n Anh T??', CAST(N'1999-01-01T00:00:00.000' AS DateTime), N'Nam', N'91 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254138', N'Nh??n Vi??n Ph???c V???', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210010', N'Tr???n V??n T??ng', CAST(N'1999-11-01T00:00:00.000' AS DateTime), N'Nam', N'101 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254139', N'Nh??n Vi??n B???p', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210011', N'Nguy???n Ph?? Qu???c', CAST(N'1999-07-01T00:00:00.000' AS DateTime), N'Nam', N'111 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254140', N'Nh??n Vi??n B???p', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210012', N'L?? Th??? Ng???c', CAST(N'1994-01-06T00:00:00.000' AS DateTime), N'N???', N'121 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254141', N'Nh??n Vi??n K??? To??n', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210013', N'Nguy???n Th??? Thanh', CAST(N'1995-07-11T00:00:00.000' AS DateTime), N'N???', N'131 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254142', N'Thu Ng??n', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210014', N'Ph???m Tu???n T??', CAST(N'1998-06-06T00:00:00.000' AS DateTime), N'Nam', N'141 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254143', N'Nh??n Vi??n Kho', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210015', N'Phan Th??? Thanh', CAST(N'1997-07-22T00:00:00.000' AS DateTime), N'N???', N'151 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254144', N'Nh??n Vi??n Ph???c V???', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210016', N'Tr???n V??n To??n', CAST(N'1993-11-06T00:00:00.000' AS DateTime), N'Nam', N'161 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254145', N'B???o V???', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210017', N'Nguy???n Kh??nh Duy', CAST(N'1998-07-02T19:22:00.000' AS DateTime), N'Nam', N'171 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254146', N'Nh??n Vi??n V??? Sinh', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210018', N'Tr???n Thanh Th???o', CAST(N'1997-03-20T19:22:00.000' AS DateTime), N'N???', N'181 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254147', N'Thu Ng??n', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210019', N'Nguy???n Thu Th???o', CAST(N'1987-07-31T19:22:00.000' AS DateTime), N'N???', N'191 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254148', N'Nh??n Vi??n B???p', N'123456')
GO
INSERT [dbo].[nhanvien] ([manv], [tennv], [ngaysinh], [gioitinh], [diachi], [sdt], [chucvu], [matkhau]) VALUES (N'210020', N'V?? Ng???c Kim Kh??nh', CAST(N'1996-07-30T00:00:00.000' AS DateTime), N'N???', N'201 L?? V??n Vi???t, T??ng Nh??n Ph?? A, TP Th??? ?????c, Th??nh ph??? H??? Ch?? Minh', N'0383254149', N'Nh??n Vi??n Ph???c V???', N'123456')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G01', N'G???i')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G02', N'H??u')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G03', N'V???m')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G04', N'S?? ??i???p')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G05', N'S?? D????ng')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G06', N'S?? Huy???t')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G07', N'???c')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G08', N'???c V??i Voi')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G09', N'Ngh??u')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G10', N'Ngh??u Hai C???i')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G11', N'T??m C??ng')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G12', N'T??m H??m')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G13', N'T??m H??m Alaska')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G14', N'T??m T??ch')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G15', N'T??m S??')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G16', N'T??m M?? Ni')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G17', N'Gh???')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G18', N'Cua')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G19', N'Cua Ho??ng ?????')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G20', N'Cua Hai Da')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G21', N'C??')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G22', N'M???c')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G23', N'C??c Lo???i Cu???n')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G24', N'L????n')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G25', N'X?? L??ch')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G26', N'C??c Lo???i Rau')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G27', N'S??p')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G28', N'Ch??o')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G29', N'L???u')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G30', N'C??c M??n ??n K??m')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G31', N'C??m')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G32', N'M??')
GO
INSERT [dbo].[nhommon] ([manhom], [tennhom]) VALUES (N'G33', N'N?????c Gi???i Kh??t')
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
			--L???y ra danh s??ch m??n ??n
			select hd.sohd, m.mamon, m.tenmon, cthd.soluong , m.dvt, m.giatien, (cthd.soluong * m.giatien) as 'thanhtien'
			from hoadon hd, monan m, chitiethoadon cthd
			where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and hd.giora = hd.giovao and hd.soban = @soban --Ng??y l?? null : ch??a thanh to??n
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
		
	--L???y ra doanh thu c???a @ngay
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
		--Khai b??o bi???n
		declare @doanhthu decimal
		--T??nh doanh thu
		select @doanhthu = sum(m.giatien * cthd.soluong) 
		from hoadon hd, monan m, chitiethoadon cthd
		where hd.sohd = cthd.sohd and m.mamon = cthd.mamon and giora between @tungay and @denngay
		--Tr??? v???
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
		--Khai b??o bi???n
		declare @soban int;
		--G??n gi?? tr???
		select @soban = soban from hoadon where sohd = @sohd;
		--C???p nh???t th???i gian thanh to??n c???a ho?? ????n
		update hoadon set giora = @giora where sohd = @sohd;
		--C???p nh???t tr???ng th??i c???a b??n
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
		--L???y s??? l?????ng ???? nh???p
		select @soluongtrongphieunhap = sum(soluong)
		from chitietphieunhap ct
		where manl = @nguyenlieu
		group by manl
		--L???y s??? l?????ng ???? xu???t
		select @soluongtrongphieuxuat = sum(soluong)
		from chitietphieuxuat
		where manl = @nguyenlieu
		group by manl
		--N???u ch??a xu???t th?? l?? null -> s??? l?????ng = 0
		if(@soluongtrongphieuxuat is null)
			begin
				set @soluongtrongphieuxuat = 0
			end
		--T???n kho l?? s??? l?????ng ???? nh???p - s??? l?????ng ???? xu???t
		set @tonkho = @soluongtrongphieunhap - @soluongtrongphieuxuat;
		if(@tonkho is null) 
			begin
				set @tonkho = 0
			end
		select @tonkho
	end
GO
