DROP DATABASE IF EXISTS "schema2357";
CREATE DATABASE "schema2357";
USE "schema2357";
CREATE TABLE "teacher" (
	"id" INT8,
	"dob" DATE,
	"email" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "school_class" (
	"id" INT8,
	"name" VARCHAR,
	"teacher_id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fko2hs1gj2j67ms7el2ayct6shu" FOREIGN KEY ("teacher_id") REFERENCES "teacher" ("id")
);

CREATE TABLE "student" (
	"id" INT8,
	"dob" DATE,
	"email" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "school_class_students" (
	"school_classes_id" INT8,
	"students_id" INT8,
	 CONSTRAINT "fkb6tb71qforo3ogi2nybpgfd9j" FOREIGN KEY ("school_classes_id") REFERENCES "school_class" ("id"),
	 CONSTRAINT "fkdykt4g4jmudusye40ikoy9a6d" FOREIGN KEY ("students_id") REFERENCES "student" ("id")
);
