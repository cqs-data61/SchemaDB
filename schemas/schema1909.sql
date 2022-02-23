DROP DATABASE IF EXISTS "schema1909";
CREATE DATABASE "schema1909";
USE "schema1909";
CREATE TABLE "users" (
	"accountid" CHAR,
	"username" VARCHAR,
	"passhash" BYTEA,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"birthday" DATE,
	"timezone" VARCHAR,
	"address" VARCHAR,
	"state" CHAR,
	"zip" VARCHAR,
	"ssn" CHAR,
	 PRIMARY KEY ("accountid")
);

CREATE TABLE "contacts" (
	"username" VARCHAR,
	"label" VARCHAR,
	"account_num" CHAR,
	"routing_num" CHAR,
	"is_external" BOOLEAN,
	 CONSTRAINT "fkeycon_contacts_to_users" FOREIGN KEY ("username") REFERENCES "users" ("username")
);
