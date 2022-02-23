DROP DATABASE IF EXISTS "schema1896";
CREATE DATABASE "schema1896";
USE "schema1896";
CREATE TABLE "user" (
	"id" INT,
	"username" VARCHAR,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	"email" VARCHAR,
	"status" SMALLINT,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tag" (
	"id" INT,
	"name" VARCHAR,
	"frequency" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "poststatus" (
	"id" INT,
	"name" VARCHAR,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" INT,
	"title" VARCHAR,
	"content" TEXT,
	"tags" TEXT,
	"status" INT,
	"create_time" INT,
	"update_time" INT,
	"author_id" INT,
	"view" INT,
	"edit" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migration" (
	"version" VARCHAR,
	"apply_time" INT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "message1" (
	"id" INT,
	"content" TEXT,
	"create_time" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "commentstatus" (
	"id" INT,
	"name" VARCHAR,
	"position" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comment" (
	"id" INT,
	"content" TEXT,
	"status" INT,
	"create_time" INT,
	"userid" INT,
	"email" VARCHAR,
	"url" VARCHAR,
	"post_id" INT,
	"star" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_rule" (
	"name" VARCHAR,
	"data" TEXT,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item_child" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child")
);

CREATE TABLE "auth_item" (
	"name" VARCHAR,
	"type" INT,
	"description" TEXT,
	"rule_name" VARCHAR,
	"data" TEXT,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_assignment" (
	"item_name" VARCHAR,
	"user_id" VARCHAR,
	"created_at" INT,
	 PRIMARY KEY ("item_name","user_id")
);

CREATE TABLE "adminuser" (
	"id" INT,
	"username" VARCHAR,
	"nickname" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"profile" TEXT,
	"auth_key" VARCHAR,
	"password_hash" VARCHAR,
	"password_reset_token" VARCHAR,
	 PRIMARY KEY ("id")
);
