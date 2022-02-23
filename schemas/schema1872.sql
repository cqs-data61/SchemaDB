DROP DATABASE IF EXISTS "schema1872";
CREATE DATABASE "schema1872";
USE "schema1872";
CREATE TABLE "admin" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pegawai" (
	"id" INTEGER,
	"nama" TEXT,
	"nip" TEXT,
	"kp_terakhir" DATE,
	"kp_berikut" DATE,
	 PRIMARY KEY ("id")
);
