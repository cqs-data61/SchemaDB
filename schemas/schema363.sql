DROP DATABASE IF EXISTS "schema363";
CREATE DATABASE "schema363";
USE "schema363";
CREATE TABLE "startend" (
	"id" INT,
	"start" DATETIME,
	"end" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rx" (
	"id" INT,
	"dt" DATETIME,
	"rx" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tx" (
	"id" INT,
	"dt" DATETIME,
	"tx" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mem" (
	"id" INT,
	"dt" DATETIME,
	"mem" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cpu" (
	"id" INT,
	"dt" DATETIME,
	"cpu" DOUBLE,
	 PRIMARY KEY ("id")
);
