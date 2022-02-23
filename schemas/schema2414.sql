DROP DATABASE IF EXISTS "schema2414";
CREATE DATABASE "schema2414";
USE "schema2414";
CREATE TABLE "roles" (
	"role" VARCHAR,
	"_user" INT,
	"_id" INT
);

CREATE TABLE "user" (
	"createddate" DATE,
	"isactive" VARCHAR,
	"isconfirmed" VARCHAR,
	"islocked" VARCHAR,
	"lastupdatedate" DATE,
	"mail" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"roles" VARCHAR,
	"surname" VARCHAR,
	"username" VARCHAR,
	"_id" INT
);
