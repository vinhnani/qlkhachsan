CREATE DATABASE QLKHACHSAN
GO

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

CREATE TABLE DSPhong
(
SoPhong varchar(4) primary key,
MaKH varchar(5),
LoaiPhong varchar(1),
DonGia int,
GhiChu nvarchar(100),
TinhTrang nvarchar(20),
constraint fk_DSPhong_MaKH foreign key(MaKH) references KhachHang(MaKH)
)
GO


CREATE TABLE HoaDon
(
MaHD varchar(5) primary key,
MaKH varchar (5),
SoPhong varchar(4),
NgayBatDau date,
NgayTraPhong date ,
SoNgayThue int ,
DonGia int,
ThanhTien int,
NgayTaoHD datetime,
constraint fk_HoaDon_SoPhong foreign key(SoPhong) references DSPhong(SoPhong),
constraint fk_HoaDon_MaKH foreign key(MaKH) references KhachHang(MaKH)
)
GO

CREATE TABLE DangNhap
(
TaiKhoan varchar(10),
MatKhau varchar(20)
)
GO

INSERT INTO KhachHang
VALUES
('1',N'Nguyễn Bảo Ngọc',N'Nội địa','',N'Nữ','020100002314','0933111296',N'Việt Nam'),
('2',N'Phạm Gia An',N'Nội địa',N'Số 10, ngõ 20, đường La Thành, quận Ba Đình, Hà Nội','Nam','','0908475290',N'Việt Nam'),
('3',N'Nguyễn Gia Nguyên',N'Nội địa',N'17, đường Lê Lợi, quận 1, thành phố Hồ Chí Minh','Nam','079000003541','0923035130',N'Việt Nam'),
('4',N'Đoàn Diễm My',N'Nội địa','',N'Nữ','','0975385853',N'Việt Nam'),
('5',N'Phan Nguyễn Duy Khánh',N'Nội địa',N'390/7 đường 3/2 Phường 12 Quận 10,thành phố Hồ Chí Minh','Nam','07930000512','0120780745',N'Việt Nam'),
('6',N'Đặng Minh Quân',N'Nội địa','','Nam','','0986810782',N'Việt Nam'),
('7',N'Trần Thảo Nhi',N'Nội địa','',N'Nữ','','0967675782',N'Việt Nam'),
('8',N'Nguyễn Minh Khang',N'Nội địa',N'Số 89, phố Tô Vĩnh Diễn, phường Khương Trung, quận Thanh Xuân, thành phố Hà Nội','Nam','','0786574686',N'Việt Nam'),
('9',N'Đỗ Cát Tiên',N'Nội địa','',N'Nữ','','0792375394',N'Việt Nam'),
('10',N'Nguyễn Ngọc Thanh Tâm',N'Nội địa','','Nam','','0984069125',N'Việt Nam'),
('11','Alex Nguyen',N'Quốc tế','',N'Nữ','','0987113433',N'Mỹ')
GO

INSERT INTO KhachHang
VALUES
('12',N'Nguyễn Thị Hương Giang',N'Nội địa',N'321, đường Lạc Long Quân, quận 11, thành phố Hồ Chí Minh',N'Nữ','079300008941','0923084987',N'Việt Nam'),
('13','Max Crystal',N'Quốc tế','','Nam','','0969361643','Canada'),
('14',N'Lê Nhật Minh',N'Nội địa',N'Tổ 33, Ấp 4, Xã An Thái Trung, Huyện Cái Bè, Tỉnh Tiền Giang','Nam','','0987290647',N'Việt Nam'),
('15',N'Lý Thanh Xuân',N'Nội địa',N'345 Tôn Đản, Phường 4, Quận 4, thành phố Hồ Chí Minh',N'Nữ','','0734822560',N'Việt Nam'),
('16',N'Lê Nguyễn Hoàng Lan',N'Nội địa','',N'Nữ','023100005681','0759210127',N'Việt Nam'),
('17',N'Phạm Diễm My',N'Nội địa','',N'Nữ','','0977764750',N'Việt Nam'),
('18',N'Cao Ngọc Yến Nhi',N'Nội địa','',N'Nữ','','0727727266',N'Việt Nam'),
('19',N'Đặng Trúc Lâm',N'Nội địa','','Nam','','0908018346',N'Việt Nam'),
('20',N'Lê Thanh Trúc',N'Nội địa','',N'Nữ','','0896632145',N'Việt Nam'),
('21',N'Hồ Thanh Thảo',N'Nội địa','',N'Nữ','','0954812359',N'Việt Nam'),
('22',N'Ngô Quốc Tuấn',N'Nội địa','','Nam','','0625663281',N'Việt Nam')
GO

INSERT INTO DSPhong
VALUES
('101','14','A','100000','Phòng Đơn',''),
('102','10','A','100000','Phòng Đơn',''),
('103','22','A','100000','Phòng Đôi',''),
('104','9','B','120000','Phòng Đơn',''),
('105','7','B','120000','Phòng Đôi',''),
('106','1','B','120000','Phòng Đơn',''),
('201','3','B','120000','Phòng Đôi',''),
('202','8','B','100000','Phòng Đơn',''),
('203','4','B','120000','Phòng Đôi',''),
('204','11','B','120000','Phòng Đôi','')
GO

INSERT INTO DSPhong
VALUES
('205','12','B','129000','Phòng Đôi',''),
('206','15','C','200000','Phòng Ba',''),
('207','7','B','129000','Phòng Đôi',''),
('208','9','C','200000','Phòng Ba',''),
('209','21','C','200000','Phòng Ba',''),
('300','5','C','200000','Phòng Ba',''),
('301','21','A','100000','Phòng Đơn',''),
('302','18','B','129000','Phòng Đôi',''),
('303','14','C','200000','Phòng Ba',''),
('304','11','A','100000','Phòng Đơn','')
GO

INSERT INTO DangNhap
VALUES
('admin','1234'),
('nhom5','123456789')
GO

SELECT * FROM DSPhong