DROP DATABASE IF EXISTS "schema854";
CREATE DATABASE "schema854";
USE "schema854";
CREATE TABLE "user" (
	"id_user" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"phonenumber" INT,
	"location" VARCHAR,
	 PRIMARY KEY ("id_user")
);

CREATE TABLE "admin" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "brands" (
	"id_brands" INT,
	"brandname" VARCHAR,
	"category" VARCHAR,
	"logo" VARCHAR,
	 PRIMARY KEY ("id_brands")
);

CREATE TABLE "menu" (
	"id_menu" INT,
	"title" VARCHAR,
	"foodimage" VARCHAR,
	"price" INT,
	"id_brands" INT,
	 PRIMARY KEY ("id_menu"),
	 CONSTRAINT "fkeycon_menu_to_brands" FOREIGN KEY ("id_brands") REFERENCES "brands" ("id_brands")
);

CREATE TABLE "chef" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"phonenumber" INT,
	"location" VARCHAR,
	"imagecardid" VARCHAR,
	 PRIMARY KEY ("id")
);
