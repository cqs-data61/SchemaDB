DROP DATABASE IF EXISTS "schema391";
CREATE DATABASE "schema391";
USE "schema391";
CREATE TABLE "users" (
	"user_id" INT,
	"name" VARCHAR,
	"type" ENUM,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "titles" (
	"title" VARCHAR,
	"author" VARCHAR,
	"publisher" VARCHAR,
	 PRIMARY KEY ("title")
);

CREATE TABLE "tastes" (
	"name" VARCHAR,
	"filling" VARCHAR,
	 PRIMARY KEY ("name","filling")
);

CREATE TABLE "locations" (
	"lname" VARCHAR,
	"phone" INT,
	"address" VARCHAR,
	 PRIMARY KEY ("lname")
);

CREATE TABLE "sandwiches" (
	"location" VARCHAR,
	"bread" ENUM,
	"filling" VARCHAR,
	"price" DECIMAL,
	 PRIMARY KEY ("location","bread","filling"),
	 CONSTRAINT "fk_location" FOREIGN KEY ("location") REFERENCES "locations" ("lname")
);

CREATE TABLE "categories" (
	"category_id" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "branches" (
	"bcode" VARCHAR,
	"librarian" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("bcode")
);

CREATE TABLE "holdings" (
	"branch" VARCHAR,
	"title" VARCHAR,
	"#copies" INT,
	 PRIMARY KEY ("branch","title"),
	 CONSTRAINT "fk_branch" FOREIGN KEY ("branch") REFERENCES "branches" ("bcode")
);

CREATE TABLE "articles" (
	"article_id" INT,
	"user_id" INT,
	"category_id" INT,
	"content" TEXT,
	 PRIMARY KEY ("article_id")
);

CREATE TABLE "comments" (
	"comment_id" INT,
	"user_id" INT,
	"article_id" INT,
	"comment" TEXT,
	 PRIMARY KEY ("comment_id"),
	 CONSTRAINT "fk_article" FOREIGN KEY ("article_id") REFERENCES "articles" ("article_id")
);
