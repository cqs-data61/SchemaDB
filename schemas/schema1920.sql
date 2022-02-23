DROP DATABASE IF EXISTS "schema1920";
CREATE DATABASE "schema1920";
USE "schema1920";
CREATE TABLE "completedtasks" (
	"id" SERIAL,
	"taskdate" DATE,
	"task" TEXT,
	"typeid" INTEGER,
	"userid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"id" SERIAL,
	"taskdate" DATE,
	"task" TEXT,
	"typeid" INTEGER,
	"userid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"firstname" TEXT,
	"lastname" TEXT,
	"email" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "types" (
	"id" SERIAL,
	"tasktype" TEXT,
	 PRIMARY KEY ("id")
);
