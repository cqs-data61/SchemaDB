DROP DATABASE IF EXISTS "schema2049";
CREATE DATABASE "schema2049";
USE "schema2049";
CREATE TABLE "recommenders" (
	"recommenderid" SERIAL,
	"recommendername" VARCHAR,
	"isenabled" BOOLEAN,
	 PRIMARY KEY ("recommenderid")
);

CREATE TABLE "gifts" (
	"giftid" SERIAL,
	"recommenderid" INT,
	"giftname" VARCHAR,
	"price" VARCHAR,
	"image" VARCHAR,
	"description" VARCHAR,
	"shop" VARCHAR,
	"address" VARCHAR,
	"phone" VARCHAR,
	"isenabled" BOOLEAN,
	 PRIMARY KEY ("giftid"),
	 CONSTRAINT "fk_recommenderid" FOREIGN KEY ("recommenderid") REFERENCES "recommenders" ("recommenderid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"username" VARCHAR,
	"mailaddress" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"isenabled" BOOLEAN,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "favorites" (
	"favoriteid" SERIAL,
	"userid" INT,
	"giftid" INT,
	 PRIMARY KEY ("favoriteid"),
	 CONSTRAINT "fk_userid" FOREIGN KEY ("userid") REFERENCES "users" ("userid"),
	 CONSTRAINT "fk_giftid" FOREIGN KEY ("giftid") REFERENCES "gifts" ("giftid")
);
