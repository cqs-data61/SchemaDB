DROP DATABASE IF EXISTS "schema186";
CREATE DATABASE "schema186";
USE "schema186";
CREATE TABLE "user" (
	"user_id" INT,
	"nama" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"level" ENUM,
	"status" ENUM,
	"pict" VARCHAR
);

CREATE TABLE "sktm" (
	"sktm_id" INT,
	"masyarakat_id" INT,
	"nama" VARCHAR,
	"nik" VARCHAR,
	"nokk" VARCHAR,
	"pekerjaan" VARCHAR,
	"alamat" TEXT,
	"keperluan" TEXT,
	"tanggal_diajukan" DATE,
	"tanggal_disetujui" DATE,
	"status" ENUM,
	"file" VARCHAR
);

CREATE TABLE "masyarakat" (
	"masyarakat_id" INT,
	"nama" VARCHAR,
	"tempat_lahir" VARCHAR,
	"tanggal_lahir" DATE,
	"jk" ENUM,
	"pekerjaan" VARCHAR,
	"nik" VARCHAR,
	"user_id" INT
);

CREATE TABLE "kk" (
	"kk_id" INT,
	"masyarakat_id" INT,
	"nama" VARCHAR,
	"nik" VARCHAR,
	"kk_sebelum" VARCHAR,
	"alamat" TEXT,
	"rt" VARCHAR,
	"rw" VARCHAR,
	"kelurahan" VARCHAR,
	"kecamatan" VARCHAR,
	"kabupaten" VARCHAR,
	"provinsi" VARCHAR,
	"kode_pos" VARCHAR,
	"telepon" VARCHAR,
	"alasan_permohonan" TEXT,
	"tanggal_diajukan" DATE,
	"tanggal_disetujui" DATE,
	"status" ENUM,
	"file" VARCHAR
);

CREATE TABLE "anggota" (
	"anggota_id" INT,
	"nik" VARCHAR,
	"nama" VARCHAR,
	"kk_id" INT
);
