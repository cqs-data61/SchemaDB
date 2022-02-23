DROP DATABASE IF EXISTS "schema1927";
CREATE DATABASE "schema1927";
USE "schema1927";
CREATE TABLE "users" (
	"userid" SERIAL,
	"friends" TEXT,
	"friendsrouteids" TEXT
);

CREATE TABLE "routes" (
	"routeid" SERIAL,
	"locationa" TEXT,
	"locationb" TEXT,
	"locationc" TEXT,
	"distance" TEXT,
	"duration" TEXT,
	"placeids" TEXT,
	"lastwalked" TEXT,
	"nextwalk" TEXT,
	"sharedwith" TEXT,
	"createdat" DATETIME,
	 PRIMARY KEY ("routeid")
);
