DROP DATABASE IF EXISTS "schema1985";
CREATE DATABASE "schema1985";
USE "schema1985";
CREATE TABLE "roles" (
	"role" VARCHAR,
	"_user" INTEGER,
	"_id" SERIAL,
	 PRIMARY KEY ("_id")
);

CREATE TABLE "user" (
	"mail" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"roles" VARCHAR,
	"surname" VARCHAR,
	"username" VARCHAR,
	"_id" SERIAL,
	 PRIMARY KEY ("_id")
);
