DROP DATABASE IF EXISTS "schema1180";
CREATE DATABASE "schema1180";
USE "schema1180";
CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"password" VARCHAR,
	"username" VARCHAR,
	"avatar_url" VARCHAR,
	"about" TEXT,
	"reg_ts" TIMESTAMP
);

CREATE TABLE "subscriptions" (
	"subscriber_id" INT,
	"author_id" INT
);

CREATE TABLE "posts" (
	"id" INT,
	"subject" VARCHAR,
	"content" TEXT,
	"img_url" VARCHAR,
	"link_url" VARCHAR,
	"video_url" VARCHAR,
	"quote_author" VARCHAR,
	"total_views" INT,
	"created_ts" TIMESTAMP,
	"author_id" INT,
	"content_type" INT
);

CREATE TABLE "messages" (
	"id" INT,
	"from_id" INT,
	"to_id" INT,
	"content" TEXT,
	"created_ts" TIMESTAMP
);

CREATE TABLE "likes" (
	"from_id" INT,
	"post_id" INT
);

CREATE TABLE "hashtags_posts" (
	"hashtag_id" INT,
	"post_id" INT
);

CREATE TABLE "hashtags" (
	"id" INT,
	"title" VARCHAR
);

CREATE TABLE "content_types" (
	"id" INT,
	"title" VARCHAR,
	"class_name" VARCHAR
);

CREATE TABLE "comments" (
	"id" INT,
	"content" TEXT,
	"from_id" INT,
	"post_id" INT,
	"created_ts" TIMESTAMP
);
