DROP DATABASE IF EXISTS "schema2387";
CREATE DATABASE "schema2387";
USE "schema2387";
CREATE TABLE "order_statuses" (
	"id" BIGINT,
	"name" CHARACTER
);

CREATE TABLE "drivers" (
	"id" BIGINT,
	"name" CHARACTER,
	"surname" CHARACTER,
	"phone" CHARACTER
);

CREATE TABLE "taxi_statuses" (
	"id" BIGINT,
	"name" CHARACTER
);

CREATE TABLE "taxi_classes" (
	"id" BIGINT,
	"name" CHARACTER,
	"multiplier" NUMERIC
);

CREATE TABLE "taxi" (
	"id" BIGINT,
	"info" TEXT,
	"taxi_class_id" BIGINT,
	"capacity" INTEGER,
	"taxi_status_id" BIGINT,
	"driver_id" BIGINT,
	 CONSTRAINT "fkeycon_taxi_to_drivers" FOREIGN KEY ("driver_id") REFERENCES "drivers" ("id"),
	 CONSTRAINT "fkeycon_taxi_to_taxi_classes" FOREIGN KEY ("taxi_class_id") REFERENCES "taxi_classes" ("id"),
	 CONSTRAINT "fkeycon_taxi_to_taxi_statuses" FOREIGN KEY ("taxi_status_id") REFERENCES "taxi_statuses" ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"username" CHARACTER,
	"password" CHARACTER,
	"balance" NUMERIC,
	"name" CHARACTER,
	"surname" CHARACTER,
	"phone" CHARACTER,
	"discount" NUMERIC,
	"role_id" BIGINT,
	"foreign" KEY,
	"unique" KEY
);

CREATE TABLE "orders" (
	"id" BIGINT,
	"user_id" BIGINT,
	"status_id" BIGINT,
	"total" NUMERIC,
	"date" DATE,
	"address_from" CHARACTER,
	"address_to" CHARACTER,
	"distance" NUMERIC,
	"people" INTEGER,
	 CONSTRAINT "fkeycon_orders_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "order_taxi" (
	"order_id" BIGINT,
	"taxi_id" BIGINT,
	 PRIMARY KEY ("order_id","taxi_id"),
	 CONSTRAINT "fkeycon_order_taxi_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("id"),
	 CONSTRAINT "fkeycon_order_taxi_to_taxi" FOREIGN KEY ("taxi_id") REFERENCES "taxi" ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR
);
