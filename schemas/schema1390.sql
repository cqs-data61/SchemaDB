DROP DATABASE IF EXISTS "schema1390";
CREATE DATABASE "schema1390";
USE "schema1390";
CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "balance" (
	"id" INT,
	"user_id" INT,
	"value" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "balance_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
