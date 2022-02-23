DROP DATABASE IF EXISTS "schema1793";
CREATE DATABASE "schema1793";
USE "schema1793";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INTEGER,
	"user_id" INTEGER,
	"created" TIMESTAMP,
	"name" TEXT,
	"description" TEXT,
	"price" NUMERIC,
	"quantity" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_product_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "review" (
	"id" INTEGER,
	"user_id" INTEGER,
	"product_id" INTEGER,
	"description" TEXT,
	"score" INTEGER,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_review_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fkeycon_review_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "purchase" (
	"id" INTEGER,
	"user_id" INTEGER,
	"product_id" INTEGER,
	"date" TIMESTAMP,
	"address" VARCHAR,
	"payment" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_purchase_to_product" FOREIGN KEY ("product_id") REFERENCES "product" ("id"),
	 CONSTRAINT "fkeycon_purchase_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"body" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
