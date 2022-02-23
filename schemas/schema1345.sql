DROP DATABASE IF EXISTS "schema1345";
CREATE DATABASE "schema1345";
USE "schema1345";
CREATE TABLE "hocky" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kiphoc" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tuanhoc" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "namhoc" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kyhoc" (
	"id" INT,
	"namhocid" INT,
	"hockyid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "kyhoc_ibfk_2" FOREIGN KEY ("hockyid") REFERENCES "hocky" ("id"),
	 CONSTRAINT "kyhoc_ibfk_1" FOREIGN KEY ("namhocid") REFERENCES "namhoc" ("id")
);

CREATE TABLE "ngayhoc" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "khoa" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bomon" (
	"id" INT,
	"ten" VARCHAR,
	"mota" VARCHAR,
	"khoa_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "bomon_ibfk_1" FOREIGN KEY ("khoa_id") REFERENCES "khoa" ("id")
);

CREATE TABLE "monhoc" (
	"id" INT,
	"ten" VARCHAR,
	"sotc" INT,
	"mota" VARCHAR,
	"bomonid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "monhoc_ibfk_1" FOREIGN KEY ("bomonid") REFERENCES "bomon" ("id")
);

CREATE TABLE "monhockyhoc" (
	"id" INT,
	"monhocid" INT,
	"kyhocid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "monhockyhoc_ibfk_2" FOREIGN KEY ("kyhocid") REFERENCES "kyhoc" ("id"),
	 CONSTRAINT "monhockyhoc_ibfk_1" FOREIGN KEY ("monhocid") REFERENCES "monhoc" ("id")
);

CREATE TABLE "lophocphan" (
	"id" INT,
	"ten" VARCHAR,
	"sisotoida" INT,
	"mota" VARCHAR,
	"monhockyhocid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lophocphan_ibfk_1" FOREIGN KEY ("monhockyhocid") REFERENCES "monhockyhoc" ("id")
);

CREATE TABLE "diachi" (
	"id" INT,
	"sonha" VARCHAR,
	"toanha" VARCHAR,
	"xompho" VARCHAR,
	"phuongxa" VARCHAR,
	"quanhuyen" VARCHAR,
	"tinhthanh" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "thanhvien" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"ngaysinh" DATE,
	"email" VARCHAR,
	"dt" VARCHAR,
	"ghichu" VARCHAR,
	"vitri" VARCHAR,
	"ho" VARCHAR,
	"dem" VARCHAR,
	"ten" VARCHAR,
	"diachiid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "thanhvien_ibfk_1" FOREIGN KEY ("diachiid") REFERENCES "diachi" ("id")
);

CREATE TABLE "giangvienkhoa" (
	"id" INT,
	"k_id" INT,
	"giangvienid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "giangvienkhoa_ibfk_2" FOREIGN KEY ("giangvienid") REFERENCES "thanhvien" ("id"),
	 CONSTRAINT "giangvienkhoa_ibfk_1" FOREIGN KEY ("k_id") REFERENCES "khoa" ("id")
);

CREATE TABLE "lichhoc" (
	"id" INT,
	"ten" VARCHAR,
	"lhpid" INT,
	"tuanid" INT,
	"ngayid" INT,
	"kipid" INT,
	"mota" VARCHAR,
	"giangvienid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "lichhoc_ibfk_5" FOREIGN KEY ("giangvienid") REFERENCES "thanhvien" ("id"),
	 CONSTRAINT "lichhoc_ibfk_3" FOREIGN KEY ("ngayid") REFERENCES "ngayhoc" ("id"),
	 CONSTRAINT "lichhoc_ibfk_4" FOREIGN KEY ("kipid") REFERENCES "kiphoc" ("id"),
	 CONSTRAINT "lichhoc_ibfk_1" FOREIGN KEY ("lhpid") REFERENCES "lophocphan" ("id"),
	 CONSTRAINT "lichhoc_ibfk_2" FOREIGN KEY ("tuanid") REFERENCES "tuanhoc" ("id")
);
