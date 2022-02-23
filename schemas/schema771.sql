DROP DATABASE IF EXISTS "schema771";
CREATE DATABASE "schema771";
USE "schema771";
CREATE TABLE "storeclassa" (
	"idx" INT,
	"classcodea" VARCHAR,
	"classnamea" VARCHAR,
	 PRIMARY KEY ("idx")
);

CREATE TABLE "storeclassb" (
	"idx" INT,
	"classcodea" VARCHAR,
	"classcodeb" VARCHAR,
	"classnameb" VARCHAR,
	 PRIMARY KEY ("idx"),
	 CONSTRAINT "fkeycon_storeclassb_to_storeclassa" FOREIGN KEY ("classcodea") REFERENCES "storeclassa" ("classcodea")
);

CREATE TABLE "storeclassc" (
	"idx" INT,
	"classcodeb" VARCHAR,
	"classcodec" VARCHAR,
	"classnamec" VARCHAR,
	 PRIMARY KEY ("idx"),
	 CONSTRAINT "fkeycon_storeclassc_to_storeclassb" FOREIGN KEY ("classcodeb") REFERENCES "storeclassb" ("classcodeb")
);

CREATE TABLE "nearbystore" (
	"idx" INT,
	"storename" VARCHAR,
	"classcodec" VARCHAR,
	"classnamec" VARCHAR,
	"roadaddress" VARCHAR,
	"lat" FLOAT,
	"lng" FLOAT,
	 PRIMARY KEY ("idx")
);

CREATE TABLE "apartment" (
	"idx" INT,
	"apartname" VARCHAR,
	"dealamount" INT,
	"buildyear" INT,
	"landarea" FLOAT,
	"dong" VARCHAR,
	"dealdate" DATE,
	"dedicatedarea" FLOAT,
	"lotnum" VARCHAR,
	"citycode" BIGINT,
	"floor" INT,
	 PRIMARY KEY ("idx")
);

CREATE TABLE "city" (
	"citycode" BIGINT,
	"citysido" VARCHAR,
	"citygugun" VARCHAR,
	"citydong" VARCHAR,
	"cityli" VARCHAR,
	 PRIMARY KEY ("citycode")
);

CREATE TABLE "board" (
	"idx" INT,
	"boardwriter" VARCHAR,
	"boardtitle" VARCHAR,
	"boarddate" DATETIME,
	"boardcontent" VARCHAR
);

CREATE TABLE "notice" (
	"idx" INT,
	"noticewriter" VARCHAR,
	"noticetitle" VARCHAR,
	"noticedate" DATETIME,
	"noticecontent" VARCHAR
);

CREATE TABLE "user" (
	"idx" INT,
	"userid" VARCHAR,
	"userpass" VARCHAR,
	"username" VARCHAR,
	"userrole" INT,
	"useremail" VARCHAR,
	"useraddress" VARCHAR,
	 PRIMARY KEY ("idx")
);

CREATE TABLE "favoritearea" (
	"idx" INT,
	"userid" VARCHAR,
	"citycode" BIGINT,
	 PRIMARY KEY ("idx"),
	 CONSTRAINT "fkeycon_favoritearea_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("userid"),
	 CONSTRAINT "fkeycon_favoritearea_to_city" FOREIGN KEY ("citycode") REFERENCES "city" ("citycode")
);
