DROP DATABASE IF EXISTS "schema1810";
CREATE DATABASE "schema1810";
USE "schema1810";
CREATE TABLE "account_holders" (
	"username" VARCHAR_IGNORECASE,
	"password" VARCHAR_IGNORECASE,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("username")
);

CREATE TABLE "roles" (
	"username" VARCHAR_IGNORECASE,
	"authority" VARCHAR_IGNORECASE,
	 CONSTRAINT "fk_authorities_users" FOREIGN KEY ("username") REFERENCES "account_holders" ("username")
);
