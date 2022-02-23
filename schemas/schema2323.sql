DROP DATABASE IF EXISTS "schema2323";
CREATE DATABASE "schema2323";
USE "schema2323";
CREATE TABLE "user" (
	"id" INT,
	"nama_lengkap" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"posisi" VARCHAR,
	"phone" VARCHAR
);

CREATE TABLE "transaksi" (
	"id" INT,
	"nama_pembeli" VARCHAR,
	"id_pembeli" INT,
	"barang" VARCHAR,
	"biaya" INT,
	"alamat" VARCHAR,
	"tanggal" DATE,
	"bukti_pembayaran" VARCHAR,
	"status" VARCHAR
);

CREATE TABLE "list_kategori" (
	"kategori" VARCHAR,
	"id" INT
);

CREATE TABLE "cart" (
	"id" INT,
	"id_user" INT,
	"nama_barang" VARCHAR,
	"id_barang" INT,
	"harga_barang" INT
);

CREATE TABLE "barang" (
	"id_barang" INT,
	"nama" VARCHAR,
	"kategori" VARCHAR,
	"stok" INT,
	"harga" INT,
	"gambar" VARCHAR
);
