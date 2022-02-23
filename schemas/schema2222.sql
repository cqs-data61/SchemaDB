DROP DATABASE IF EXISTS "schema2222";
CREATE DATABASE "schema2222";
USE "schema2222";
CREATE TABLE "account" (
	"id" BIGINT,
	"name" VARCHAR,
	"balance" FLOAT,
	"version" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "github_user" (
	"id" BIGINT,
	"name" VARCHAR,
	"followers" INT,
	"stars" INT,
	"gender" VARCHAR,
	"repos" INT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "address" (
	"id" BIGINT,
	"detail" VARCHAR,
	"user_id" BIGINT,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"name" VARCHAR,
	"company" VARCHAR,
	"create_time" DATETIME,
	"update_time" DATETIME,
	 PRIMARY KEY ("id")
);
