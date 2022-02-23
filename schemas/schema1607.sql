DROP DATABASE IF EXISTS "schema1607";
CREATE DATABASE "schema1607";
USE "schema1607";
CREATE TABLE "services" (
	"id" SERIAL,
	"name" TEXT,
	"cost" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "clients" (
	"id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" SERIAL,
	"service_id" BIGINT,
	"client_id" BIGINT,
	"creation_time" TIMESTAMP,
	"order_time" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_orders_to_clients" FOREIGN KEY ("client_id") REFERENCES "clients" ("id"),
	 CONSTRAINT "fkeycon_orders_to_services" FOREIGN KEY ("service_id") REFERENCES "services" ("id")
);
