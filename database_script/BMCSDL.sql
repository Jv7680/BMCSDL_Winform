-- Tao user tin
-- user tin
create user tin identified by 123;
alter user tin quota unlimited on users; 

-- tạo tin_role
create role tin_role;
grant all privileges to tin_role;
grant tin_role to tin;



-- tao bang va insert
--Create Table
--TAIKHOAN
CREATE TABLE "TIN"."TAIKHOAN" 
(	
	"ID" NUMBER(5,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"TAIKHOAN" VARCHAR2(20 BYTE), 
	"MATKHAU" VARCHAR2(20 BYTE), 
	"ROLE" NUMBER(4,0), 
	"HOTEN" NVARCHAR2(50)
);


--PASSPORTDATA
CREATE TABLE "TIN"."PASSPORTDATA" 
(	
	"ID" NUMBER(5,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"HOTEN" NVARCHAR2(20), 
	"DIACHI" NVARCHAR2(200), 
	"PHAI" NVARCHAR2(20), 
	"CMND" VARCHAR2(20 BYTE), 
	"DIENTHOAI" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"TTXACTHUC" NVARCHAR2(20), 
	"TTXETDUYET" NVARCHAR2(20), 
	"GHICHU" NVARCHAR2(20), 
	"IDUSERXT" NVARCHAR2(20), 
	"IDUSERXD" NVARCHAR2(20), 
	"TTTHONGBAO" NVARCHAR2(200), 
	"IDUSERTT" NVARCHAR2(20), 
	"NGAYSINH" DATE, 
	"NGAYCAPCMND" DATE
);


--RESIDENT
CREATE TABLE "TIN"."RESIDENT" 
(	
	"CMND" NVARCHAR2(20), 
	"HOTEN" NVARCHAR2(20), 
	"NGAYSINH" DATE, 
	"GIOITINH" NVARCHAR2(20), 
	"QUOCTICH" NVARCHAR2(20), 
	"DIACHI" NVARCHAR2(50), 
	"PHUONG" NVARCHAR2(30), 
	"QUANHUYEN" NVARCHAR2(50), 
	"TINH" NVARCHAR2(50), 
	"NGAYCAP" DATE
);


--Insert
--TAIKHOAN
insert into "TIN"."TAIKHOAN" (TAIKHOAN,MATKHAU,ROLE,HOTEN) values ('xacthuc','123',0,'Vũ Trung Tín');
insert into "TIN"."TAIKHOAN" (TAIKHOAN,MATKHAU,ROLE,HOTEN) values ('xetduyet','123',1,'Vũ Trung Tín');
insert into "TIN"."TAIKHOAN" (TAIKHOAN,MATKHAU,ROLE,HOTEN) values ('luutru','123',2,'Bùi Lê Tấn Phi');
insert into "TIN"."TAIKHOAN" (TAIKHOAN,MATKHAU,ROLE,HOTEN) values ('giamsat','123',3,'Bùi Lê Tấn Phi');

--PASSPORTDATA
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Bùi Lê Tấn Phi','Thành phố Hồ Chí Minh','Nam','18110336','0365845845','phiphibb11@gmail.com','Chưa xác thực','Chưa duyệt',null,null,null,'Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Vũ Trung Tín','Đồng Nai','Nam','19110476','0436771212','trungtin@gmail.com','Đã xác thực','Chưa duyệt',null,'1','2','Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Nguyễn Duy Nam','Hà Nội','Nam','18110222','021005212','nam@gmail.com','Đã xác thực','Đã xét duyệt',null,'1','2','Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Trần Ngọc Thiên Thư','Đăk Lăk','Nữ','001245821','0365845845','thu@gmail.com','Chưa xác thực','Chưa duyệt',null,null,null,'Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Trần Nguyên Quang','Quy Nhơn, Bình Định','Nam','991528528','0436532212','@quanggmail.com','Đã xác thực','Chưa duyệt',null,'1','2','Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Lê Minh Hai','Quy Nhơn, Bình Định','Nam','124921420','044564345','hai@gmail.com','Đã xác thực','Đã xét duyệt',null,'1','2','Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Bùi Công Minh','Thành phố Hồ Chí Minh','Nam','0138829423','0365845845','minh@gmail.com','Chưa xác thực','Chưa duyệt',null,null,null,'Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Trần Ngọc Hòa Hoàng','Quy Nhơn, Bình Định','Nam','124295243','099124912','hoang@gmail.com','Đã xác thực','Chưa duyệt',null,'1','2','Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));
Insert into TIN.PASSPORTDATA (HOTEN,DIACHI,PHAI,CMND,DIENTHOAI,EMAIL,TTXACTHUC,TTXETDUYET,GHICHU,IDUSERXT,IDUSERXD,TTTHONGBAO,IDUSERTT,NGAYSINH,NGAYCAPCMND) values ('Nguyễn Hải Trân','Quy Nhơn, Bình Định','Nam','260204325','03249329592','tran@gmail.com','Đã xác thực','Đã xét duyệt',null,'1','2','Chưa thông báo',null,to_date('12-JAN-22','DD-MON-RR'),to_date('12-JAN-22','DD-MON-RR'));


