DROP DATABASE IF EXISTS "schema317";
CREATE DATABASE "schema317";
USE "schema317";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"email" VARCHAR,
	"type" INT,
	"status" INT,
	"activation_code" VARCHAR,
	"header_url" VARCHAR,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "message" (
	"id" INT,
	"from_id" INT,
	"to_id" INT,
	"conversation_id" VARCHAR,
	"content" TEXT,
	"status" INT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "login_ticket" (
	"id" INT,
	"user_id" INT,
	"ticket" VARCHAR,
	"status" INT,
	"expired" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "discuss_post" (
	"id" INT,
	"user_id" VARCHAR,
	"title" VARCHAR,
	"content" TEXT,
	"type" INT,
	"status" INT,
	"create_time" TIMESTAMP,
	"comment_count" INT,
	"score" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"user_id" INT,
	"entity_type" INT,
	"entity_id" INT,
	"target_id" INT,
	"content" TEXT,
	"status" INT,
	"create_time" TIMESTAMP,
	 PRIMARY KEY ("id")
);
