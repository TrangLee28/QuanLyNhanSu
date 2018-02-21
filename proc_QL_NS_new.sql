﻿use QL_NhanSu_new
go

 /* Thủ tục thêm mới phòng ban*/ 
CREATE PROC SP_THEMPHONGBAN
(    @MAPB char(10),
     @TENPB nvarchar(50),
     @MATP CHAR(10),
     @DIADIEM NVARCHAR(50),
     @NGAYNC DATE
  ) 
AS 
INSERT INTO PHONGBAN(MAPB,TENPB,MATP,DIADIEM,NGAYNC) 
VALUES(@MAPB,@TENPB,@MATP,@DIADIEM,@NGAYNC)
go

 
/* Thủ xóa một phòng ban*/ 
CREATE PROC SP_XOAPHONGBAN
( 
     @MAPB char(10) 
) 
AS 
DELETE PHONGBAN 
WHERE MAPB = @MAPB
go

  /* Thủ tục sửa thông tin 1 phòng ban*/ 
CREATE PROC  SP_SUAPHONGBAN
( 
     @MAPB char(10), 
     @TENPB nvarchar(50),
     @MATP CHAR(10),
     @DIADIEM NVARCHAR(50),
     @NGAYNC DATE 
     ) 
AS 
UPDATE PHONGBAN 
SET TENPB = @TENPB, MATP = @MATP, DIADIEM = @DIADIEM, NGAYNC = @NGAYNC 
 WHERE MAPB = @MAPB
 go
 
  /* Thủ tục thêm mới DỰ ÁN*/ 
CREATE PROC SP_THEMDUAN
(    @MADA char(10),
     @TENDA nvarchar(50),
     @DIADIEM NVARCHAR(50),
     @MAPB CHAR(10),
     @TONGSOGIO FLOAT
  ) 
AS 
INSERT INTO DUAN(MADA,TENDA,DIADIEM,MAPB,TONGSOGIO) 
VALUES(@MADA,@TENDA,@DIADIEM,@MAPB,@TONGSOGIO)
go

/* Thủ xóa một DỰ ÁN*/ 
CREATE PROC SP_XOADUAN
( 
     @MADA char(10) 
) 
AS 
DELETE DUAN 
WHERE MADA = @MADA
go

  /* Thủ tục sửa thông tin 1 DỰ ÁN*/ 
CREATE PROC  SP_SUADUAN
( 
     @MADA char(10),
     @TENDA nvarchar(50),
     @DIADIEM NVARCHAR(50),
     @MAPB CHAR(10),
     @TONGSOGIO FLOAT 
     ) 
AS 
UPDATE DUAN 
SET TENDA = @TENDA, DIADIEM = @DIADIEM,MAPB = @MAPB 
 WHERE MADA = @MADA
 go
 
   /* Thủ tục thêm mới LƯƠNG*/ 
CREATE PROC SP_THEMLUONG
(    
	@BACLUONG INT,
	@LUONGCOBAN INT,
	@HESOLUONG FLOAT,
	@HESOPHUCAP FLOAT
  ) 
AS 
INSERT INTO LUONG(BACLUONG,LUONGCOBAN,HESOLUONG,HESOPHUCAP) 
VALUES(@BACLUONG,@LUONGCOBAN,@HESOLUONG,@HESOPHUCAP)
go

/* Thủ xóa một LƯƠNG*/ 
CREATE PROC SP_XOALUONG
( 
     @BACLUONG char(10) 
) 
AS 
DELETE LUONG
WHERE BACLUONG = @BACLUONG
go

  /* Thủ tục sửa thông tin 1 LƯƠNG*/ 
CREATE PROC  SP_SUALUONG
( 
     @BACLUONG INT,
	@LUONGCOBAN INT,
	@HESOLUONG FLOAT,
	@HESOPHUCAP FLOAT 
) 
AS 
UPDATE LUONG
SET LUONGCOBAN = @LUONGCOBAN, HESOLUONG = @HESOLUONG, HESOPHUCAP = @HESOPHUCAP
 WHERE BACLUONG = @BACLUONG
 go
 
   /* Thủ tục thêm mới NHÂN VIÊN*/ 
create PROC SP_THEM_NHANVIEN
(    
	@MANV CHAR(10),

	@TENNV NVARCHAR(50),
	@NGAYSINH DATE,
	@GT NVARCHAR(50),
	@MANGS CHAR(10),
	@MAPB CHAR(10),
	@BACLUONG INT,
	@QUEQUAN NVARCHAR(50),
	@ACCOUNT VARCHAR(50)
  ) 
