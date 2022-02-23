DROP DATABASE IF EXISTS "schema1008";
CREATE DATABASE "schema1008";
USE "schema1008";
CREATE TABLE "doctrine_migration_versions" (
	"version" VARCHAR,
	"executed_at" DATETIME,
	"execution_time" INT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"login" VARCHAR,
	"password" VARCHAR,
	"role" INT,
	"deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "themes" (
	"id" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "test" (
	"id" BIGINT,
	"question" VARCHAR,
	"answer" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "testuser" (
	"id" BIGINT,
	"user_id" BIGINT,
	"question_id" BIGINT,
	"correct_answer" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "TestUser_FK_1" FOREIGN KEY ("question_id") REFERENCES "test" ("id")
);

CREATE TABLE "messages" (
	"id" BIGINT,
	"message" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "thememessage" (
	"id" BIGINT,
	"user_id" BIGINT,
	"theme_id" BIGINT,
	"message_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "ThemeMessage_FK_1" FOREIGN KEY ("message_id") REFERENCES "messages" ("id")
);

CREATE TABLE "images" (
	"id" BIGINT,
	"source" VARCHAR,
	"name" VARCHAR,
	"slider" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "completedtest" (
	"id" BIGINT,
	"user_id" BIGINT,
	"completed_test" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chats" (
	"id" BIGINT,
	"message" VARCHAR,
	"from_user" VARCHAR,
	"to_user" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" BIGINT,
	"name" VARCHAR,
	"link" VARCHAR,
	"century" INT,
	"link_image" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artistimage" (
	"id" BIGINT,
	"artist" BIGINT,
	"image" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" BIGINT,
	"name" BIGINT,
	"description" TEXT,
	"header" TEXT,
	 PRIMARY KEY ("id")
);
