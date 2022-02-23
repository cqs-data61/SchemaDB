DROP DATABASE IF EXISTS "schema710";
CREATE DATABASE "schema710";
USE "schema710";
CREATE TABLE "tags" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"created_on" TIMESTAMP,
	"modified_on" TIMESTAMP,
	"name" VARCHAR,
	"mail" VARCHAR,
	"pass" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" BIGINT,
	"created_on" TIMESTAMP,
	"modified_on" TIMESTAMP,
	"title" VARCHAR,
	"content" VARCHAR,
	"id_user" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_posts" FOREIGN KEY ("id_user") REFERENCES "users" ("id")
);

CREATE TABLE "post_tag" (
	"id_post" BIGINT,
	"id_tag" BIGINT,
	 PRIMARY KEY ("id_post","id_tag"),
	 CONSTRAINT "fk_post_tag_id_tag" FOREIGN KEY ("id_tag") REFERENCES "tags" ("id"),
	 CONSTRAINT "fk_post_tag_id_post" FOREIGN KEY ("id_post") REFERENCES "posts" ("id")
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"created_on" TIMESTAMP,
	"modified_on" TIMESTAMP,
	"content" VARCHAR,
	"id_user" BIGINT,
	"id_post" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_comments_user" FOREIGN KEY ("id_user") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_comments_post" FOREIGN KEY ("id_post") REFERENCES "posts" ("id")
);
