DROP DATABASE IF EXISTS "schema1992";
CREATE DATABASE "schema1992";
USE "schema1992";
CREATE TABLE "ftduser" (
	"username" VARCHAR,
	"password" BYTEA,
	 PRIMARY KEY ("username")
);

CREATE TABLE "stats" (
	"username" VARCHAR,
	"kill" INT,
	"death" INT,
	"consumed_bullets" INT,
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "ftduser" ("username")
);

CREATE TABLE "profile" (
	"username" VARCHAR,
	"name" VARCHAR,
	"gender" VARCHAR,
	 CONSTRAINT "fk_username" FOREIGN KEY ("username") REFERENCES "ftduser" ("username")
);
