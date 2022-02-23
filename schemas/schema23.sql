DROP DATABASE IF EXISTS "schema23";
CREATE DATABASE "schema23";
USE "schema23";
CREATE TABLE "books" (
	"title" TEXT,
	"author" TEXT,
	"bookid" TEXT,
	"coverurl" TEXT,
	"addedat" DATETIME,
	 PRIMARY KEY ("bookid")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"username" TEXT,
	"hashedpassword" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "readinglist" (
	"userid" INTEGER,
	"title" TEXT,
	"bookid" TEXT,
	"rating" INTEGER,
	"isread" BOOLEAN,
	"addedat" DATETIME,
	 PRIMARY KEY ("userid","bookid"),
	 CONSTRAINT "fkeycon_readinglist_to_books" FOREIGN KEY ("bookid") REFERENCES "books" ("bookid"),
	 CONSTRAINT "fkeycon_readinglist_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
