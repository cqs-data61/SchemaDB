DROP DATABASE IF EXISTS "schema1856";
CREATE DATABASE "schema1856";
USE "schema1856";
CREATE TABLE "users" (
	"id" INTEGER,
	"username" TEXT,
	"hash" TEXT,
	"cash" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactions" (
	"id" INTEGER,
	"user_id" INTEGER,
	"transacted" DEFAULT,
	"company" TEXT,
	"symbol" TEXT,
	"shares" NUMERIC,
	"price" NUMERIC,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transactions_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);
