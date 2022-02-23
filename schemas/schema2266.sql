DROP DATABASE IF EXISTS "schema2266";
CREATE DATABASE "schema2266";
USE "schema2266";
CREATE TABLE "driver" (
	"driver_id" BIGINT,
	"email" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	"is_busy" BIT,
	 PRIMARY KEY ("driver_id")
);

CREATE TABLE "car" (
	"id" BIGINT,
	"model" VARCHAR,
	"driver_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_car_to_driver" FOREIGN KEY ("driver_id") REFERENCES "driver" ("driver_id")
);

CREATE TABLE "client" (
	"client_id" BIGINT,
	"email" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"role" VARCHAR,
	 PRIMARY KEY ("client_id")
);

CREATE TABLE "orders" (
	"order_id" BIGINT,
	"price" DOUBLE,
	"driver_id" BIGINT,
	"client_id" BIGINT,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "fkeycon_orders_to_client" FOREIGN KEY ("client_id") REFERENCES "client" ("client_id"),
	 CONSTRAINT "fkeycon_orders_to_driver" FOREIGN KEY ("driver_id") REFERENCES "driver" ("driver_id")
);
