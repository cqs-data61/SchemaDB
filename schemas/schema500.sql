DROP DATABASE IF EXISTS "schema500";
CREATE DATABASE "schema500";
USE "schema500";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"event" VARCHAR,
	"role" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tcp_its" (
	"id" BIGINT,
	"user_id" BIGINT,
	"email" VARCHAR,
	"nama_tim" VARCHAR,
	"perguruan_tinggi" VARCHAR,
	"judul_proposal" VARCHAR,
	"nama_ketua" VARCHAR,
	"nama_anggota1" VARCHAR,
	"nama_anggota2" VARCHAR,
	"ktm" VARCHAR,
	"proposal" VARCHAR,
	"biodata" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lomba_its" (
	"id" BIGINT,
	"user_id" BIGINT,
	"email" VARCHAR,
	"nama_peserta" VARCHAR,
	"nis" VARCHAR,
	"tempat_lahir" VARCHAR,
	"tanggal_lahir" DATE,
	"jenis_kelamin" VARCHAR,
	"usia" INT,
	"no_wa_peserta" VARCHAR,
	"nama_pendamping" VARCHAR,
	"nip" INT,
	"no_wa_pendamping" VARCHAR,
	"foto_peserta" VARCHAR,
	"kartu_pelajar" VARCHAR,
	"surat_pernyataan" VARCHAR,
	"bukti_pembayaran" VARCHAR,
	"lampiran_guru" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "expos" (
	"id" BIGINT,
	"user_id" BIGINT,
	"nama_tim" VARCHAR,
	"prodi" VARCHAR,
	"semester" INT,
	"nama_ketua" VARCHAR,
	"nim_ketua" VARCHAR,
	"email" VARCHAR,
	"no_wa" VARCHAR,
	"nama_anggota" VARCHAR,
	"nim_anggota" VARCHAR,
	"nama_produk" VARCHAR,
	"kategori" VARCHAR,
	"deskripsi" TEXT,
	"ktm" VARCHAR,
	"image_produk" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
