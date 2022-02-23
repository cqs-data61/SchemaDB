DROP DATABASE IF EXISTS "schema1894";
CREATE DATABASE "schema1894";
USE "schema1894";
CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("username")
);

CREATE TABLE "posts" (
	"post_id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"content" TEXT,
	"published_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_posts_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "comments" (
	"comment_id" INT,
	"post_id" INT,
	"user_id" INT,
	"username" VARCHAR,
	"comment" TEXT,
	"commented_at" TIMESTAMP,
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id"),
	 CONSTRAINT "fkeycon_comments_to_posts" FOREIGN KEY ("post_id") REFERENCES "posts" ("post_id")
);
