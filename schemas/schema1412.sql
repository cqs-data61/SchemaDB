DROP DATABASE IF EXISTS "schema1412";
CREATE DATABASE "schema1412";
USE "schema1412";
CREATE TABLE "information" (
	"product_id" SERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"cost" DECIMAL,
	"reviews" INT,
	"average_review" INT,
	"uuid" INT,
	 PRIMARY KEY ("product_id")
);

CREATE TABLE "images" (
	"image_id" SERIAL,
	"img_1" VARCHAR,
	"img_2" VARCHAR,
	"img_3" VARCHAR,
	"img_4" VARCHAR,
	"img_5" VARCHAR,
	"img_6" VARCHAR,
	"img_7" VARCHAR,
	"product_id" INT,
	 PRIMARY KEY ("image_id"),
	 CONSTRAINT "fkeycon_images_to_information" FOREIGN KEY ("product_id") REFERENCES "information" ("product_id")
);
