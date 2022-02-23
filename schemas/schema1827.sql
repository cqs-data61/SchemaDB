DROP DATABASE IF EXISTS "schema1827";
CREATE DATABASE "schema1827";
USE "schema1827";
CREATE TABLE "address_book" (
	"id" BIGINT,
	"book" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "phone" (
	"owner_id" BIGINT,
	"phone_number" VARCHAR,
	 CONSTRAINT "fkeycon_phone_to_address_book" FOREIGN KEY ("owner_id") REFERENCES "address_book" ("id")
);
