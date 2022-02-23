DROP DATABASE IF EXISTS "schema2042";
CREATE DATABASE "schema2042";
USE "schema2042";
CREATE TABLE "payment" (
	"id" BIGINT,
	"value" DECIMAL,
	"status" VARCHAR,
	"card_client_name" VARCHAR,
	"card_number" VARCHAR,
	"card_expiration" VARCHAR,
	"card_verification_code" VARCHAR
);

CREATE TABLE "product_available_sizes" (
	"product_code" BIGINT,
	"available_sizes" VARCHAR
);

CREATE TABLE "product_image" (
	"id" BIGINT,
	"product_code" BIGINT,
	"image_url" VARCHAR
);

CREATE TABLE "product" (
	"code" BIGINT,
	"name" VARCHAR,
	"description" VARCHAR,
	"slug" VARCHAR,
	"brand" VARCHAR,
	"color" VARCHAR,
	"price" DECIMAL,
	"discount" DECIMAL,
	"weight_in_grams" INTEGER,
	"category_id" BIGINT
);

CREATE TABLE "category" (
	"id" BIGINT,
	"name" VARCHAR,
	"slug" VARCHAR,
	"position" INTEGER
);
