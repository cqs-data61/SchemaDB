DROP DATABASE IF EXISTS "schema1178";
CREATE DATABASE "schema1178";
USE "schema1178";
CREATE TABLE "login_ticket" (
	"id" INT,
	"user_id" INT,
	"ticket" VARCHAR,
	"expired" DATETIME,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"content" TEXT,
	"user_id" INT,
	"entity_id" INT,
	"entity_type" INT,
	"created_date" DATETIME,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "news" (
	"id" INT,
	"title" VARCHAR,
	"link" VARCHAR,
	"image" VARCHAR,
	"like_count" INT,
	"unlike_count" INT,
	"rating" DOUBLE,
	"comment_count" INT,
	"created_date" DATETIME,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"times" INT,
	"name" VARCHAR,
	"password" VARCHAR,
	"salt" VARCHAR,
	"head_url" VARCHAR,
	 PRIMARY KEY ("id")
);
