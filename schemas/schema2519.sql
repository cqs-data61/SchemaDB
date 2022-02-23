DROP DATABASE IF EXISTS "schema2519";
CREATE DATABASE "schema2519";
USE "schema2519";
CREATE TABLE "tribalvillages" (
	"domain" TEXT,
	"subtypegoodyhut" TEXT,
	"name" TEXT,
	"goodyhut" TEXT,
	"description" TEXT,
	"weight" INTEGER,
	"icon" TEXT,
	"sortindex" INTEGER,
	 PRIMARY KEY ("domain","subtypegoodyhut")
);

CREATE TABLE "eghv_expansion2goodyhuts" (
	"domain" TEXT,
	"subtypegoodyhut" TEXT,
	"name" TEXT,
	"goodyhut" TEXT,
	"description" TEXT,
	"weight" INTEGER,
	"icon" TEXT,
	"sortindex" INTEGER,
	 PRIMARY KEY ("domain","subtypegoodyhut")
);

CREATE TABLE "eghv_expansion1goodyhuts" (
	"domain" TEXT,
	"subtypegoodyhut" TEXT,
	"name" TEXT,
	"goodyhut" TEXT,
	"description" TEXT,
	"weight" INTEGER,
	"icon" TEXT,
	"sortindex" INTEGER,
	 PRIMARY KEY ("domain","subtypegoodyhut")
);

CREATE TABLE "eghv_standardgoodyhuts" (
	"domain" TEXT,
	"subtypegoodyhut" TEXT,
	"name" TEXT,
	"goodyhut" TEXT,
	"description" TEXT,
	"weight" INTEGER,
	"icon" TEXT,
	"sortindex" INTEGER,
	 PRIMARY KEY ("domain","subtypegoodyhut")
);
