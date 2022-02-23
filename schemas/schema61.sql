DROP DATABASE IF EXISTS "schema61";
CREATE DATABASE "schema61";
USE "schema61";
CREATE TABLE "authors" (
	"authorid" INT,
	"f_name" VARCHAR,
	"l_name" VARCHAR,
	 PRIMARY KEY ("author_id")
);

CREATE TABLE "genres" (
	"genreid" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("genreid")
);

CREATE TABLE "books" (
	"bookid" INT,
	"title" VARCHAR,
	"checkout_status" BOOLEAN,
	"genreid" INT,
	"authorid" INT,
	 PRIMARY KEY ("bookid"),
	 CONSTRAINT "fkeycon_books_to_genres" FOREIGN KEY ("genreid") REFERENCES "genres" ("genreid"),
	 CONSTRAINT "fkeycon_books_to_authors" FOREIGN KEY ("authorid") REFERENCES "authors" ("authorid")
);

CREATE TABLE "people" (
	"card_number" INT,
	"f_name" VARCHAR,
	"l_name" VARCHAR,
	"address" VARCHAR,
	"phone" INT,
	"email" VARCHAR,
	"bookid" INT,
	 PRIMARY KEY ("card_number"),
	 CONSTRAINT "fkeycon_people_to_books" FOREIGN KEY ("bookid") REFERENCES "books" ("bookid")
);
