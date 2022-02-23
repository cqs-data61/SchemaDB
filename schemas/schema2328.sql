DROP DATABASE IF EXISTS "schema2328";
CREATE DATABASE "schema2328";
USE "schema2328";
CREATE TABLE "contact" (
	"id" NUMERIC,
	"name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address" (
	"id" NUMERIC,
	"street" VARCHAR,
	"contact_id" NUMERIC,
	 PRIMARY KEY ("id")
);
