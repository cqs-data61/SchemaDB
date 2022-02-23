DROP DATABASE IF EXISTS "schema2464";
CREATE DATABASE "schema2464";
USE "schema2464";
CREATE TABLE "transactiondetails" (
	"transactionid" VARCHAR,
	"customerid" VARCHAR,
	"accountid" VARCHAR,
	"transactiontype" VARCHAR,
	"description" VARCHAR,
	"trasactiondate" DATE,
	"amount" DECIMAL,
	"status" VARCHAR,
	"transactioncurrency" VARCHAR,
	"accountbalance" DECIMAL,
	"accountbalanceinusd" DECIMAL,
	"failurereason" VARCHAR
);

CREATE TABLE "accountdetails" (
	"accountid" VARCHAR,
	"customerid" VARCHAR,
	"country" VARCHAR,
	"openedondate" DATE,
	"balance" DECIMAL,
	"allowedcurrencies" VARCHAR,
	 PRIMARY KEY ("accountid")
);

CREATE TABLE "customerdetails" (
	"customerid" VARCHAR,
	"name" VARCHAR,
	"emailid" VARCHAR,
	 PRIMARY KEY ("customerid")
);
