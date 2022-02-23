DROP DATABASE IF EXISTS "schema234";
CREATE DATABASE "schema234";
USE "schema234";
CREATE TABLE "saved-exercises" (
	"userid" INT,
	"exerciseid" INT,
	"exercisename" TEXT,
	"muscleid" INT,
	"musclename" TEXT,
	 PRIMARY KEY ("exerciseid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("userid")
);