AS 
INSERT INTO NHANVIEN(MANV,TENNV,NGAYSINH,GT,MANGS,MAPB,BACLUONG,QUEQUAN,ACCOUNT) 
VALUES(@MANV,@TENNV,@NGAYSINH,@GT,@MANGS,@MAPB,@BACLUONG,@QUEQUAN,@ACCOUNT)
go
///////////////////////
/* Thủ xóa một NHÂN VIÊN*/ 
CREATE PROC SP_XOANHANVIEN
( 
     @MANV char(10) 
) 
AS 
DELETE NHANVIEN
WHERE MANV = @MANV
go

  /* Thủ tục sửa thông tin 1 NHÂN VIÊN*/ 

create PROC  SP_SUANHANVIEN
( 
    @MANV CHAR(10),
	@TENNV NVARCHAR(50),
	@NGAYSINH DATE,
	@GT NVARCHAR(50),
	@MANGS CHAR(10),
	@MAPB CHAR(10),
	@BACLUONG INT,
	@QUEQUAN NVARCHAR(50),
	@ACCOUNT VARCHAR
) 
AS 
UPDATE NHANVIEN
SET TENNV = @TENNV, NGAYSINH = @NGAYSINH,GT = @GT, MANGS = @MANGS,MAPB = @MAPB,BACLUONG = @BACLUONG,QUEQUAN = @QUEQUAN,ACCOUNT = @ACCOUNT
 WHERE MANV = @MANV
 go
 //////////////////////

 CREATE PROC SP_THEMPHANCONG
(    
	@MANV CHAR(10),
    @MADA CHAR(10),
    @SOGIO FLOAT
  ) 
AS 
INSERT INTO PHANCONG(MADA,MANV,SOGIO) 
VALUES(@MADA,@MANV,@SOGIO)
go

/* Thủ xóa một PHÂN CÔNG*/ 
CREATE PROC SP_XOAPHANCONG
( 
     @MANV char(10) 
) 
AS 
DELETE PHANCONG
WHERE MANV = @MANV
go


 /* Thủ tục sửa thông tin 1 PHÂN CÔNG*/ 
 CREATE PROC  SP_SUAPHANCONG
( 
    @MANV CHAR(10),
    @MADA CHAR(10),
    @SOGIO FLOAT
) 
AS 
UPDATE PHANCONG
SET MADA = @MADA, SOGIO = @SOGIO
WHERE MANV = @MANV
go

--THỦ TỤC THÊM 1 TÀI KHOẢN
 CREATE PROC SP_THEMTAIKHOAN
(    
	@ACCOUNT VARCHAR(50),
	@PASSWORD VARCHAR(50),
	@ACCESS NCHAR(3)
  ) 
AS 
INSERT INTO TAIKHOAN(ACCOUNT,PASSWORD,ACCESS) 
VALUES(@ACCOUNT,@PASSWORD,@ACCESS)
go

/* Thủ xóa một TAIKHOAN*/ 
CREATE PROC SP_XOATAIKHOAN
( 
     @ACCOUNT VARCHAR(50) 
) 
AS 
DELETE TAIKHOAN
WHERE ACCOUNT = @ACCOUNT
go


 /* Thủ tục sửa thông tin 1 TÀI KHOẢN*/ 
 CREATE PROC  SP_SUATAIKHOAN
( 
    @ACCOUNT VARCHAR(50),
	@PASSWORD VARCHAR(50),
	@ACCESS NCHAR(3)
) 
AS 
UPDATE TAIKHOAN
SET PASSWORD = @PASSWORD, ACCESS = @ACCESS
WHERE ACCOUNT = @ACCOUNT
go

--THỦ TỤC THÊM 1 THÂN NHÂN 
 CREATE PROC SP_THEMTHANNHAN
(    
	@HOTEN NVARCHAR(50),
	@NGAYSINH DATE,
	@GT NVARCHAR(50),
	@MANV CHAR(10),
	@QUANHE NVARCHAR(50)
  )
AS 
INSERT INTO THANNHAN(HOTEN, NGAYSINH, GT, MANV, QUANHE) 
VALUES(@HOTEN, @NGAYSINH, @GT, @MANV,@QUANHE)
go

/* Thủ xóa một THANNHAN*/ 
CREATE PROC SP_XOATHANNHAN
( 
     @HOTEN NVARCHAR(50)
) 
AS 
DELETE THANNHAN
WHERE HOTEN = @HOTEN
go


 /* Thủ tục sửa thông tin 1 TÀI KHOẢN*/ 
 CREATE PROC  SP_SUATHANNHAN
( 
    @HOTEN NVARCHAR(50),
	@NGAYSINH DATE,
	@GT NVARCHAR(50),
	@MANV CHAR(10),
	@QUANHE NVARCHAR(50)
) 
AS 
UPDATE THANNHAN
SET NGAYSINH = @NGAYSINH, GT = @GT, MANV = @MANV, QUANHE =@QUANHE
WHERE HOTEN = @HOTEN
go
