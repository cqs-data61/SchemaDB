DROP DATABASE IF EXISTS "schema1959";
CREATE DATABASE "schema1959";
USE "schema1959";
CREATE TABLE "user" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "productorder" (
	"id" INT,
	"user_name" VARCHAR,
	"user_phone" VARCHAR,
	"user_comment" TEXT,
	"user_id" INT,
	"data" TIMESTAMP,
	"status" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_DETAIL1" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	"sort_order" INT,
	"status" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"name" VARCHAR,
	"category_id" INT,
	"price" FLOAT,
	"availability" INT,
	"brand" VARCHAR,
	"image" VARCHAR,
	"description" TEXT,
	"is_new" INT,
	"status" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_DETAIL" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "orderdetail" (
	"id" INT,
	"order_id" INT,
	"product_id" INT,
	"quantity" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_DETAIL3" FOREIGN KEY ("order_id") REFERENCES "productorder" ("id"),
	 CONSTRAINT "dsasa" FOREIGN KEY ("product_id") REFERENCES "product" ("id")
);
