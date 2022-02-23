DROP DATABASE IF EXISTS "schema562";
CREATE DATABASE "schema562";
USE "schema562";
CREATE TABLE "options" (
	"option_id" INT,
	"question_id" INT,
	"label" VARCHAR,
	"sublabel" VARCHAR,
	 PRIMARY KEY ("option_id")
);

CREATE TABLE "questions" (
	"question_id" INT,
	"poll_id" INT,
	"order_id" INT,
	"content" VARCHAR,
	"subheading" VARCHAR,
	"is_required" BOOLEAN,
	 PRIMARY KEY ("question_id")
);

CREATE TABLE "polls" (
	"poll_id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"link" VARCHAR,
	"user_id" INT,
	"date_created" DATE,
	"date_deleted" DATE,
	 PRIMARY KEY ("poll_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"hashed_password" VARCHAR,
	"date_created" DATE,
	"date_deleted" DATE,
	 PRIMARY KEY ("user_id")
);
