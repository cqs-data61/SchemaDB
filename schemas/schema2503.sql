DROP DATABASE IF EXISTS "schema2503";
CREATE DATABASE "schema2503";
USE "schema2503";
CREATE TABLE "person" (
	"id" BIGINT,
	"name" VARCHAR
);

CREATE TABLE "pet" (
	"id" BIGINT,
	"name" VARCHAR,
	"owner_id" BIGINT,
	 CONSTRAINT "fkeycon_pet_to_person" FOREIGN KEY ("owner_id") REFERENCES "person" ("id")
);
