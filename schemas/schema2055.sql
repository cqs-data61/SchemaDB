DROP DATABASE IF EXISTS "schema2055";
CREATE DATABASE "schema2055";
USE "schema2055";
CREATE TABLE "manager" (
	"no" BIGSERIAL,
	"label" VARCHAR,
	 PRIMARY KEY ("no")
);

CREATE TABLE "client" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);
