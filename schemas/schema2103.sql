DROP DATABASE IF EXISTS "schema2103";
CREATE DATABASE "schema2103";
USE "schema2103";
CREATE TABLE "brand" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "car" (
	"id" INT,
	"name" VARCHAR,
	"colour" VARCHAR,
	"id_brand" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_car_to_brand" FOREIGN KEY ("id_brand") REFERENCES "brand" ("id")
);

CREATE TABLE "price" (
	"id" INT,
	"start_date" DATE,
	"end_date" DATE,
	"value" DOUBLE,
	"id_car" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_price_to_car" FOREIGN KEY ("id_car") REFERENCES "car" ("id")
);
