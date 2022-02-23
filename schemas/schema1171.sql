DROP DATABASE IF EXISTS "schema1171";
CREATE DATABASE "schema1171";
USE "schema1171";
CREATE TABLE "versions" (
	"product" VARCHAR,
	"version" VARCHAR,
	"type" VARCHAR,
	"chart_version" VARCHAR,
	"tested" BOOLEAN,
	"test_status" VARCHAR
);

CREATE TABLE "containers" (
	"id" SERIAL,
	"owner" VARCHAR,
	"editable" BOOLEAN,
	"deletable" BOOLEAN,
	"editors" VARCHAR,
	"cont_id" VARCHAR,
	"status" VARCHAR,
	"product" VARCHAR,
	"ports" INT,
	"type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"user_id" SERIAL,
	"username" VARCHAR,
	"email" VARCHAR,
	"admin" BOOLEAN,
	"created_on" TIMESTAMP,
	"last_login" TIMESTAMP,
	 PRIMARY KEY ("user_id")
);
