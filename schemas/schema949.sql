DROP DATABASE IF EXISTS "schema949";
CREATE DATABASE "schema949";
USE "schema949";
CREATE TABLE "project_members" (
	"project_id" INTEGER,
	"user_id" INTEGER
);

CREATE TABLE "sprint_backlog_items" (
	"id" SERIAL,
	"name" TEXT,
	"sprint_id" INTEGER,
	"work_time_estimate" INTEGER,
	"status_id" INTEGER,
	"product_backlog_items_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product_backlog_items" (
	"id" SERIAL,
	"name" TEXT,
	"definition_of_done" TEXT,
	"project_id" INTEGER,
	"sprint_id" INTEGER,
	"order_no" INTEGER,
	"completed" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statuses" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sprints" (
	"id" SERIAL,
	"name" TEXT,
	"project_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projects" (
	"id" SERIAL,
	"name" TEXT,
	"description" TEXT,
	"owner" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"is_admin" BOOLEAN,
	 PRIMARY KEY ("id")
);
