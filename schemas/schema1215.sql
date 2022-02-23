DROP DATABASE IF EXISTS "schema1215";
CREATE DATABASE "schema1215";
USE "schema1215";
CREATE TABLE "categories" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "offers" (
	"id" BIGSERIAL,
	"title" VARCHAR,
	"description" VARCHAR,
	"sum" NUMERIC,
	"created_date" DATE,
	"picture" TEXT,
	"user_id" BIGINT,
	"type" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_offers_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "offers_categories" (
	"offer_id" BIGINT,
	"category_id" BIGINT,
	 PRIMARY KEY ("offer_id","category_id"),
	 CONSTRAINT "fkeycon_offers_categories_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id"),
	 CONSTRAINT "fkeycon_offers_categories_to_offers" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);

CREATE TABLE "comments" (
	"id" BIGSERIAL,
	"text" VARCHAR,
	"created_date" DATE,
	"offer_id" BIGINT,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_offers" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);
