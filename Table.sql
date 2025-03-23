--Create database NCKH
--go
Use NCKH
go
Create table tblType
(	PkIdType int identity(0,1) Constraint PkIdType_ primary key,
	SNameType nvarchar(100) null
)
go
--Quyền tài khoản
Create table tblQuyen
(	PkIdQuyen int identity(0,1) Constraint PkIdQuyen_ primary key,
	SNameQuyen nvarchar(100)null
)
go
--Tài khoản
Create table tblTaiKhoan
(	PkIdTaiKhoan int identity(0,1) Constraint PkIdTaiKhoan_ primary key,
	SNameTaiKhoan nvarchar(100) null,
	SPhoneTaiKhoan nvarchar(100) null,
	SPassTaiKhoan nvarchar(100)null,
	FkIdQuyen int,
	Constraint FkidQuyen_ Foreign key (FkIdQuyen) References tblQuyen(PkIdQuyen)
)
go
--Tỉnh thành
Create table tblTinhThanh
(	PkIdTinhThanh int identity(0,1) Constraint PkIdTinhThanh_ primary key,
	SNameTinhThanh nvarchar(100) null,
	SImageTinhThanh nvarchar(100) null,
	SContentTinhThanh nvarchar(Max)null,
	FkIdType int,
	Constraint FkIdTypeTinhThanh Foreign key(FkIdType) References tblType(PkIdType)
)
go

--Hoạt động gải trí
Create table tblGiaiTri
(	PkIdGiaiTri int identity(0,1) Constraint PkIdVuiChoi_ primary key,
	SNameGiaiTri nvarchar(100) null,
	SImageGiaiTri nvarchar(100) null,
	SContentGiaiTri nvarchar(Max)null,
	FkIdType int,
	Constraint FkIdTypeVuiChoi Foreign key(FkIdType) References tblType(PkIdType)
)
go


--Món ăn
Create table tblMonAn
(	PkIdMonAn int identity(0,1) Constraint PkIdMonAn_ primary key,
	SNameMonAn nvarchar(100) null,
	SImageMonAn nvarchar(100) null,
	SContentMonAn nvarchar(Max)null,
	FkIdType int,
	Constraint FkIdTypeMonAn Foreign key(FkIdType) References tblType(PkIdType)
)
go

--Khách sạn
Create table tblKhachSan
(	PkIdKhachSan int identity(0,1) Constraint PkIdKhachSan_ primary key,
	SNameKhachSan nvarchar(100) null,
	SImageKhachSan nvarchar(100) null,
	SContentKhachSan nvarchar(Max)null,
	FkIdType int,
	Constraint FkIdTypeKhachSan Foreign key(FkIdType) References tblType(PkIdType)
)
go

--Nhà Hàng
Create table tblNhaHang
(	PkIdNhaHang int identity(0,1) Constraint PkIdNhaHang_ primary key,
	SNameNhaHang nvarchar(100) null,
	SImageNhaHang nvarchar(100) null,
	SContentNhaHang nvarchar(Max)null,
	FkIdType int,
	Constraint FkIdTypeNhaHang Foreign key(FkIdType) References tblType(PkIdType)
)
go

--Địa chỉ
Create table tblDiaChi
(	PkIdDiaChi int identity(0,1) Constraint PkIdDiaChi_ primary key,
	SNameDiaChi nvarchar(100) null,
	STypeDiaChi nvarchar(100) null,
	STimeDiaChi nvarchar(100) null,
	SPrice nvarchar(100) null,
	SContactDiaChi nvarchar(100) null,
	SPhoneDiaChi nvarchar(100) null,
	SContentDiaChi nvarchar(Max)null,
	FkIdType int,
	Constraint FkIdTypeDiaChi Foreign key(FkIdType) References tblType(PkIdType)
)
go

