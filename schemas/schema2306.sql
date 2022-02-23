DROP DATABASE IF EXISTS "schema2306";
CREATE DATABASE "schema2306";
USE "schema2306";
CREATE TABLE "unuse_codes" (
	"id" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "url_map" (
	"id" INT,
	"code" VARCHAR,
	"url" VARCHAR,
	"author" VARCHAR,
	"clicked" INT,
	 PRIMARY KEY ("id")
);
