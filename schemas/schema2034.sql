DROP DATABASE IF EXISTS "schema2034";
CREATE DATABASE "schema2034";
USE "schema2034";
CREATE TABLE "currencies" (
	"id" INT,
	"currency" INTEGER,
	"buyingpower" INTEGER,
	"amtpurchased" INTEGER,
	"equityvalue" INTEGER,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("id")
);
