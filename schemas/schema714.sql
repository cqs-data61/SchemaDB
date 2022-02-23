DROP DATABASE IF EXISTS "schema714";
CREATE DATABASE "schema714";
USE "schema714";
CREATE TABLE "users" (
	"id" INT,
	"pseudo" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"is_admin" TINYINT,
	"is_active" TINYINT,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" INT,
	"users_id" INT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"summary" LONGTEXT,
	"date" DATETIME,
	"picture" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_articles_users1" FOREIGN KEY ("users_id") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"articles_id" INT,
	"users_id" INT,
	"title" VARCHAR,
	"content" LONGTEXT,
	"date" DATETIME,
	"is_valid" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_comments_articles" FOREIGN KEY ("articles_id") REFERENCES "articles" ("id"),
	 CONSTRAINT "fk_comments_users1" FOREIGN KEY ("users_id") REFERENCES "users" ("id")
);
