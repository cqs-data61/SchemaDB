DROP DATABASE IF EXISTS "schema321";
CREATE DATABASE "schema321";
USE "schema321";
CREATE TABLE "languages" (
	"code" CHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "subjects" (
	"name" VARCHAR,
	 PRIMARY KEY ("name")
);

CREATE TABLE "authors" (
	"name" VARCHAR
);

CREATE TABLE "books" (
	"id" INTEGER,
	"title" TEXT,
	"copyright" VARCHAR,
	"license" VARCHAR,
	"publication_date" DATE
);

CREATE TABLE "books_languages" (
	"bookid" INTEGER,
	"languagecode" CHAR,
	 CONSTRAINT "fkeycon_books_languages_to_books" FOREIGN KEY ("bookid") REFERENCES "books" ("id"),
	 CONSTRAINT "fkeycon_books_languages_to_languages" FOREIGN KEY ("languagecode") REFERENCES "languages" ("code")
);

CREATE TABLE "books_subjects" (
	"bookid" INTEGER,
	"subjectname" VARCHAR,
	 CONSTRAINT "fkeycon_books_subjects_to_subjects" FOREIGN KEY ("subjectname") REFERENCES "subjects" ("name"),
	 CONSTRAINT "fkeycon_books_subjects_to_books" FOREIGN KEY ("bookid") REFERENCES "books" ("id")
);

CREATE TABLE "books_authors" (
	"bookid" INTEGER,
	"authorname" VARCHAR,
	 CONSTRAINT "fkeycon_books_authors_to_authors" FOREIGN KEY ("authorname") REFERENCES "authors" ("name"),
	 CONSTRAINT "fkeycon_books_authors_to_books" FOREIGN KEY ("bookid") REFERENCES "books" ("id")
);
