DROP DATABASE IF EXISTS "schema1475";
CREATE DATABASE "schema1475";
USE "schema1475";
CREATE TABLE "user" (
	"user_id" INTEGER,
	"username" TEXT,
	"email" TEXT,
	"password" TEXT,
	"birthday" TEXT,
	"created_at" TEXT,
	"updated_at" TEXT,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "deck" (
	"deck_id" INTEGER,
	"user_id" INTEGER,
	"name" TEXT,
	"created_at" TEXT,
	"updated_at" TEXT,
	 PRIMARY KEY ("deck_id"),
	 CONSTRAINT "fkeycon_deck_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("user_id")
);

CREATE TABLE "card" (
	"card_id" INTEGER,
	"deck_id" INTEGER,
	"word" TEXT,
	"translation" TEXT,
	"created_at" TEXT,
	"updated_at" TEXT,
	 PRIMARY KEY ("card_id"),
	 CONSTRAINT "fkeycon_card_to_deck" FOREIGN KEY ("deck_id") REFERENCES "deck" ("deck_id")
);
