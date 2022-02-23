DROP DATABASE IF EXISTS "schema1338";
CREATE DATABASE "schema1338";
USE "schema1338";
CREATE TABLE "tbl_company" (
	"id" IDENTITY,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_employee" (
	"id" IDENTITY,
	"company_id" INT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	"salary" DOUBLE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tbl_employee_to_tbl_company" FOREIGN KEY ("company_id") REFERENCES "tbl_company" ("id")
);
