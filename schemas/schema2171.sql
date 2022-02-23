DROP DATABASE IF EXISTS "schema2171";
CREATE DATABASE "schema2171";
USE "schema2171";
CREATE TABLE "user_roles" (
	"user_role_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("user_role_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"created_on" TIMESTAMP,
	"updated_on" TIMESTAMP,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"user_role_id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "task_states" (
	"task_state_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("task_state_id")
);

CREATE TABLE "courses" (
	"course_id" INT,
	"teacher_id" INT,
	"created_on" TIMESTAMP,
	"updated_on" TIMESTAMP,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("course_id")
);

CREATE TABLE "tasks" (
	"task_id" INT,
	"course_id" INT,
	"created_on" TIMESTAMP,
	"updated_on" TIMESTAMP,
	"name" TEXT,
	"description" VARCHAR,
	 PRIMARY KEY ("task_id"),
	 CONSTRAINT "tasks_ibfk_1" FOREIGN KEY ("course_id") REFERENCES "courses" ("course_id")
);

CREATE TABLE "task_user" (
	"task_id" INT,
	"task_state_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("task_id","user_id","task_state_id"),
	 CONSTRAINT "task_user_ibfk_3" FOREIGN KEY ("task_state_id") REFERENCES "task_states" ("task_state_id"),
	 CONSTRAINT "task_user_ibfk_1" FOREIGN KEY ("task_id") REFERENCES "tasks" ("task_id")
);

CREATE TABLE "invites" (
	"invite_id" INT,
	"created_on" TIMESTAMP,
	"expires_on" TIMESTAMP,
	"token" VARCHAR,
	"email" VARCHAR,
	"user_role_id" INT,
	"course_id" INT,
	 PRIMARY KEY ("invite_id"),
	 CONSTRAINT "invites_ibfk_2" FOREIGN KEY ("course_id") REFERENCES "courses" ("course_id")
);

CREATE TABLE "course_student" (
	"course_id" INT,
	"student_id" INT,
	"created_on" TIMESTAMP,
	 PRIMARY KEY ("course_id","student_id"),
	 CONSTRAINT "course_student_ibfk_1" FOREIGN KEY ("course_id") REFERENCES "courses" ("course_id")
);
