DROP DATABASE IF EXISTS "schema862";
CREATE DATABASE "schema862";
USE "schema862";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" INTEGER,
	"is_super" INTEGER,
	"can_discount" INTEGER,
	"branch_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "branch" (
	"id" INTEGER,
	"branch_name" TEXT,
	 PRIMARY KEY ("id")
);
