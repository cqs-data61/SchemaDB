DROP DATABASE IF EXISTS "schema607";
CREATE DATABASE "schema607";
USE "schema607";
CREATE TABLE "users" (
	"id" INTEGER,
	"email" VARCHAR,
	"password_hash" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"avatar" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "offers" (
	"id" INTEGER,
	"title" VARCHAR,
	"description" TEXT,
	"sum" INTEGER,
	"type" VARCHAR,
	"picture" VARCHAR,
	"user_id" INTEGER,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_offers_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "comments" (
	"id" INTEGER,
	"offer_id" INTEGER,
	"user_id" INTEGER,
	"text" TEXT,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_comments_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_comments_to_offers" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id")
);

CREATE TABLE "categories" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "offer_categories" (
	"offer_id" INTEGER,
	"category_id" INTEGER,
	 PRIMARY KEY ("offer_id","category_id"),
	 CONSTRAINT "fkeycon_offer_categories_to_offers" FOREIGN KEY ("offer_id") REFERENCES "offers" ("id"),
	 CONSTRAINT "fkeycon_offer_categories_to_categories" FOREIGN KEY ("category_id") REFERENCES "categories" ("id")
);
