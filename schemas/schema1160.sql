DROP DATABASE IF EXISTS "schema1160";
CREATE DATABASE "schema1160";
USE "schema1160";
CREATE TABLE "group_members" (
	"id" INT,
	"username" VARCHAR,
	"group_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "group_authorities" (
	"group_id" INT,
	"authority" VARCHAR
);

CREATE TABLE "groups" (
	"id" INT,
	"group_name" VARCHAR,
	 PRIMARY KEY ("id")
);
