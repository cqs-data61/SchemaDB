DROP DATABASE IF EXISTS "schema2322";
CREATE DATABASE "schema2322";
USE "schema2322";
CREATE TABLE "user" (
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("username")
);

CREATE TABLE "todo" (
	"id" INTEGER,
	"username" VARCHAR,
	"content" VARCHAR,
	"status" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_todo_to_user" FOREIGN KEY ("username") REFERENCES "user" ("username")
);
