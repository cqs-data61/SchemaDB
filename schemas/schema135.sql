DROP DATABASE IF EXISTS "schema135";
CREATE DATABASE "schema135";
USE "schema135";
CREATE TABLE "lib_book" (
	"book_id" INTEGER,
	"authors" VARCHAR,
	"title" VARCHAR,
	"genre" INTEGER,
	 PRIMARY KEY ("book_id")
);

CREATE TABLE "lib_reader" (
	"reader_id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"patronymic" VARCHAR,
	"date_of_registry" DATE,
	"active" BOOLEAN,
	 PRIMARY KEY ("reader_id")
);

CREATE TABLE "lib_book_copies" (
	"book_copies_id" INTEGER,
	"book_id" INTEGER,
	"reader_id" INTEGER,
	 PRIMARY KEY ("book_copies_id"),
	 CONSTRAINT "fkeycon_lib_book_copies_to_lib_book" FOREIGN KEY ("book_id") REFERENCES "lib_book" ("book_id"),
	 CONSTRAINT "fkeycon_lib_book_copies_to_lib_reader" FOREIGN KEY ("reader_id") REFERENCES "lib_reader" ("reader_id")
);
