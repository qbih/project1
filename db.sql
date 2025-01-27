
CREATE DATABASE [DA1_banGiay_N4V]
GO
USE [DA1_banGiay_N4V]
GO
CREATE TABLE [dbo].[chatLieu](
	[id_chatLieu] [int] IDENTITY(1,1) NOT NULL,
	[tenChatLieu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_chatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[loaiDe](
	[id_loaiDe] [int] IDENTITY(1,1) NOT NULL,
	[tenLoaiDe] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_loaiDe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[kichThuoc](
	[id_kichThuoc] [int] IDENTITY(1,1) NOT NULL,
	[tenKichThuoc] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_kichThuoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[hoaDon](
	[id_hoaDon] [int] IDENTITY(1,1) NOT NULL,
	[id_nhanVien] [int] NOT NULL,
	[trangThai] [int] NOT NULL,
	[ngayTao] [date] NOT NULL,
	[tongTien] [money] NULL,
	[tienKhachDua] [money] NULL,
	[tienThua] [money] NULL,
	[phuongThucThanhToan] int NULL,
	[id_khachHang] [int] NULL,
	[id_khuyenMai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[hoaDonCT](
	[id_hoaDonCt] [int] IDENTITY(1,1) NOT NULL,
	[id_hoaDon] [int] NOT NULL,
	[soLuong] [int] NOT NULL,
	[ngayTao] [date] NOT  NULL,
	[donGia] [float] NOT NULL,
	[tongTien] [money] NULL,
	[id_sanPhamCt] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_hoaDonCt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[khachHang](
	[id_khachHang] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NOT NULL,
	[gioiTinh] [int] NOT NULL,
	[diaChi] [nvarchar](100) NOT NULL,
	[soDienThoai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_khachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[khuyenMai](
	[id_khuyenMai] [int] IDENTITY(1,1) NOT NULL,
	[tenKhuyenMai] [nvarchar](50) NOT NULL,
	[loai] [nvarchar](100) NOT NULL,
	[giaTri] [nvarchar](20) NOT NULL,
	[ngayBatDau] [date] NOT NULL,
	[ngayKetThuc] [date] NOT NULL,
	[trangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_khuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[mau](
	[id_mau] [int] IDENTITY(1,1) NOT NULL,
	[tenMau] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nhaCungCap](
	[id_nhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[tenNhaCungCap] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nhanVien](
	[id_nhanVien] [int] IDENTITY(1,1) NOT NULL,
	[hoTen] [nvarchar](50) NOT NULL,
	[gioiTinh] [int] NOT NULL,
	[soDt] [int] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](200) NOT NULL,
	[id_taiKhoan] [int] NOT NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_nhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[sanPham](
	[id_sanPham] [int] IDENTITY(1,1) NOT NULL,
	[tenSanPham] [nvarchar](100) NOT NULL,
	[trangThai] [int] NOT NULL,
	[hinhAnh] [nvarchar](255) NULL,
	[id_theLoai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[sanPhamCt](
	[id_sanPhamCt] [int] IDENTITY(1,1) NOT NULL,
	[id_sanPham] [int] NOT NULL,
	[id_chatLieu] [int] NOT NULL,
	[id_thuongHieu] [int] NOT NULL,
	[id_nhaCungCap] [int] NOT NULL,
	[id_mau] [int] NOT NULL,
	[id_loaiDe] [int] NOT NULL,
	[id_kichThuoc] [int] NOT NULL,
	[gia] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
	[ngayTao] [date] NOT NULL,
	[ghiChu] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_sanPhamCt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[taiKhoan](
	[id_taiKHoan] [int] IDENTITY(1,1) NOT NULL,
	[tenDangNhap] [nvarchar](50) NOT NULL,
	[matKhau] [varchar](20) NOT NULL,
	[vaiTro] [int] NOT NULL,
	[trangThai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_taiKHoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
--khoa ngoai bang sp
CREATE TABLE [dbo].[theloai](
	[id_theLoai] [int] IDENTITY(1,1) NOT NULL,
	[tenTheLoai] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_theLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[thuongHieu](
	[id_thuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[tenThuongHieu] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_thuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([id_khachHang])
REFERENCES [dbo].[khachHang] ([id_khachHang])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([id_khuyenMai])
REFERENCES [dbo].[khuyenMai] ([id_khuyenMai])
GO
ALTER TABLE [dbo].[hoaDon]  WITH CHECK ADD FOREIGN KEY([id_nhanVien])
REFERENCES [dbo].[nhanVien] ([id_nhanVien])
GO
ALTER TABLE [dbo].[hoaDonCT]  WITH CHECK ADD FOREIGN KEY([id_hoaDon])
REFERENCES [dbo].[hoaDon] ([id_hoaDon])
GO
ALTER TABLE [dbo].[hoaDonCT]  WITH CHECK ADD FOREIGN KEY([id_sanPhamCt])
REFERENCES [dbo].[sanPhamCt] ([id_sanPhamCt])
GO
ALTER TABLE [dbo].[nhanVien]  WITH CHECK ADD FOREIGN KEY([id_taiKhoan])
REFERENCES [dbo].[taiKhoan] ([id_taiKHoan])
GO
ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_chatLieu])
REFERENCES [dbo].[chatLieu] ([id_chatLieu])
GO
ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_mau])
REFERENCES [dbo].[mau] ([id_mau])
GO
ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_loaiDe])
REFERENCES [dbo].[loaiDe] ([id_loaiDe])
GO
ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_nhaCungCap])
REFERENCES [dbo].[nhaCungCap] ([id_nhaCungCap])
GO
ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_sanPham])
REFERENCES [dbo].[sanPham] ([id_sanPham])
GO

ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_thuongHieu])
REFERENCES [dbo].[thuongHieu] ([id_thuongHieu])
GO
ALTER TABLE [dbo].[sanPhamCt]  WITH CHECK ADD FOREIGN KEY([id_kichThuoc])
REFERENCES [dbo].[kichThuoc] ([id_kichThuoc])
GO
ALTER TABLE [dbo].[sanPham]  WITH CHECK ADD FOREIGN KEY([id_theLoai])
REFERENCES [dbo].[theloai] ([id_theLoai])
GO
select * from chatLieu
-- insert bảng chất liệu
INSERT INTO [dbo].[chatLieu] ([tenChatLieu])
VALUES 
    (N'Vải Cotton'),
    (N'Vải Len'),
    (N'Vải Lụa'),
    (N'Vải Nhung'),
    (N'Vải Thô'),
    (N'Vải Jean'),
    (N'Vải Kaki'),
    (N'Vải Poly'),
    (N'Vải Đũi')