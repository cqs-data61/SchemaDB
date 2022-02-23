DROP DATABASE IF EXISTS "schema2314";
CREATE DATABASE "schema2314";
USE "schema2314";
CREATE TABLE "address" (
	"address_id" BIGSERIAL,
	"street" VARCHAR,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "client" (
	"client_id" BIGSERIAL,
	"name" VARCHAR,
	"address_id" BIGINT,
	 PRIMARY KEY ("client_id"),
	 CONSTRAINT "fk_client" FOREIGN KEY ("address_id") REFERENCES "address" ("address_id")
);

CREATE TABLE "phone" (
	"phone_id" BIGSERIAL,
	"phone_number" VARCHAR,
	"client_id" BIGINT,
	 PRIMARY KEY ("phone_id"),
	 CONSTRAINT "fk_client_2" FOREIGN KEY ("client_id") REFERENCES "client" ("client_id")
);
