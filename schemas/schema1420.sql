DROP DATABASE IF EXISTS "schema1420";
CREATE DATABASE "schema1420";
USE "schema1420";
CREATE TABLE "item" (
	"item_id" NUMBER,
	"item_name" VARCHAR,
	"item_type" NUMBER,
	"item_price" DOUBLE,
	 PRIMARY KEY ("item_id")
);

CREATE TABLE "customer_type" (
	"customer_type_id" NUMBER,
	"percentage_discount" NUMBER,
	 PRIMARY KEY ("customer_type_id")
);

CREATE TABLE "customer" (
	"customer_id" NUMBER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"city" VARCHAR,
	"customer_type_id" NUMBER,
	"member_since" DATE,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "weather" (
	"weather_id" IDENTITY,
	"weather_date" DATE,
	"lat" FLOAT,
	"lon" FLOAT,
	"city" VARCHAR,
	"state" VARCHAR,
	"temperatures" VARCHAR
);
