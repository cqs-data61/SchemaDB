DROP DATABASE IF EXISTS "schema592";
CREATE DATABASE "schema592";
USE "schema592";
CREATE TABLE "clients" (
	"id" INT,
	"company" VARCHAR,
	"address" VARCHAR,
	"main_phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contacts" (
	"id" INT,
	"client_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"position" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_contacts_to_clients" FOREIGN KEY ("client_id") REFERENCES "clients" ("id")
);
