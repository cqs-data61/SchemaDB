DROP DATABASE IF EXISTS "schema1120";
CREATE DATABASE "schema1120";
USE "schema1120";
CREATE TABLE "tbl_clients" (
	"id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_meter_measurements" (
	"id" INT,
	"client_id" INT,
	"date" DATE,
	"value" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "client_id" FOREIGN KEY ("client_id") REFERENCES "tbl_clients" ("id")
);
