DROP DATABASE IF EXISTS "schema2209";
CREATE DATABASE "schema2209";
USE "schema2209";
CREATE TABLE "subject" (
	"subject_id" LONG,
	"name" VARCHAR,
	"classroom" VARCHAR,
	 PRIMARY KEY ("subject_id")
);

CREATE TABLE "student" (
	"student_id" LONG,
	"name" VARCHAR,
	"mail" VARCHAR,
	 PRIMARY KEY ("student_id")
);

CREATE TABLE "subject_students" (
	"subject_id" LONG,
	"student_id" LONG,
	 CONSTRAINT "fkeycon_subject_students_to_student" FOREIGN KEY ("student_id") REFERENCES "student" ("student_id"),
	 CONSTRAINT "fkeycon_subject_students_to_subject" FOREIGN KEY ("subject_id") REFERENCES "subject" ("subject_id")
);
