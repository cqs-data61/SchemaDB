DROP DATABASE IF EXISTS "schema881";
CREATE DATABASE "schema881";
USE "schema881";
CREATE TABLE "categories" (
	"id" SMALLINT,
	"title" VARCHAR,
	"picture" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "peoples" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password_hash" CHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "offers" (
	"id" SERIAL,
	"title" VARCHAR,
	"description" VARCHAR,
	"picture" VARCHAR,
	"pub_date" DATE,
	"sum" INTEGER,
	"type" ENUM,
	"people_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_offers_to_peoples" FOREIGN KEY ("people_id") REFERENCES "peoples" ("id")
);

CREATE TABLE "comments" (
	"id" SERIAL,
	"text" VARCHAR,
	"people_id" INTEGER,
	"offer_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_peoples" FOREIGN KEY ("people_id") REFERENCES "peoples" ("id"),
	 CONSTRAINT "fkeycon_comments_to_offers" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);

CREATE TABLE "offers_categories" (
	"offer_id" INTEGER,
	"category_id" SMALLINT,
	 PRIMARY KEY ("offer_id","category_id"),
	 CONSTRAINT "fkeycon_offers_categories_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
	 CONSTRAINT "fkeycon_offers_categories_to_offers" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);
