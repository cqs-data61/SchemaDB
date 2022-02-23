DROP DATABASE IF EXISTS "schema284";
CREATE DATABASE "schema284";
USE "schema284";
CREATE TABLE "authorities" (
	"username" VARCHAR,
	"authority" VARCHAR
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "driver" (
	"id" BIGINT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"phone" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car" (
	"id" BIGINT,
	"model" VARCHAR,
	"color" VARCHAR,
	"driver_id" BIGINT,
	"year" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "constraint3" FOREIGN KEY ("driver_id") REFERENCES "driver" ("id")
);

CREATE TABLE "carwash" (
	"id" BIGINT,
	"price" BIGINT,
	"date" DATE,
	"car_id" BIGINT,
	 CONSTRAINT "constraint4" FOREIGN KEY ("car_id") REFERENCES "car" ("id")
);
