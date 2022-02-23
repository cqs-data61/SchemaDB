DROP DATABASE IF EXISTS "schema2177";
CREATE DATABASE "schema2177";
USE "schema2177";
CREATE TABLE "transaction" (
	"timestamp" INTEGER,
	"src" INTEGER,
	"dst" INTEGER
);

CREATE TABLE "station" (
	"id" INTEGER,
	"title" TEXT,
	"lat" TEXT,
	"lng" TEXT,
	 PRIMARY KEY ("id")
);
