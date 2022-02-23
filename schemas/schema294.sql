DROP DATABASE IF EXISTS "schema294";
CREATE DATABASE "schema294";
USE "schema294";
CREATE TABLE "body_target" (
	"body_target_id" SERIAL,
	"body_target" VARCHAR,
	 PRIMARY KEY ("body_target_id")
);

CREATE TABLE "exercise" (
	"id" SERIAL,
	"exercise_name" VARCHAR,
	"description" VARCHAR,
	"suggested_weight" INT,
	"exercise_reps" INT,
	"exercise_sets" INT,
	"expected_time" INT,
	"body_target_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_body_target" FOREIGN KEY ("body_target_id") REFERENCES "body_target" ("body_target_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);
