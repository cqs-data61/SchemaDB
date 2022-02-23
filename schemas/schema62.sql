DROP DATABASE IF EXISTS "schema62";
CREATE DATABASE "schema62";
USE "schema62";
CREATE TABLE "exchange_rates" (
	"from_currency" TEXT,
	"to_currency" TEXT,
	"rate" REAL,
	"rate_at" TIMESTAMP,
	 PRIMARY KEY ("from_currency","to_currency")
);

CREATE TABLE "api_keys" (
	"project_id" TEXT,
	"hashed_secret" BYTEA,
	 PRIMARY KEY ("project_id")
);

CREATE TABLE "currencies" (
	"code" TEXT,
	 PRIMARY KEY ("code")
);
