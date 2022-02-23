DROP DATABASE IF EXISTS "schema2027";
CREATE DATABASE "schema2027";
USE "schema2027";
CREATE TABLE "penerima" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"nama" TEXT,
	"umur" INTEGER,
	"fakir" INTEGER,
	"miskin" INTEGER,
	"fisabilillah" INTEGER,
	"mualaf" INTEGER,
	"gharim" INTEGER,
	"ibnusabil" INTEGER,
	"amil" INTEGER,
	"bobot" INTEGER,
	"layak" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hewan" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"jenis" TEXT,
	"keterangan" TEXT,
	"berat" INTEGER,
	 PRIMARY KEY ("id")
);
