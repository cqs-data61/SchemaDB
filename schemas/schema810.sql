DROP DATABASE IF EXISTS "schema810";
CREATE DATABASE "schema810";
USE "schema810";
CREATE TABLE "td_item" (
	"id" INT,
	"title" CHAR,
	"description" TEXT,
	"is_done" TINYINT,
	"topic_id" INT,
	"create_date" TIMESTAMP,
	"complete_date" TIMESTAMP,
	"deadline_date" TIMESTAMP
);

CREATE TABLE "td_topic" (
	"id" INT,
	"title" CHAR,
	"date" TIMESTAMP,
	"user_id" INT,
	"color" VARCHAR,
	"icon" VARCHAR
);

CREATE TABLE "user" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR
);
