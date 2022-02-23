DROP DATABASE IF EXISTS "schema2089";
CREATE DATABASE "schema2089";
USE "schema2089";
CREATE TABLE "owners" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"telephone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "types" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pets" (
	"id" INT,
	"name" VARCHAR,
	"birth_date" DATE,
	"type_id" INT,
	"owner_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_pets_to_owners" FOREIGN KEY ("owner_id") REFERENCES "owners" ("id"),
	 CONSTRAINT "fkeycon_pets_to_types" FOREIGN KEY ("type_id") REFERENCES "types" ("id")
);
