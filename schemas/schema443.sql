DROP DATABASE IF EXISTS "schema443";
CREATE DATABASE "schema443";
USE "schema443";
CREATE TABLE "lot" (
	"id" INTEGER,
	"floor" INTEGER,
	"total_square" NUMERIC,
	"living_square" NUMERIC,
	"kitchen_square" NUMERIC,
	"price" INTEGER,
	"lot_type" VARCHAR,
	"room_type" VARCHAR,
	"id_section" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "section" (
	"id" SERIAL,
	"name" VARCHAR,
	"id_building" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "building" (
	"id" INTEGER,
	"name" VARCHAR,
	"id_project" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project" (
	"id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);
