DROP DATABASE IF EXISTS "schema1974";
CREATE DATABASE "schema1974";
USE "schema1974";
CREATE TABLE "wait_patients" (
	"id" INT,
	"name" VARCHAR,
	"dob" DATE,
	"healthcard" INT,
	"email" VARCHAR,
	"vaccinetype" VARCHAR,
	"estimatetime" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patients" (
	"id" INT,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"firstdose" TINYINT,
	"seconddose" TINYINT,
	"thirddose" TINYINT,
	 PRIMARY KEY ("id")
);
