DROP DATABASE IF EXISTS "schema801";
CREATE DATABASE "schema801";
USE "schema801";
CREATE TABLE "users" (
	"id" INT,
	"login" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"salt" VARCHAR,
	"token" VARCHAR,
	"activity" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "museums" (
	"id" INT,
	"name" VARCHAR,
	"location" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usersmuseums" (
	"userid" INT,
	"museumid" INT,
	 PRIMARY KEY ("userid","museumid"),
	 CONSTRAINT "usersmuseumstomuseums" FOREIGN KEY ("museumid") REFERENCES "museums" ("id"),
	 CONSTRAINT "usersmuseumstousers" FOREIGN KEY ("userid") REFERENCES "users" ("id")
);

CREATE TABLE "countries" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "artists" (
	"id" INT,
	"name" VARCHAR,
	"countryid" INT,
	"age" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "paintings" (
	"id" INT,
	"name" VARCHAR,
	"artistid" INT,
	"museumid" INT,
	"year" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "paintingmuseumkey" FOREIGN KEY ("museumid") REFERENCES "museums" ("id"),
	 CONSTRAINT "paintingartistkey" FOREIGN KEY ("artistid") REFERENCES "artists" ("id")
);
