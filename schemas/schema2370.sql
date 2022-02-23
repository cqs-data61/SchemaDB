DROP DATABASE IF EXISTS "schema2370";
CREATE DATABASE "schema2370";
USE "schema2370";
CREATE TABLE "test" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
