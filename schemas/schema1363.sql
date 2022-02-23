DROP DATABASE IF EXISTS "schema1363";
CREATE DATABASE "schema1363";
USE "schema1363";
CREATE TABLE "persistent_table" (
	"id" INT,
	"varchar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ephemeral_table" (
	"id" INT,
	"float" FLOAT,
	"varchar" VARCHAR,
	"datetime" DATETIME,
	 PRIMARY KEY ("id")
);
