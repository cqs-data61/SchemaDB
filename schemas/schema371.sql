DROP DATABASE IF EXISTS "schema371";
CREATE DATABASE "schema371";
USE "schema371";
CREATE TABLE "users" (
	"id" INTEGER,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" INTEGER,
	"title" VARCHAR,
	"preview" VARCHAR,
	"full_text" VARCHAR,
	"image" VARCHAR,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_articles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"text" TEXT,
	"article_id" INTEGER,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
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
