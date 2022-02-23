DROP DATABASE IF EXISTS "schema2044";
CREATE DATABASE "schema2044";
USE "schema2044";
CREATE TABLE "tb_user" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"name" VARCHAR,
	"age" INTEGER,
	 PRIMARY KEY ("id")
);
