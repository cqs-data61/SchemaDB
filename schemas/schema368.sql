DROP DATABASE IF EXISTS "schema368";
CREATE DATABASE "schema368";
USE "schema368";
CREATE TABLE "purchases" (
	"id" INT,
	"datetime" TIMESTAMP,
	"productid" INT,
	"customerid" INT,
	"employeeid" INT
);

CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR
);

CREATE TABLE "employees" (
	"id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"status" VARCHAR
);

CREATE TABLE "products" (
	"id" INT,
	"name" VARCHAR,
	"status" VARCHAR,
	"material" VARCHAR,
	"weight" INT,
	"cost" INT
);
