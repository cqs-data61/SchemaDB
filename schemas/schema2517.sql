DROP DATABASE IF EXISTS "schema2517";
CREATE DATABASE "schema2517";
USE "schema2517";
CREATE TABLE "value8" (
	"val1" INT,
	"val2" INT,
	"val3" INT,
	"val4" INT,
	"val5" INT,
	"val6" INT,
	"val7" INT,
	"val8" INT,
	 PRIMARY KEY ("val1")
);

CREATE TABLE "organization" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "person" (
	"id" INT,
	"org_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"salary" DOUBLE PRECISION,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_person_to_organization" FOREIGN KEY ("org_id") REFERENCES "organization" ("id")
);

CREATE TABLE "sample" (
	"id" INT,
	"val" INT,
	 PRIMARY KEY ("id")
);
