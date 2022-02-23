DROP DATABASE IF EXISTS "schema2053";
CREATE DATABASE "schema2053";
USE "schema2053";
CREATE TABLE "issues" (
	"id" SERIAL,
	"description" VARCHAR,
	"task_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"id" SERIAL,
	"description" VARCHAR,
	"state" INT,
	"pbi_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pbis" (
	"id" SERIAL,
	"title" VARCHAR,
	"description" VARCHAR,
	"priority" INT,
	"is_epic" BOOLEAN,
	"project_id" INT,
	"sprint_id" INT,
	"epic_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sprints" (
	"id" SERIAL,
	"deadline_date" DATE,
	"goal" TEXT,
	"plan" TEXT,
	"is_current" BOOLEAN,
	"num_sprint" INT,
	"project_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "notifications" (
	"id" SERIAL,
	"project_id" INT,
	"project_title" VARCHAR,
	"role" VARCHAR,
	"from_username" VARCHAR,
	"to_user_email" VARCHAR,
	"type" VARCHAR,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_has_project" (
	"user_id" INT,
	"project_id" INT,
	"role" VARCHAR
);

CREATE TABLE "projects" (
	"id" SERIAL,
	"title" VARCHAR,
	"is_done" BOOLEAN,
	"deadline_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"email" VARCHAR,
	"username" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"password" VARCHAR,
	"country" VARCHAR,
	"job" VARCHAR,
	"company" VARCHAR,
	"description" TEXT,
	"bio" TEXT,
	"photo" TEXT,
	"is_admin" BOOLEAN,
	"num_projects" INT,
	 PRIMARY KEY ("id")
);
