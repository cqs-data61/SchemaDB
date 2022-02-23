DROP DATABASE IF EXISTS "schema2417";
CREATE DATABASE "schema2417";
USE "schema2417";
CREATE TABLE "tbuser" (
	"kode_user" INT,
	"nama" VARCHAR,
	"ket" VARCHAR
);

CREATE TABLE "tbitem" (
	"id" INT,
	"kode_user" VARCHAR,
	"kodebarang" VARCHAR,
	"nama" VARCHAR,
	"qty" INT,
	"lokasi" VARCHAR,
	"tgl_pinjam" DATETIME,
	"tgl_kembali" DATETIME
);

CREATE TABLE "tbidentity" (
	"id" INT,
	"kode_user" INT,
	"nama" VARCHAR,
	"ket" VARCHAR
);

CREATE TABLE "tbdetil" (
	"id" INT,
	"kode_user" VARCHAR,
	"nama_user" VARCHAR,
	"ket" VARCHAR,
	"kodebarang" VARCHAR,
	"nama_barang" VARCHAR,
	"qty" VARCHAR,
	"lokasi" VARCHAR,
	"tgl_pinjam" DATETIME,
	"tgl_kembali" DATETIME,
	"status" VARCHAR
);

CREATE TABLE "tbbarang" (
	"kodebarang" VARCHAR,
	"qty" INT,
	"nama" VARCHAR,
	"lokasi" VARCHAR
);

CREATE TABLE "tbadmin" (
	"kode_user" VARCHAR,
	"nama" VARCHAR,
	"pass" VARCHAR
);
