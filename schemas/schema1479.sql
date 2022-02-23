DROP DATABASE IF EXISTS "schema1479";
CREATE DATABASE "schema1479";
USE "schema1479";
CREATE TABLE "kategori" (
	"id" INT,
	"kd" CHAR,
	"judul" VARCHAR,
	"deskripsi" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "gol_pok" (
	"id" INT,
	"kategori" INT,
	"gol_pok" CHAR,
	"judul" VARCHAR,
	"deskripsi" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_gol_pok_to_kategori" FOREIGN KEY ("kategori") REFERENCES "kategori" ("id")
);

CREATE TABLE "gol" (
	"id" INT,
	"gol_pok" INT,
	"gol" CHAR,
	"judul" VARCHAR,
	"deskripsi" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_gol_to_gol_pok" FOREIGN KEY ("gol_pok") REFERENCES "gol_pok" ("id")
);

CREATE TABLE "sub_gol" (
	"id" INT,
	"gol" INT,
	"sub_gol" CHAR,
	"judul" VARCHAR,
	"deskripsi" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_sub_gol_to_gol" FOREIGN KEY ("gol") REFERENCES "gol" ("id")
);

CREATE TABLE "kelompok" (
	"id" INT,
	"sub_gol" INT,
	"kelompok" CHAR,
	"judul" VARCHAR,
	"deskripsi" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_kelompok_to_sub_gol" FOREIGN KEY ("sub_gol") REFERENCES "sub_gol" ("id")
);
