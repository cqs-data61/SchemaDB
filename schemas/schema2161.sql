DROP DATABASE IF EXISTS "schema2161";
CREATE DATABASE "schema2161";
USE "schema2161";
CREATE TABLE "user" (
	"id" IDENTITY,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "loan" (
	"id" IDENTITY,
	"total" DOUBLE,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_loan_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
