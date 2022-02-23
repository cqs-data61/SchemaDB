DROP DATABASE IF EXISTS "schema5";
CREATE DATABASE "schema5";
USE "schema5";
CREATE TABLE "teachers" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mentors" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "students" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "knowledge" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "teachers_experience" (
	"teacher_id" BIGINT,
	"knowledge_id" BIGINT,
	 CONSTRAINT "fkeycon_teachers_experience_to_knowledge" FOREIGN KEY ("knowledge_id") REFERENCES "knowledge" ("id"),
	 CONSTRAINT "fkeycon_teachers_experience_to_teachers" FOREIGN KEY ("teacher_id") REFERENCES "teachers" ("id")
);

CREATE TABLE "mentors_experience" (
	"mentor_id" BIGINT,
	"knowledge_id" BIGINT,
	 CONSTRAINT "fkeycon_mentors_experience_to_knowledge" FOREIGN KEY ("knowledge_id") REFERENCES "knowledge" ("id"),
	 CONSTRAINT "fkeycon_mentors_experience_to_mentors" FOREIGN KEY ("mentor_id") REFERENCES "mentors" ("id")
);

CREATE TABLE "students_experience" (
	"student_id" BIGINT,
	"knowledge_id" BIGINT,
	 CONSTRAINT "fkeycon_students_experience_to_knowledge" FOREIGN KEY ("knowledge_id") REFERENCES "knowledge" ("id"),
	 CONSTRAINT "fkeycon_students_experience_to_students" FOREIGN KEY ("student_id") REFERENCES "students" ("id")
);
