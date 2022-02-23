DROP DATABASE IF EXISTS "schema1924";
CREATE DATABASE "schema1924";
USE "schema1924";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" INT,
	"text" VARCHAR,
	"users_id" INT,
	 PRIMARY KEY ("id`des"),
	 CONSTRAINT "fk_posts_users" FOREIGN KEY ("users_id") REFERENCES "users" ("id")
);

CREATE TABLE "likes" (
	"id" INT,
	"posts_id" INT,
	"users_id" INT,
	 PRIMARY KEY ("id","posts_id","users_id"),
	 CONSTRAINT "fk_likes_posts1" FOREIGN KEY ("posts_id") REFERENCES "posts" ("id"),
	 CONSTRAINT "fk_likes_users1" FOREIGN KEY ("users_id") REFERENCES "users" ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post_categories" (
	"id" INT,
	"categories_id" INT,
	"posts_id" INT,
	 PRIMARY KEY ("id","categories_id"),
	 CONSTRAINT "fk_post_categories_posts1" FOREIGN KEY ("posts_id") REFERENCES "posts" ("id"),
	 CONSTRAINT "fk_post_categories_categories1" FOREIGN KEY ("categories_id") REFERENCES "categories" ("id")
);
