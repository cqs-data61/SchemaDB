DROP DATABASE IF EXISTS "schema1175";
CREATE DATABASE "schema1175";
USE "schema1175";
CREATE TABLE "currency" (
	"id" INTEGER,
	"created" TIMESTAMP,
	"title" TEXT,
	"code" TEXT,
	"purchase_rate" FLOAT,
	"sale_rate" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" TEXT,
	"password" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_move" (
	"id" INTEGER,
	"amount" FLOAT,
	"comment" TEXT,
	"currency_id" INTEGER,
	"sender_id" INTEGER,
	"receiver_id" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_user_move_to_user" FOREIGN KEY ("receiver_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_user_move_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("id")
);

CREATE TABLE "balance" (
	"id" INTEGER,
	"balance" FLOAT,
	"currency_id" INTEGER,
	"user_id" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_balance_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id"),
	 CONSTRAINT "fkeycon_balance_to_currency" FOREIGN KEY ("currency_id") REFERENCES "currency" ("id")
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"title" TEXT,
	"body" TEXT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
