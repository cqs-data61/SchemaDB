DROP DATABASE IF EXISTS "schema157";
CREATE DATABASE "schema157";
USE "schema157";
CREATE TABLE "library" (
	"libid" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("libid")
);

CREATE TABLE "book" (
	"bookid" INT,
	"author" VARCHAR,
	"name" VARCHAR,
	"library_libid" INT,
	 PRIMARY KEY ("bookid")
);
