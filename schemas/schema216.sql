DROP DATABASE IF EXISTS "schema216";
CREATE DATABASE "schema216";
USE "schema216";
CREATE TABLE "regions" (
	"id" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "provinces" (
	"id" VARCHAR,
	"name" VARCHAR,
	"region_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_province_region_id" FOREIGN KEY ("region_id") REFERENCES "regions" ("id")
);

CREATE TABLE "districts" (
	"id" VARCHAR,
	"name" VARCHAR,
	"province_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_district_province_id" FOREIGN KEY ("province_id") REFERENCES "provinces" ("id")
);
