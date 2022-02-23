DROP DATABASE IF EXISTS "schema1556";
CREATE DATABASE "schema1556";
USE "schema1556";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" CHAR,
	"level" ENUM
);

CREATE TABLE "penjualan_barang" (
	"id_penjualan" INT,
	"id_barang" INT,
	"harga_satuan" DECIMAL,
	"jumlah" INT
);

CREATE TABLE "penjualan" (
	"id" INT,
	"tanggal" DATETIME,
	"nama_pembeli" VARCHAR,
	"karyawan_pencatat" INT,
	"biaya_service" DECIMAL
);

CREATE TABLE "pembelian_barang" (
	"id_pembelian" INT,
	"id_barang" INT,
	"harga_satuan" DECIMAL,
	"jumlah" INT
);

CREATE TABLE "pembelian" (
	"id" INT,
	"tanggal" DATETIME,
	"beli_dari" VARCHAR,
	"karyawan_pencatat" INT
);

CREATE TABLE "log" (
	"id_karyawan" INT,
	"aktivitas" VARCHAR,
	"waktu" TIMESTAMP
);

CREATE TABLE "barang" (
	"id" INT,
	"kode" VARCHAR,
	"nama" VARCHAR,
	"merk" VARCHAR,
	"kategori" VARCHAR,
	"harga" DECIMAL,
	"stok" INT
);
