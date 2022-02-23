DROP DATABASE IF EXISTS "schema1537";
CREATE DATABASE "schema1537";
USE "schema1537";
CREATE TABLE "project" (
	"project_id" BIGINT,
	"description" TEXT,
	 PRIMARY KEY ("project_id")
);

CREATE TABLE "user" (
	"user_id" BIGINT,
	"name" VARCHAR,
	"project_id" BIGINT,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "FK_project_id" FOREIGN KEY ("project_id") REFERENCES "project" ("project_id")
);

CREATE TABLE "task" (
	"task_id" BIGINT,
	"description" TEXT,
	"user_id" BIGINT,
	"parent_task_id" BIGINT,
	 PRIMARY KEY ("task_id"),
	 CONSTRAINT "FK_user_id" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id"),
	 CONSTRAINT "FK_parent_task_id" FOREIGN KEY ("parent_task_id") REFERENCES "task" ("task_id")
);
