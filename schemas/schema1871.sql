DROP DATABASE IF EXISTS "schema1871";
CREATE DATABASE "schema1871";
USE "schema1871";
CREATE TABLE "storesellsproduct" (
	"pid" INT,
	"storenumber" INT,
	"transactiondate" DATE,
	"quantity" INT,
	 PRIMARY KEY ("transactiondate","pid","storenumber")
);

CREATE TABLE "store" (
	"storenumber" INT,
	"streetaddress" VARCHAR,
	"phonenumber" VARCHAR,
	"cityname" VARCHAR,
	"state" VARCHAR,
	 PRIMARY KEY ("storenumber")
);

CREATE TABLE "product" (
	"pid" INT,
	"productname" VARCHAR,
	"price" DECIMAL,
	"manufacturername" VARCHAR,
	 PRIMARY KEY ("pid")
);

CREATE TABLE "manufacturer" (
	"manufacturername" VARCHAR,
	"maximumdiscount" FLOAT,
	 PRIMARY KEY ("manufacturername")
);

CREATE TABLE "manages" (
	"emailaddress" VARCHAR,
	"storenumber" INT,
	 PRIMARY KEY ("emailaddress","storenumber")
);

CREATE TABLE "manager" (
	"emailaddress" VARCHAR,
	"managername" VARCHAR,
	 PRIMARY KEY ("emailaddress")
);

CREATE TABLE "holiday" (
	"holidaydate" DATE,
	"holidayname" VARCHAR,
	 PRIMARY KEY ("holidaydate")
);

CREATE TABLE "goesonsale" (
	"pid" INT,
	"saledate" DATE,
	"saleprice" DECIMAL,
	 PRIMARY KEY ("saledate","pid")
);

CREATE TABLE "city" (
	"cityname" VARCHAR,
	"state" VARCHAR,
	"population" INT,
	 PRIMARY KEY ("cityname","state")
);

CREATE TABLE "category" (
	"categoryname" VARCHAR,
	 PRIMARY KEY ("categoryname")
);

CREATE TABLE "categorizedby" (
	"pid" INT,
	"categoryname" VARCHAR,
	 PRIMARY KEY ("pid","categoryname")
);
