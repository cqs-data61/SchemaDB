DROP DATABASE IF EXISTS "schema2409";
CREATE DATABASE "schema2409";
USE "schema2409";
CREATE TABLE "medicalrecords" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"birthdate" VARCHAR,
	"medications" RESULT_SET,
	"allergies" RESULT_SET,
	 PRIMARY KEY ("id")
);

CREATE TABLE "firestations" (
	"id" INT,
	"address" VARCHAR,
	"station" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "persons" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"zip" VARCHAR,
	"phone" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);
