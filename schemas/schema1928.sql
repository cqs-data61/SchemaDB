DROP DATABASE IF EXISTS "schema1928";
CREATE DATABASE "schema1928";
USE "schema1928";
CREATE TABLE "student" (
	"sid" LONG,
	"sname" VARCHAR,
	"smail" VARCHAR,
	 PRIMARY KEY ("sid")
);

CREATE TABLE "employee" (
	"employee_id" LONG,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"subject" VARCHAR,
	 PRIMARY KEY ("employee_id")
);
