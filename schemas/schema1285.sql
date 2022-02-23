DROP DATABASE IF EXISTS "schema1285";
CREATE DATABASE "schema1285";
USE "schema1285";
CREATE TABLE "plannings" (
	"id" BIGINT,
	"hour" INT,
	"date" DATE,
	"maintenance" BOOLEAN,
	"room_name" VARCHAR
);

CREATE TABLE "rooms" (
	"name" VARCHAR,
	"capacity" INT,
	"equipments" VARCHAR,
	 PRIMARY KEY ("name")
);
