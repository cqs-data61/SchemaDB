DROP DATABASE IF EXISTS "schema2448";
CREATE DATABASE "schema2448";
USE "schema2448";
CREATE TABLE "exercise" (
	"id" INT,
	"habit" VARCHAR,
	"exercise" VARCHAR,
	"located" VARCHAR,
	"dayof" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "reading" (
	"id" INT,
	"habit" VARCHAR,
	"book" VARCHAR,
	"pages" INT,
	"dayof" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "gratitude" (
	"id" INT,
	"habit" VARCHAR,
	"gratefulfor" VARCHAR,
	"dayof" DATE,
	 PRIMARY KEY ("id")
);
