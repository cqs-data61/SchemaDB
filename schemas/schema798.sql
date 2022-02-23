DROP DATABASE IF EXISTS "schema798";
CREATE DATABASE "schema798";
USE "schema798";
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