--RESIDENT
Insert into TIN.RESIDENT (CMND,HOTEN,NGAYSINH,GIOITINH,QUOCTICH,DIACHI,PHUONG,QUANHUYEN,TINH,NGAYCAP) values ('1811','Bùi Lê Tấn Phi',to_date('15-MAY-00','DD-MON-RR'),'Nam','Việt Nam','Thôn Phước Sơn','Đức Hiệp','Mộ Đức','Quảng Ngãi',to_date('12-JAN-15','DD-MON-RR'));
Insert into TIN.RESIDENT (CMND,HOTEN,NGAYSINH,GIOITINH,QUOCTICH,DIACHI,PHUONG,QUANHUYEN,TINH,NGAYCAP) values ('1800','Vũ Trung tín',to_date('23-MAY-00','DD-MON-RR'),'Nam','Việt Nam','Thôn Hòa Lộc','Phước Long','Trảng Bom','Đồng Nai',to_date('12-JAN-15','DD-MON-RR'));
Insert into TIN.RESIDENT (CMND,HOTEN,NGAYSINH,GIOITINH,QUOCTICH,DIACHI,PHUONG,QUANHUYEN,TINH,NGAYCAP) values ('1912','Trần Ngọc Đan Phượng',to_date('04-FEB-00','DD-MON-RR'),'Nữ','Việt Nam','Thôn 10','Eabar','Buôn Đôn','Gia Lai',to_date('12-JAN-15','DD-MON-RR'));
Insert into TIN.RESIDENT (CMND,HOTEN,NGAYSINH,GIOITINH,QUOCTICH,DIACHI,PHUONG,QUANHUYEN,TINH,NGAYCAP) values ('1905','Mai Thái Anh',to_date('23-SEP-02','DD-MON-RR'),'Nữ','Việt Nam','Thôn 2','Khánh Hội','Yên Khánh','Ninh Bình',to_date('12-JAN-15','DD-MON-RR'));




-- tao cac user khac
-- user xacthuc
create user xacthuc identified by 123; 
 
-- tạo xacthuc_role
create role xacthuc_role;
grant connect to xacthuc_role; 
grant select, update on tin.passportdata to xacthuc_role;
grant select on tin.resident to xacthuc_role;
grant xacthuc_role to xacthuc;
 
 
-- user xetduyet
create user xetduyet identified by 123; 
 
-- tạo xetduyet_role
create role xetduyet_role;
grant connect to xetduyet_role; 
grant select, update on tin.passportdata to xetduyet_role;
grant xetduyet_role to xetduyet;

 
-- user luutru
create user luutru identified by 123; 

-- tạo luutru_role 
create role luutru_role;
grant connect to luutru_role; 
grant select, update on tin.passportdata to luutru_role;
grant luutru_role to luutru;


-- user giamsat
create user giamsat identified by 123; 

-- tạo giamsat_role 
create role giamsat_role;
grant connect to giamsat_role; 
grant select on tin.passportdata to giamsat_role;
grant giamsat_role to giamsat;



-- tao cac policy, doan này chay tung doan lenh de tranh loi
-- Bảo mật select cho PASSPORTDATA
create or replace function bao_mat_select_passportdata (p_schema in varchar2, p_obj in varchar2)
return varchar2 
as 
	roleUser number;
begin
    -- user tin
    if USER='TIN' then
		return '1=1';
    end if;
    
	select role into roleUser from tin.taikhoan where UPPER(taikhoan.taikhoan)= (select user from dual);
    -- xacthuc
	if roleUser='0' then
		return '1=1';
    -- xet duyet
    elsif roleUser='1' then
		return '1=1';
    -- luu tru
    elsif roleUser='2' then
		return '1=1';
    -- giam sat
    elsif roleUser='3' then
		return '1=1';
	else
		return '1=2';
	end if;
end;

BEGIN 
	DBMS_RLS.add_policy 
	(
		object_schema			=> 'tin',
		object_name			=> 'PASSPORTDATA',
		policy_name        		=> 'Bao_Mat_Select_Passportdata',
		policy_function    		=> 'bao_mat_select_passportdata',
		statement_types    		=> 'SELECT'
	); 
END; 



-- Bảo mật update cho PASSPORTDATA
create or replace function bao_mat_update_passportdata (p_schema in varchar2, p_obj in varchar2)
return varchar2 
as 
	roleUser number;
begin
	-- user tin
    if USER='TIN' then
		return '1=1';
    end if;

	select role into roleUser from tin.taikhoan where UPPER(taikhoan.taikhoan)= (select user from dual);
    -- xacthuc
	if roleUser='0' then
		return '1=1';
    -- xet duyet
    elsif roleUser='1' then
		return '1=1';
    -- luu tru
    elsif roleUser='2' then
		return '1=1';
    -- giam sat
    elsif roleUser='3' then
		return '1=2';
	else
		return '1=2';
	end if;
end;

BEGIN 
	DBMS_RLS.add_policy 
	(
		object_schema			=> 'tin',
		object_name			=> 'PASSPORTDATA',
		policy_name        		=> 'Bao_Mat_Update_Passportdata',
		policy_function    		=> 'bao_mat_update_passportdata',
		statement_types    		=> 'UPDATE'
	); 
END; 



-- Bảo mật select cho RESIDENT
create or replace function bao_mat_select_resident (p_schema in varchar2, p_obj in varchar2)
return varchar2 
as 
	roleUser number;
begin
	-- user tin
    if USER='TIN' then
		return '1=1';
    end if;

	select role into roleUser from tin.taikhoan where UPPER(taikhoan.taikhoan)= (select user from dual);
    -- xacthuc
	if roleUser='0' then
		return '1=1';
	else
		return '1=2';
	end if;
end;

BEGIN 
	DBMS_RLS.add_policy 
	(
		object_schema			=> 'tin',
		object_name			=> 'RESIDENT',
		policy_name        		=> 'Bao_Mat_Select_Resident',
		policy_function    		=> 'bao_mat_select_resident',
		statement_types    		=> 'SELECT'
	); 
END; 