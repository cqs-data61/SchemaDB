DROP DATABASE IF EXISTS "schema1185";
CREATE DATABASE "schema1185";
USE "schema1185";
CREATE TABLE "t_group" (
	"group_id" INT,
	"group_name" VARCHAR,
	 PRIMARY KEY ("group_id")
);

CREATE TABLE "t_product" (
	"product_id" INT,
	"product_name" VARCHAR,
	"group_id" INT,
	"product_price" INT,
	 PRIMARY KEY ("product_id"),
	 CONSTRAINT "fk_product_group" FOREIGN KEY ("group_id") REFERENCES "t_group" ("group_id")
);
