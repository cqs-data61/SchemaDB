DROP DATABASE IF EXISTS "schema2434";
CREATE DATABASE "schema2434";
USE "schema2434";
CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "solution" (
	"id" TEXT,
	"lines" TEXT,
	"created" TIMESTAMP,
	"author_id" INTEGER,
	"original_url" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_solution_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"body" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
