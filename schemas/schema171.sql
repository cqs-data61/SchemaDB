DROP DATABASE IF EXISTS "schema171";
CREATE DATABASE "schema171";
USE "schema171";
CREATE TABLE "employees" (
	"id" SERIAL,
	"firstname" TEXT,
	"lastname" TEXT,
	"username" TEXT,
	"pass" TEXT,
	"employeetype" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "employeetypes" (
	"id" SERIAL,
	"position" TEXT,
	 PRIMARY KEY ("id")
);