--Comment
Create table tblComment
(	PkIdComment int identity(0,1) Constraint PkIdComment_ primary key,
	SContentComment nvarchar(max) null,
	IStarComment int null,
	FkIdTaiKhoan int ,
	Constraint FkIdCommentTaiKhoan Foreign key(FkIdTaiKhoan) References tblTaiKhoan(PkIdTaiKhoan)

)
go
Create table tblYeuThich
(	PkIdYeuThich int identity(0,1) Constraint PkIdYeuThich_ primary key,
	FkIdTaiKhoan int ,
	Constraint FkIdYeuThichTaiKhoan Foreign key(FkIdTaiKhoan) References tblTaiKhoan(PkIdTaiKhoan)
)
go
Create table tblTinhThanh_Comment
(	FkIdTinhThanh int,
	FkIdDiaChi int,
	FkIdComment int,
	FkIdYeuThich int null,
	Constraint PkTinhThanh_Comment Primary key(FkIdTinhThanh,FkIdDiaChi,FkIdComment),
	Constraint FkTinhThanh_Comment Foreign key (FkIdTinhThanh) References tblTinhThanh(PkIdTinhThanh),
	Constraint FkDiaChi_TinhThanh Foreign key (FkIdDiaChi) References tblDiaChi(PkIdDiaChi),
	Constraint FkComment_TinhThanh Foreign key(FkIdComment) References tblComment(PkIdComment),
	Constraint FkYeuThich_TinhThanh Foreign key(FkIdYeuThich) References tblYeuThich(PkIdYeuThich)
)
go
--Tỉnh thành_Vui chơi
Create table tblTinhThanh_GiaiTri
(	FkIdTinhThanh int ,
	FkIdGiaiTri int ,
	FkIdDiaChi int,
	FkIdComment int,
	FkIdYeuThich int null,
	Constraint PkTinhThanh_GiaiTri Primary key(FkIdTinhThanh,FkIdGiaiTri,FkIdDiaChi,FkIdComment),
	Constraint FkTinhThanh_GiaiTri Foreign key (FkIdTinhThanh) References tblTinhThanh(PkIdTinhThanh),
	Constraint FkGiaiTri Foreign key (FkIdGiaiTri) References tblGiaiTri(PkIdGiaiTri),
	Constraint FkDiaChi_GiaiTri Foreign key (FkIdDiaChi) References tblDiaChi(PkIdDiaChi),
	Constraint FkComment_GiaiTri Foreign key(FkIdComment) References tblComment(PkIdComment),
	Constraint FkYeuThich_GiaiTri Foreign key(FkIdYeuThich) References tblYeuThich(PkIdYeuThich)

)
go

--Tỉnh thành_Món ăn
Create table tblTinhThanh_MonAn
(	FkIdTinhThanh int ,
	FkIdMonAn int ,
	FkIdDiaChi int,
	FkIdComment int,
	FkIdYeuThich int null,
	Constraint PkTinhThanh_MonAn Primary key(FkIdTinhThanh,FkIdMonAn,FkIdDiaChi,FkIdComment),
	Constraint FkTinhThanh_MoAn Foreign key (FkIdTinhThanh) References tblTinhThanh(PkIdTinhThanh),
	Constraint FkMonAn Foreign key (FkIdMonAn) References tblMonAn(PkIdMonAn),
	Constraint FkDiaChi_MonAn Foreign key (FkIdDiaChi) References tblDiaChi(PkIdDiaChi),
	Constraint FkComment_MonAn Foreign key(FkIdComment) References tblComment(PkIdComment),
	Constraint FkYeuThich_MonAn Foreign key(FkIdYeuThich) References tblYeuThich(PkIdYeuThich)

)
go

--Tỉnh thành_Khách sạn
Create table tblTinhThanh_KhachSan
(	FkIdTinhThanh int ,
	FkIdKhachSan int ,
	FkIdDiaChi int,
	FkIdComment int,
	FkIdYeuThich int null,
	Constraint PkTinhThanh_KhachSan Primary key(FkIdTinhThanh,FkIdKhachSan,FkIdDiaChi,FkIdComment),
	Constraint FkTinhThanh_KhachSan Foreign key (FkIdTinhThanh) References tblTinhThanh(PkIdTinhThanh),
	Constraint FkKhachSan Foreign key (FkIdKhachSan) References tblKhachSan(PkIdKhachSan),
	Constraint FkDiaChi_KhachSan Foreign key (FkIdDiaChi) References tblDiaChi(PkIdDiaChi),
	Constraint FkComment_KhachSan Foreign key(FkIdComment) References tblComment(PkIdComment),
	Constraint FkYeuThich_KhachSan Foreign key(FkIdYeuThich) References tblYeuThich(PkIdYeuThich)

)
go

--Tinh thành_Nhà hàng
Create table tblTinhThanh_NhaHang
(	FkIdTinhThanh int ,
	FkIdNhaHang int ,
	FkIdDiaChi int,
	FkIdComment int,
	FkIdYeuThich int null,
	Constraint PkTinhThanh_NhaHang Primary key(FkIdTinhThanh,FkIdNhaHang,FkIdDiaChi,FkIdComment),
	Constraint FkTinhThanh_NhaHang Foreign key (FkIdTinhThanh) References tblTinhThanh(PkIdTinhThanh),
	Constraint FkNhaHang Foreign key (FkIdNhaHang) References tblNhaHang(PkIdNhaHang),
	Constraint FkDiaChi_NhaHang Foreign key (FkIdDiaChi) References tblDiaChi(PkIdDiaChi),
	Constraint FkComment_NhaHang Foreign key(FkIdComment) References tblComment(PkIdComment),
	Constraint FkYeuThich_NhaHang Foreign key(FkIdYeuThich) References tblYeuThich(PkIdYeuThich)

)