DROP DATABASE IF EXISTS "schema951";
CREATE DATABASE "schema951";
USE "schema951";
CREATE TABLE "user" (
	"id" INTEGER,
	"name" TEXT,
	"email" TEXT,
	"age" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_transaction" (
	"reference" TEXT,
	"account" TEXT,
	"date" DATE,
	"amount" FLOAT,
	"type" TEXT,
	"category" TEXT,
	"user_id" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("reference"),
	 CONSTRAINT "fkeycon_user_transaction_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
