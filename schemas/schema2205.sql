DROP DATABASE IF EXISTS "schema2205";
CREATE DATABASE "schema2205";
USE "schema2205";
CREATE TABLE "parent" (
	"parent_id" INT,
	"sender" VARCHAR,
	"receiver" VARCHAR,
	"totalamount" INT,
	"totalpaidamount" INT,
	 PRIMARY KEY ("parent_id")
);

CREATE TABLE "child" (
	"id" INT,
	"pid" INT,
	"paidamount" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_con_paren" FOREIGN KEY ("pid") REFERENCES "parent" ("parent_id")
);
