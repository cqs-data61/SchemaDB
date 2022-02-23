DROP DATABASE IF EXISTS "schema1960";
CREATE DATABASE "schema1960";
USE "schema1960";
CREATE TABLE "users" (
	"id" INT,
	"name1" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "names" (
	"id" INT,
	"name1" VARCHAR,
	"stargazers" INT,
	"watchers" INT,
	"size" INT,
	"userid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_names_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);
