DROP DATABASE IF EXISTS "schema381";
CREATE DATABASE "schema381";
USE "schema381";
CREATE TABLE "review" (
	"id" INT,
	"user_id" INT,
	"created" TIMESTAMP,
	"text" VARCHAR
);

CREATE TABLE "payment" (
	"id" INT,
	"created" TIMESTAMP,
	"realized" TIMESTAMP,
	"user_id" INT,
	"task_id" INT,
	"method_id" INT,
	"amount" REAL,
	"comment" VARCHAR,
	"status" BOOLEAN
);

CREATE TABLE "method" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "solve" (
	"id" INT,
	"task_id" INT,
	"user_id" INT,
	"file" VARCHAR,
	"comment" VARCHAR
);

CREATE TABLE "task" (
	"id" INT,
	"user_id" INT,
	"subject_id" INT,
	"file" VARCHAR,
	"comment" VARCHAR,
	"deadline" TIMESTAMP,
	"status_id" INT,
	"cost" REAL,
	"created" TIMESTAMP,
	"contact" VARCHAR,
	"cause" VARCHAR,
	"hidden" BOOLEAN
);

CREATE TABLE "status" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "subject" (
	"id" INT,
	"name" VARCHAR
);

CREATE TABLE "users" (
	"id" INT,
	"login" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role_id" INT,
	"created" TIMESTAMP,
	"balance" REAL
);

CREATE TABLE "role" (
	"id" INT,
	"name" VARCHAR
);
