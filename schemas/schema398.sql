DROP DATABASE IF EXISTS "schema398";
CREATE DATABASE "schema398";
USE "schema398";
CREATE TABLE "indications" (
	"id" SERIAL,
	"name" TEXT,
	"type" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "interactions" (
	"id" SERIAL,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "classes" (
	"id" SERIAL,
	"name" TEXT,
	"risks" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "moas" (
	"id" SERIAL,
	"class_id" INTEGER,
	"target" TEXT,
	"effect" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_class" FOREIGN KEY ("class_id") REFERENCES "classes" ("id")
);

CREATE TABLE "substances" (
	"id" SERIAL,
	"class_id" INTEGER,
	"name" TEXT,
	"target" TEXT,
	"mechanism" TEXT,
	"metabolism" TEXT,
	"eff_duration" TEXT,
	"notes" TEXT,
	"risks" TEXT,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_class" FOREIGN KEY ("class_id") REFERENCES "classes" ("id")
);

CREATE TABLE "substanceindication" (
	"substance_id" INTEGER,
	"indication_id" INTEGER,
	"route" TEXT,
	"notes" TEXT,
	 CONSTRAINT "fk_indication" FOREIGN KEY ("indication_id") REFERENCES "indications" ("id"),
	 CONSTRAINT "fk_substance" FOREIGN KEY ("substance_id") REFERENCES "substances" ("id")
);

CREATE TABLE "substancemoa" (
	"substance_id" INTEGER,
	"moa_id" INTEGER,
	 CONSTRAINT "fk_moa" FOREIGN KEY ("moa_id") REFERENCES "moas" ("id"),
	 CONSTRAINT "fk_substance" FOREIGN KEY ("substance_id") REFERENCES "substances" ("id")
);

CREATE TABLE "substanceinteraction" (
	"substance_id" INTEGER,
	"interaction_id" INTEGER,
	 CONSTRAINT "fk_interaction" FOREIGN KEY ("interaction_id") REFERENCES "interactions" ("id"),
	 CONSTRAINT "fk_substance" FOREIGN KEY ("substance_id") REFERENCES "substances" ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"role" TEXT,
	 PRIMARY KEY ("id")
);
