DROP DATABASE IF EXISTS "schema251";
CREATE DATABASE "schema251";
USE "schema251";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"content" NTEXT,
	"taskid" REFERENCES,
	"created" DATETIME,
	"user_id" REFERENCES,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"name" VARCHAR,
	"user_id" REFERENCES,
	 PRIMARY KEY ("id")
);

CREATE TABLE "files" (
	"name" VARCHAR,
	"autoname" VARCHAR,
	"user_id" REFERENCES,
	"created_date" TIMESTAMP
);

CREATE TABLE "status" (
	"id" INTEGER,
	"status" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "task" (
	"id" INTEGER,
	"title" VARCHAR,
	"content" TEXT,
	"task_status_id" REFERENCES,
	"created_date" TIMESTAMP,
	"due_date" TIMESTAMP,
	"last_modified_at" TIMESTAMP,
	"finish_date" TIMESTAMP,
	"priority" INTEGER,
	"cat_id" REFERENCES,
	"user_id" REFERENCES,
	"hide" INT,
	 PRIMARY KEY ("id")
);
