DROP DATABASE IF EXISTS "schema2426";
CREATE DATABASE "schema2426";
USE "schema2426";
CREATE TABLE "列" (
	"キット番号" CHARACTER,
	"列番号" NUMERIC,
	"品種番号" CHARACTER,
	"種の数" NUMERIC,
	 PRIMARY KEY ("キット番号","列番号")
);

CREATE TABLE "キットの特徴" (
	"キット番号" CHARACTER,
	"順序番号" NUMERIC,
	"特徴" VARCHAR,
	 PRIMARY KEY ("キット番号","順序番号")
);

CREATE TABLE "栽培キット" (
	"キット番号" CHARACTER,
	"種まき日" DATE,
	"カバー" CHAR,
	"素材" VARCHAR,
	 PRIMARY KEY ("キット番号")
);

CREATE TABLE "品種" (
	"品種番号" CHARACTER,
	"名前" VARCHAR,
	 PRIMARY KEY ("品種番号")
);

CREATE TABLE "特徴" (
	"特徴" VARCHAR,
	 PRIMARY KEY ("特徴")
);

CREATE TABLE "素材" (
	"素材" VARCHAR,
	 PRIMARY KEY ("素材")
);

CREATE TABLE "カバー" (
	"カバー" CHAR,
	 PRIMARY KEY ("カバー")
);
