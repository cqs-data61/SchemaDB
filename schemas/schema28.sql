DROP DATABASE IF EXISTS "schema28";
CREATE DATABASE "schema28";
USE "schema28";
CREATE TABLE "customer" (
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "item" (
	"id" INT,
	"name" VARCHAR,
	"price" INT,
	 PRIMARY KEY ("id")
);
