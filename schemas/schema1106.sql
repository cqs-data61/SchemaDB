DROP DATABASE IF EXISTS "schema1106";
CREATE DATABASE "schema1106";
USE "schema1106";
CREATE TABLE "addresses" (
	"address_id" INTEGER,
	"creation_date" TIMESTAMP,
	"modified_date" TIMESTAMP,
	"author_city" CHARACTER VARYING,
	"author_country" CHARACTER VARYING,
	 PRIMARY KEY ("address_id")
);

CREATE TABLE "publishers" (
	"publisher_id" INTEGER,
	"creation_date" TIMESTAMP,
	"modified_date" TIMESTAMP,
	"book_count" INTEGER,
	"publisher_name" CHARACTER VARYING,
	 PRIMARY KEY ("publisher_id")
);

CREATE TABLE "authors" (
	"author_id" INTEGER,
	"creation_date" TIMESTAMP,
	"modified_date" TIMESTAMP,
	"book_count" INTEGER,
	"author_name" CHARACTER VARYING,
	"address_fk" INTEGER,
	 PRIMARY KEY ("author_id")
);

CREATE TABLE "author_publisher" (
	"author_fk" INTEGER,
	"publisher_fk" INTEGER,
	 PRIMARY KEY ("author_fk","publisher_fk"),
	 CONSTRAINT "fkeycon_author_publisher_to_authors" FOREIGN KEY ("author_fk") REFERENCES "authors" ("author_id"),
	 CONSTRAINT "fkeycon_author_publisher_to_publishers" FOREIGN KEY ("publisher_fk") REFERENCES "publishers" ("publisher_id")
);

CREATE TABLE "books" (
	"book_id" INTEGER,
	"creation_date" TIMESTAMP,
	"modified_date" TIMESTAMP,
	"book_name" CHARACTER VARYING,
	"pages" BIGINT,
	"publishing_year" INTEGER,
	"author_fk" INTEGER,
	"publisher_fk" INTEGER,
	 PRIMARY KEY ("book_id")
);
