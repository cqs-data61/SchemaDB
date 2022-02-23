DROP DATABASE IF EXISTS "schema2016";
CREATE DATABASE "schema2016";
USE "schema2016";
CREATE TABLE "users" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BIT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" BIGINT,
	"role" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_UsersRoles" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "categories" (
	"id" BIGINT,
	"category_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "boards" (
	"id" BIGINT,
	"full_name" VARCHAR,
	"short_name" VARCHAR,
	"is_available" BIT,
	"is_nsfw" BIT,
	"category_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_CategoriesBoards" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "posts" (
	"id" BIGINT,
	"created" DATE,
	"photo_path" VARCHAR,
	"title" VARCHAR,
	"body" VARCHAR,
	"board_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_BoardsPosts" FOREIGN KEY ("board_id") REFERENCES "boards" ("id")
);

CREATE TABLE "comments" (
	"id" BIGINT,
	"created" DATE,
	"attachment_path" VARCHAR,
	"message" VARCHAR,
	"post_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_PostsComments" FOREIGN KEY ("post_id") REFERENCES "posts" ("id")
);
