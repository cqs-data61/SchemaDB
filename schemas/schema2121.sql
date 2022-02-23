DROP DATABASE IF EXISTS "schema2121";
CREATE DATABASE "schema2121";
USE "schema2121";
CREATE TABLE "trivia" (
	"id" INT,
	"question" VARCHAR,
	"answer" VARCHAR,
	"difficulty_level" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "app_user" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"is_active" INT,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"deleted_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trivia_history" (
	"id" INT,
	"date_of_trivia" TIMESTAMP,
	"num_passed_trivia" INT,
	"num_failed_trivia" INT,
	"total_score" FLOAT,
	"difficulty_level" VARCHAR,
	"num_of_answered_trivia" INT,
	"performance" VARCHAR,
	"total_trivia_given" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_trivia_history_to_app_user" FOREIGN KEY ("user_id") REFERENCES "app_user" ("id")
);
