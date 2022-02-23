DROP DATABASE IF EXISTS "schema2494";
CREATE DATABASE "schema2494";
USE "schema2494";
CREATE TABLE "clients" (
	"id" INT,
	"client_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "parties" (
	"id" INT,
	"party_name" VARCHAR,
	"party_type" VARCHAR,
	"party_cost" INT,
	"client_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_parties_to_clients" FOREIGN KEY ("client_id") REFERENCES "clients" ("id")
);
