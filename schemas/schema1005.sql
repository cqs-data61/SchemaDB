DROP DATABASE IF EXISTS "schema1005";
CREATE DATABASE "schema1005";
USE "schema1005";
CREATE TABLE "stores" (
	"id" VARCHAR,
	"store_id" CHARACTER VARYING,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" VARCHAR,
	"product_id" CHARACTER VARYING,
	"store_id" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "products_store_id_fk" FOREIGN KEY ("store_id") REFERENCES "stores" ("store_id")
);
