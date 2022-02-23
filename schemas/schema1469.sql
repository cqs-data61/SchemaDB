DROP DATABASE IF EXISTS "schema1469";
CREATE DATABASE "schema1469";
USE "schema1469";
CREATE TABLE "companies" (
	"id" INT,
	"code" CHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "directors" (
	"id" INT,
	"comp_id" INT,
	"name" VARCHAR,
	"job_desc" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_directors" FOREIGN KEY ("comp_id") REFERENCES "companies" ("id")
);

CREATE TABLE "commisioners" (
	"id" INT,
	"comp_id" INT,
	"name" VARCHAR,
	"job_desc" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_commisioners" FOREIGN KEY ("comp_id") REFERENCES "companies" ("id")
);

CREATE TABLE "shareholders" (
	"id" INT,
	"comp_id" INT,
	"name" VARCHAR,
	"shares" DECIMAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_shareholders" FOREIGN KEY ("comp_id") REFERENCES "companies" ("id")
);

CREATE TABLE "profiles" (
	"id" INT,
	"comp_id" INT,
	"hq_address" TEXT,
	"hq_phone" VARCHAR,
	"hq_fax" VARCHAR,
	"website" VARCHAR,
	"started_operation" CHAR,
	"associated_companies" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_profiles" FOREIGN KEY ("comp_id") REFERENCES "companies" ("id")
);
