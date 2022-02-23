DROP DATABASE IF EXISTS "schema983";
CREATE DATABASE "schema983";
USE "schema983";
CREATE TABLE "categories" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" INTEGER,
	"title" TEXT,
	"announce" TEXT,
	"full_text" TEXT,
	"image" TEXT,
	"created_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles_categories" (
	"article_id" INTEGER,
	"category_id" INTEGER,
	 PRIMARY KEY ("article_id","category_id"),
	 CONSTRAINT "fkeycon_articles_categories_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id"),
	 CONSTRAINT "fkeycon_articles_categories_to_categories" FOREIGN KEY ("article_id") REFERENCES "categories" ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"email" VARCHAR,
	"password_hash" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"article_id" INTEGER,
	"user_id" INTEGER,
	"text" TEXT,
	"created_date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id")
);
