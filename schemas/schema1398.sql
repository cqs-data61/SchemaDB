DROP DATABASE IF EXISTS "schema1398";
CREATE DATABASE "schema1398";
USE "schema1398";
CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"avatar" VARCHAR,
	"role" VARCHAR,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subcategories" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categories" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"sku" VARCHAR,
	"categoryid" INT,
	"subcategoryid" INT,
	"productname" VARCHAR,
	"description" TEXT,
	"detail" VARCHAR,
	"image" VARCHAR,
	"price" DECIMAL,
	"discount" INT,
	"stock" INT,
	"status" INT,
	"createdat" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "products_fk0" FOREIGN KEY ("categoryid") REFERENCES "categories" ("id")
);
