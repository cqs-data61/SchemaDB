DROP DATABASE IF EXISTS "schema1015";
CREATE DATABASE "schema1015";
USE "schema1015";
CREATE TABLE "userinfo_uuid" (
	"uuid" VARCHAR,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"dob" DATE,
	"address" VARCHAR,
	"city" VARCHAR,
	"state_id" TINYINT,
	"zip" VARCHAR,
	"country_id" SMALLINT,
	"account_type" VARCHAR,
	"closest_airport" VARCHAR,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "userinfo" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"dob" DATE,
	"address" VARCHAR,
	"city" VARCHAR,
	"state_id" TINYINT,
	"zip" VARCHAR,
	"country_id" SMALLINT,
	"account_type" VARCHAR,
	"closest_airport" VARCHAR,
	 PRIMARY KEY ("id")
);
