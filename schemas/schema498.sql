DROP DATABASE IF EXISTS "schema498";
CREATE DATABASE "schema498";
USE "schema498";
CREATE TABLE "url_count_board" (
	"id" INT,
	"request_count" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "url_store" (
	"id" INT,
	"origin_url" VARCHAR,
	"short_url" VARCHAR,
	 PRIMARY KEY ("id")
);
