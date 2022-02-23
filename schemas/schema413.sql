DROP DATABASE IF EXISTS "schema413";
CREATE DATABASE "schema413";
USE "schema413";
CREATE TABLE "users" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password_hash" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" INTEGER,
	"title" VARCHAR,
	"created_date" TIMESTAMP,
	"full_text" TEXT,
	"announce" TEXT,
	"img" VARCHAR,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_articles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"text" TEXT,
	"created_date" TIMESTAMP,
	"user_id" INTEGER,
	"article_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id")
);

CREATE TABLE "categories" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles_categories" (
	"article_id" INTEGER,
	"category_id" INTEGER,
	 PRIMARY KEY ("article_id","category_id"),
	 CONSTRAINT "fkeycon_articles_categories_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id"),
	 CONSTRAINT "fkeycon_articles_categories_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);
