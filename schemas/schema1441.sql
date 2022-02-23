DROP DATABASE IF EXISTS "schema1441";
CREATE DATABASE "schema1441";
USE "schema1441";
CREATE TABLE "time_info" (
	"id" INT,
	"vendor_id" INT,
	"date_pick" DATE,
	"time_pick" TIME,
	"date_drop" DATE,
	"time_drop" TIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payment" (
	"id" INT,
	"vendor_id" INT,
	"pass_num" INT,
	"pay_type" INT,
	"fare" REAL,
	"extra" REAL,
	"tax" REAL,
	"tip" REAL,
	"tolls" REAL,
	"surcharge" REAL,
	"total" REAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "location" (
	"id" INT,
	"vendor_id" INT,
	"distance" REAL,
	"pu_loc" INT,
	"do_loc" INT,
	 PRIMARY KEY ("id")
);
