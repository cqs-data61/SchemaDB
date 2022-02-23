DROP DATABASE IF EXISTS "schema1088";
CREATE DATABASE "schema1088";
USE "schema1088";
CREATE TABLE "car_body_type" (
	"id" SERIAL,
	"car_id" NOT,
	"body_type_id" NOT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" TEXT,
	"foreign" KEY,
	"foreign" KEY,
	"sold" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car_photo" (
	"id" SERIAL,
	"photo" BYTEA,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car_model" (
	"id" SERIAL,
	"name" VARCHAR,
	"foreign" KEY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "body_type" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "seller" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);
