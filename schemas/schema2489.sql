DROP DATABASE IF EXISTS "schema2489";
CREATE DATABASE "schema2489";
USE "schema2489";
CREATE TABLE "classes_students" (
	"class_id" INT,
	"student_id" INT
);

CREATE TABLE "students" (
	"student_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("student_id")
);

CREATE TABLE "departments" (
	"department_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "classes" (
	"class_id" INT,
	"name" VARCHAR,
	"department_id" INT,
	 PRIMARY KEY ("class_id"),
	 CONSTRAINT "fkeycon_classes_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id")
);

CREATE TABLE "teachers" (
	"teacher_id" INT,
	"name" VARCHAR,
	"department_id" INT,
	 PRIMARY KEY ("teacher_id"),
	 CONSTRAINT "fkeycon_teachers_to_departments" FOREIGN KEY ("department_id") REFERENCES "departments" ("department_id")
);
