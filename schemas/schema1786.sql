DROP DATABASE IF EXISTS "schema1786";
CREATE DATABASE "schema1786";
USE "schema1786";
CREATE TABLE "address" (
	"id" BIGINT,
	"street" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "client" (
	"id" BIGINT,
	"name" VARCHAR,
	"address_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_client_to_address" FOREIGN KEY ("address_id") REFERENCES "address" ("id")
);

CREATE TABLE "phone" (
	"id" BIGINT,
	"number" VARCHAR,
	"client_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_phone_to_client" FOREIGN KEY ("client_id") REFERENCES "client" ("id")
);
