USE QLKHACHSAN
GO

CREATE TABLE KhachHang
(
MaKH varchar(5) primary key,
TenKH nvarchar(30) not null,
LoaiKhach nvarchar(20),
DiaChi nvarchar(100),
GioiTinh nvarchar(8),
CMND varchar(12) ,
SDT varchar(10) not null,
QuocTich nvarchar(25),
)
GO

CREATE TABLE DMPhong
(
SoPhong varchar(4) primary key,
LoaiPhong varchar(1),
GhiChu nvarchar(100),
DonGia int
)
GO

CREATE TABLE DSPhong
(
SoPhong varchar(4),
MaKH varchar(5),
LoaiPhong varchar(1),
DonGia int,
TinhTrang nvarchar(20),
constraint fk_DSPhong_SoPhong foreign key(SoPhong) references DMPhong(SoPhong),
constraint fk_DSPhong_MaKH foreign key(MaKH) references KhachHang(MaKH)
)
GO

CREATE TABLE HoaDon
(
MaHD varchar(5) primary key,
MaKH varchar (5),
SoPhong varchar(4),
SoNgayThue int ,
NgayTaoHD datetime,
DonGia int,
ThanhTien int,
constraint fk_HoaDon_SoPhong foreign key(SoPhong) references DMPhong(SoPhong),
constraint fk_HoaDon_MaKH foreign key(MaKH) references KhachHang(MaKH)
)
GO

CREATE TABLE PhieuThuePhong
(
MaPTP varchar(5) primary key,
MaKH varchar (5),
NgayThue date,
NgayTraPhong date,
SoPhong varchar(4),
DonGia int,
constraint fk_PhieuThuePhong_SoPhong foreign key(SoPhong) references DMPhong(SoPhong),
constraint fk_PhieuThuePhong_MaKH foreign key(MaKH) references KhachHang(MaKH)
)
GO

CREATE TABLE BaoCaoDoanhThuTheoLoaiPhong (
  LoaiPhong varchar(1),
  DoanhThu int,
  TtyLe float,
);
GO

CREATE TABLE BaoCaoMatDoSuDungPhong (
  SoPhong varchar(4),
  SoNgayThue int,
  TyLe float
   constraint fk_BaoCaoMatDoSuDungPhong foreign key(SoPhong) references DMPhong(SoPhong)
);
GO
