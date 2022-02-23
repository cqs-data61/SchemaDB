DROP DATABASE IF EXISTS "schema2286";
CREATE DATABASE "schema2286";
USE "schema2286";
CREATE TABLE "advert" (
	"id" SERIAL,
	"description" VARCHAR,
	"model" INT,
	"typebody" INT,
	"password" VARCHAR,
	"mileage" INT,
	"price" INT,
	"photoid" INT,
	"yearofissue" INT,
	"sold" BOOLEAN,
	"users" INT,
	"created" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"city" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "typebody" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "city" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "model" (
	"id" SERIAL,
	"name" VARCHAR,
	"make" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "make" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);
