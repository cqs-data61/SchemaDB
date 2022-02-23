DROP DATABASE IF EXISTS "schema1595";
CREATE DATABASE "schema1595";
USE "schema1595";
CREATE TABLE "users" (
	"userid" INT,
	"name" VARCHAR,
	"usd" INT,
	"password" VARCHAR,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "bank" (
	"bankid" INT,
	"userid" INT,
	 PRIMARY KEY ("bankid"),
	 CONSTRAINT "fkeycon_bank_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
