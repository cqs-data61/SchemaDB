DROP DATABASE IF EXISTS "schema593";
CREATE DATABASE "schema593";
USE "schema593";
CREATE TABLE "flash_cards" (
	"id" INT,
	"term" VARCHAR,
	"definition" VARCHAR,
	"q_type" INT,
	"set_id" INT
);

CREATE TABLE "subjects" (
	"id" INT,
	"name" VARCHAR,
	"set_id" INT
);

CREATE TABLE "study_sets" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"user_id" INT
);

CREATE TABLE "users" (
	"id" INT,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR
);
