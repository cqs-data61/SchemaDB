DROP DATABASE IF EXISTS "schema1501";
CREATE DATABASE "schema1501";
USE "schema1501";
CREATE TABLE "project_task_comments" (
	"id" SERIAL,
	"project_task_id" INTEGER,
	"creator_id" INTEGER,
	"comment" TEXT,
	"made_at" TIMESTAMP,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_tasks" (
	"id" SERIAL,
	"project_id" INTEGER,
	"creator_id" INTEGER,
	"task" TEXT,
	"priority" INTEGER,
	"made_at" TIMESTAMP,
	"done" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "project_members" (
	"id" SERIAL,
	"project_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projects" (
	"id" SERIAL,
	"creator_id" INTEGER,
	"project" TEXT,
	"made_at" TIMESTAMP,
	"done" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"creator_id" INTEGER,
	"task_id" INTEGER,
	"comment" TEXT,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"id" SERIAL,
	"creator_id" INTEGER,
	"task" TEXT,
	"priority" INTEGER,
	"made_at" TIMESTAMP,
	"done" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
