DROP DATABASE IF EXISTS "schema428";
CREATE DATABASE "schema428";
USE "schema428";
CREATE TABLE "pizza_toppings" (
	"topping_id" INTEGER,
	"topping_name" TEXT
);

CREATE TABLE "pizza_recipes" (
	"pizza_id" INTEGER,
	"toppings" TEXT
);

CREATE TABLE "pizza_names" (
	"pizza_id" INTEGER,
	"pizza_name" TEXT
);

CREATE TABLE "runner_orders" (
	"order_id" INTEGER,
	"runner_id" INTEGER,
	"pickup_time" VARCHAR,
	"distance" VARCHAR,
	"duration" VARCHAR,
	"cancellation" VARCHAR
);

CREATE TABLE "customer_orders" (
	"order_id" INTEGER,
	"customer_id" INTEGER,
	"pizza_id" INTEGER,
	"exclusions" VARCHAR,
	"extras" VARCHAR,
	"order_time" TIMESTAMP
);

CREATE TABLE "runners" (
	"runner_id" INTEGER,
	"registration_date" DATE
);
