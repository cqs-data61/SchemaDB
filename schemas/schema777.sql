DROP DATABASE IF EXISTS "schema777";
CREATE DATABASE "schema777";
USE "schema777";
CREATE TABLE "competition_type" (
	"id" BIGSERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "competition" (
	"id" BIGSERIAL,
	"name" TEXT,
	"date" TIMESTAMP,
	"competition_type_id" BIGSERIAL,
	"finished" BOOLEAN,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competition_competition_type_fk" FOREIGN KEY ("competition_type_id") REFERENCES "competition_type" ("id")
);

CREATE TABLE "sports_field" (
	"id" BIGSERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "competition_field_map" (
	"id" BIGSERIAL,
	"competition_id" BIGSERIAL,
	"field_id" BIGSERIAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competition_field_map_field_fk" FOREIGN KEY ("field_id") REFERENCES "sports_field" ("id"),
	 CONSTRAINT "competition_field_map_competition_fk" FOREIGN KEY ("competition_id") REFERENCES "competition" ("id")
);

CREATE TABLE "student" (
	"id" BIGSERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "previous_competition_enhancement" (
	"id" BIGSERIAL,
	"student_id" BIGSERIAL,
	"coefficient" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "previous_competition_enhancement_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id")
);

CREATE TABLE "random_enhancement" (
	"id" BIGSERIAL,
	"student_id" BIGSERIAL,
	"min_coefficient" NUMERIC,
	"max_coefficient" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "random_enhancement_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id")
);

CREATE TABLE "hated_students_enhancement" (
	"id" BIGSERIAL,
	"student_id" BIGSERIAL,
	"hated_student_id" BIGSERIAL,
	"coefficient" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "hated_students_hated_student_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id"),
	 CONSTRAINT "hated_students_student_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id")
);

CREATE TABLE "competition_results" (
	"id" BIGSERIAL,
	"competition_id" BIGSERIAL,
	"student_id" BIGSERIAL,
	"total_score" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competition_results_competition_fk" FOREIGN KEY ("competition_id") REFERENCES "competition" ("id"),
	 CONSTRAINT "competition_results_student_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id")
);

CREATE TABLE "competition_student_map" (
	"id" BIGSERIAL,
	"competition_id" BIGSERIAL,
	"student_id" BIGSERIAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "competition_student_map_competition_fk" FOREIGN KEY ("competition_id") REFERENCES "competition" ("id"),
	 CONSTRAINT "competition_student_map_student_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id")
);

CREATE TABLE "student_field_score" (
	"id" BIGSERIAL,
	"student_id" BIGSERIAL,
	"field_id" BIGSERIAL,
	"score" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "student_field_score_student_fk" FOREIGN KEY ("student_id") REFERENCES "student" ("id"),
	 CONSTRAINT "student_field_score_field_fk" FOREIGN KEY ("field_id") REFERENCES "sports_field" ("id")
);
