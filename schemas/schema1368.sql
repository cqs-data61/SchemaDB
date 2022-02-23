DROP DATABASE IF EXISTS "schema1368";
CREATE DATABASE "schema1368";
USE "schema1368";
CREATE TABLE "users" (
	"id" BIGINT,
	"username" VARCHAR,
	"password" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "movies" (
	"id" BIGINT,
	"title" VARCHAR,
	"movie" VARCHAR,
	"date" DATE,
	"time" TIME,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "lekkis" (
	"id" BIGINT,
	"admin" VARCHAR,
	"caption" VARCHAR,
	"details" VARCHAR,
	"movie" VARCHAR,
	"date" DATE,
	"time" TIME,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ikejas" (
	"id" BIGINT,
	"admin" VARCHAR,
	"caption" VARCHAR,
	"details" VARCHAR,
	"movie" VARCHAR,
	"date" DATE,
	"time" TIME,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ajahs" (
	"id" BIGINT,
	"admin" VARCHAR,
	"caption" VARCHAR,
	"details" VARCHAR,
	"movie" VARCHAR,
	"date" DATE,
	"time" TIME,
	"status" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);
