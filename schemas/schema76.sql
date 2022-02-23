DROP DATABASE IF EXISTS "schema76";
CREATE DATABASE "schema76";
USE "schema76";
CREATE TABLE "province_checksums" (
	"province_checksum" INTEGER,
	 PRIMARY KEY ("province_checksum")
);

CREATE TABLE "definition" (
	"province_id" INTEGER,
	"r" VARCHAR,
	"g" VARCHAR,
	"b" VARCHAR,
	"name" VARCHAR,
	"x" VARCHAR,
	 PRIMARY KEY ("province_id")
);

CREATE TABLE "province_setup" (
	"provid" INTEGER,
	"culture" VARCHAR,
	"religion" VARCHAR,
	"tradegoods" VARCHAR,
	"citizens" INTEGER,
	"freedmen" INTEGER,
	"lowerstrata" INTEGER,
	"middlestrata" INTEGER,
	"proletariat" INTEGER,
	"slaves" INTEGER,
	"tribesmen" INTEGER,
	"upperstrata" INTEGER,
	"civilization" INTEGER,
	"settlementrank" INTEGER,
	"nameref" VARCHAR,
	"araref" VARCHAR,
	"terrain" VARCHAR,
	"ischanged" BOOLEAN,
	 PRIMARY KEY ("provid")
);
