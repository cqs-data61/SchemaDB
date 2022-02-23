DROP DATABASE IF EXISTS "schema1214";
CREATE DATABASE "schema1214";
USE "schema1214";
CREATE TABLE "measures" (
	"measure_id" SERIAL,
	"measure_shortname" TEXT,
	"measure_fullname" TEXT,
	 PRIMARY KEY ("measure_id")
);

CREATE TABLE "users" (
	"userid" SERIAL,
	"username" TEXT,
	"email" TEXT,
	"email_domain" TEXT,
	"userpass" TEXT,
	 PRIMARY KEY ("userid")
);
