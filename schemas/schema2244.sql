DROP DATABASE IF EXISTS "schema2244";
CREATE DATABASE "schema2244";
USE "schema2244";
CREATE TABLE "supplier" (
	"id" INT,
	"nama_supplier" VARCHAR,
	"notelp" VARCHAR,
	"email" VARCHAR,
	"alamat" VARCHAR
);

CREATE TABLE "prodi" (
	"id" INT,
	"id_jurusan" INT,
	"prodi" VARCHAR,
	"keterangan" VARCHAR
);

CREATE TABLE "migration" (
	"version" VARCHAR,
	"apply_time" INT
);

CREATE TABLE "mahasiswa" (
	"id" INT,
	"nim" VARCHAR,
	"nama" VARCHAR,
	"jekel" ENUM,
	"tgllahir" DATE,
	"id_jurusan" INT,
	"id_prodi" INT,
	"email" VARCHAR,
	"alamat" VARCHAR
);

CREATE TABLE "jurusan" (
	"id" INT,
	"kodejurusan" VARCHAR,
	"namajurusan" VARCHAR
);

CREATE TABLE "jenis" (
	"id" INT,
	"nama_jenis" VARCHAR,
	"keterangan" VARCHAR
);

CREATE TABLE "country" (
	"code" CHAR,
	"name" CHAR,
	"population" INT
);

CREATE TABLE "barang" (
	"id" INT,
	"kode_barang" VARCHAR,
	"nama_barang" VARCHAR,
	"satuan" VARCHAR,
	"id_jenis" INT,
	"id_supplier" INT,
	"harga" DOUBLE,
	"stok" INT
);
