DROP DATABASE IF EXISTS "schema1521";
CREATE DATABASE "schema1521";
USE "schema1521";
CREATE TABLE "roles" (
	"id" VARCHAR,
	"job" VARCHAR,
	"requirement" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "software" (
	"id" VARCHAR,
	"used_by" VARCHAR,
	"developed_by" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_used_by" FOREIGN KEY ("used_by") REFERENCES "roles" ("id")
);

CREATE TABLE "teams" (
	"id" INT,
	"manager" VARCHAR,
	"office" VARCHAR,
	"extension_number" VARCHAR,
	"mascot" VARCHAR,
	"cleaning_duty" VARCHAR,
	"project" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "people" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"sex" VARCHAR,
	"blood_type" INT,
	"serve_years" INT,
	"role" VARCHAR,
	"team" INT,
	"froms" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role") REFERENCES "roles" ("id"),
	 CONSTRAINT "fk_team" FOREIGN KEY ("team") REFERENCES "teams" ("id")
);

CREATE TABLE "supplies" (
	"id" VARCHAR,
	"team" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_team" FOREIGN KEY ("team") REFERENCES "teams" ("id")
);

CREATE TABLE "equipments" (
	"id" VARCHAR,
	"used_by" VARCHAR,
	"count" INT,
	"new_or_used" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_used_by" FOREIGN KEY ("used_by") REFERENCES "roles" ("id"),
	 CONSTRAINT "fk_id" FOREIGN KEY ("id") REFERENCES "supplies" ("id")
);
