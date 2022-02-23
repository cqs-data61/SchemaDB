DROP DATABASE IF EXISTS "schema2419";
CREATE DATABASE "schema2419";
USE "schema2419";
CREATE TABLE "categories" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"avatar" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "articles" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	"announce" VARCHAR,
	"fulltext" VARCHAR,
	"created_date" DATE,
	"picture" TEXT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_articles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "articles_categories" (
	"article_id" BIGINT,
	"category_id" BIGINT,
	 PRIMARY KEY ("article_id","category_id"),
	 CONSTRAINT "fkeycon_articles_categories_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id"),
	 CONSTRAINT "fkeycon_articles_categories_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);

CREATE TABLE "comments" (
	"id" BIGSERIAL,
	"text" VARCHAR,
	"created_date" DATE,
	"article_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_articles" FOREIGN KEY ("article_id") REFERENCES "articles" ("id")
);
