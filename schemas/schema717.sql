DROP DATABASE IF EXISTS "schema717";
CREATE DATABASE "schema717";
USE "schema717";
CREATE TABLE "polls" (
	"id" BIGINT,
	"question" VARCHAR,
	"expiration_date_time" DATETIME,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"created_by" BIGINT,
	"updated_by" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "choices" (
	"id" BIGINT,
	"text" VARCHAR,
	"poll_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_choices_poll_id" FOREIGN KEY ("poll_id") REFERENCES "polls" ("id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "votes" (
	"id" BIGINT,
	"user_id" BIGINT,
	"poll_id" BIGINT,
	"choice_id" BIGINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_votes_poll_id" FOREIGN KEY ("poll_id") REFERENCES "polls" ("id"),
	 CONSTRAINT "fk_votes_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_votes_choice_id" FOREIGN KEY ("choice_id") REFERENCES "choices" ("id")
);

CREATE TABLE "user_roles" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fk_user_roles_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_user_roles_role_id" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
