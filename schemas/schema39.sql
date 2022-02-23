DROP DATABASE IF EXISTS "schema39";
CREATE DATABASE "schema39";
USE "schema39";
CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"user_name" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"password" VARCHAR,
	"join_date" DATETIME,
	"profile_image_url" VARCHAR,
	"role" VARCHAR,
	"active" BIT,
	"locked" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note" (
	"id" BIGINT,
	"title" VARCHAR,
	"text" VARCHAR,
	"value" INT,
	"creation_date" DATETIME,
	"update_date" DATETIME,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_user_id" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "award" (
	"id" BIGINT,
	"name" VARCHAR,
	"type" VARCHAR,
	"rank" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "distributed_awards" (
	"user_id" BIGINT,
	"award_id" BIGINT,
	 PRIMARY KEY ("user_id","award_id"),
	 CONSTRAINT "FK_award_id" FOREIGN KEY ("award_id") REFERENCES "award" ("id"),
	 CONSTRAINT "FK_awarded_user_id" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
