DROP DATABASE IF EXISTS "schema139";
CREATE DATABASE "schema139";
USE "schema139";
CREATE TABLE "users" (
	"iduser" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"fullname" VARCHAR
);

CREATE TABLE "links" (
	"idlink" INT,
	"title" VARCHAR,
	"url" VARCHAR,
	"description" TEXT,
	"iduser" INT,
	"createdat" TIMESTAMP
);
