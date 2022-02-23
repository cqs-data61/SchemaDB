DROP DATABASE IF EXISTS "schema2126";
CREATE DATABASE "schema2126";
USE "schema2126";
CREATE TABLE "users" (
	"userid" SERIAL,
	"username" TEXT,
	"hashedpassword" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("userid")
);

CREATE TABLE "flashcards" (
	"flashcardid" SERIAL,
	"userid" INTEGER,
	"question" TEXT,
	"answer" TEXT,
	 PRIMARY KEY ("flashcardid"),
	 CONSTRAINT "fkeycon_flashcards_to_users" FOREIGN KEY ("userid") REFERENCES "users" ("userid")
);
