DROP DATABASE IF EXISTS "schema894";
CREATE DATABASE "schema894";
USE "schema894";
CREATE TABLE "hotel" (
	"city" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"zip" VARCHAR
);

CREATE TABLE "city" (
	"id" INT,
	"name" VARCHAR,
	"state" VARCHAR,
	"country" VARCHAR
);

CREATE TABLE "emp" (
	"emp_no" VARCHAR,
	"emp_name" VARCHAR,
	"sal" INT,
	 PRIMARY KEY ("emp_no")
);
