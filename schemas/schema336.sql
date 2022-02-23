DROP DATABASE IF EXISTS "schema336";
CREATE DATABASE "schema336";
USE "schema336";
CREATE TABLE "users" (
	"id_user" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" INT,
	"email_verified_at" TIMESTAMP,
	"token" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "statuses" (
	"id_status" BIGINT,
	"jenis_status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "prodis" (
	"id_prodi" BIGINT,
	"nama_prodi" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "kategori" (
	"id_kategori" BIGINT,
	"nama_kategori" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"uuid" VARCHAR,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "detail_users" (
	"id_detail" VARCHAR,
	"kategori" INT,
	"nama_brand" VARCHAR,
	"deskripsi" VARCHAR,
	"alamat" VARCHAR,
	"nama_ketua" VARCHAR,
	"no_whatsapp" VARCHAR,
	"status" INT,
	"prodi" INT,
	"website" VARCHAR,
	"instagram" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "anggota" (
	"id_anggota" BIGINT,
	"id_user" VARCHAR,
	"nama" VARCHAR,
	"status" INT,
	"prodi" INT,
	"no_identify" VARCHAR,
	"jabatan" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
