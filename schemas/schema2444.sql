DROP DATABASE IF EXISTS "schema2444";
CREATE DATABASE "schema2444";
USE "schema2444";
CREATE TABLE "tree_struct" (
	"id" INT,
	"lft" INT,
	"rgt" INT,
	"lvl" INT,
	"pid" INT,
	"pos" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tree_data" (
	"id" INT,
	"nm" VARCHAR,
	 PRIMARY KEY ("id")
);
