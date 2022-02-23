DROP DATABASE IF EXISTS "schema334";
CREATE DATABASE "schema334";
USE "schema334";
CREATE TABLE "vertlasaccounttypes" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"passwordhash" TEXT,
	"role" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_roleid" FOREIGN KEY ("role") REFERENCES "roles" ("id")
);

CREATE TABLE "plaiditems" (
	"id" INT,
	"userid" INTEGER,
	"itemid" TEXT,
	"accesstoken" TEXT,
	"institutionid" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_userid" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "plaidaccounts" (
	"id" INT,
	"userid" INTEGER,
	"itemid" TEXT,
	"accountid" TEXT,
	"name" VARCHAR,
	"officialname" VARCHAR,
	"subtype" VARCHAR,
	"type" VARCHAR,
	"vertlastype" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_userid" FOREIGN KEY ("userid") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_itemid" FOREIGN KEY ("itemid") REFERENCES "plaiditems" ("itemid")
);

CREATE TABLE "sessions" (
	"userid" INTEGER,
	"sessionkey" TEXT,
	"logintime" INTEGER,
	"lastseentime" INTEGER,
	 CONSTRAINT "fk_userid" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);
