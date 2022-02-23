DROP DATABASE IF EXISTS "schema1397";
CREATE DATABASE "schema1397";
USE "schema1397";
CREATE TABLE "joblisting" (
	"id" VARCHAR,
	"company" VARCHAR,
	"location" VARCHAR,
	"reqexperience" INT,
	"description" VARCHAR,
	"type" VARCHAR,
	"contacthr" VARCHAR,
	"createddate" TIMESTAMP,
	"updateddate" TIMESTAMP,
	"isactive" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "student" (
	"id" VARCHAR,
	"name" VARCHAR,
	"age" INT,
	"experience" INT,
	"contactnum" VARCHAR,
	"college" VARCHAR,
	"city" VARCHAR,
	"createddate" TIMESTAMP,
	"updateddate" TIMESTAMP,
	 PRIMARY KEY ("id")
);
