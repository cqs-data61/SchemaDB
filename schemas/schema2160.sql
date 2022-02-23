DROP DATABASE IF EXISTS "schema2160";
CREATE DATABASE "schema2160";
USE "schema2160";
CREATE TABLE "detail" (
	"id_detail" BIGINT,
	"kcal" INTEGER,
	"id_product" BIGINT,
	 PRIMARY KEY ("id_detail")
);

CREATE TABLE "product" (
	"id_product" BIGINT,
	"name" VARCHAR,
	"price" DOUBLE,
	 PRIMARY KEY ("id_product")
);
