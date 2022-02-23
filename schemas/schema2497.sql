DROP DATABASE IF EXISTS "schema2497";
CREATE DATABASE "schema2497";
USE "schema2497";
CREATE TABLE "users" (
	"id" CHAR,
	"email" VARCHAR,
	"emailchecked" TINYINT,
	"emailpublic" TINYINT,
	"pass" CHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"avatar" VARCHAR,
	"created" DATETIME
);

CREATE TABLE "thingsnotverified" (
	"id" INT,
	"iduser" CHAR,
	"data" VARCHAR,
	"code" VARCHAR,
	"expire" DATETIME
);

CREATE TABLE "passwordforgotten" (
	"id" INT,
	"email" VARCHAR,
	"code" CHAR,
	"expire" DATETIME
);

CREATE TABLE "compositions" (
	"id" CHAR,
	"iduser" CHAR,
	"public" TINYINT,
	"name" VARCHAR,
	"duration" SMALLINT,
	"bpm" SMALLINT,
	"beatspermeasure" TINYINT,
	"stepsperbeat" TINYINT,
	"data" LONGTEXT,
	"created" DATETIME,
	"updated" DATETIME
);
