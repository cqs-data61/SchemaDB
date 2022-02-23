DROP DATABASE IF EXISTS "schema1038";
CREATE DATABASE "schema1038";
USE "schema1038";
CREATE TABLE "car_body" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "advertisement" (
	"id" SERIAL,
	"description" VARCHAR,
	"brand" VARCHAR,
	"car_body_id" INT,
	"photo_address" VARCHAR,
	"created" TIMESTAMP,
	"sold" BOOLEAN,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);
