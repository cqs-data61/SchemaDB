DROP DATABASE IF EXISTS "schema2239";
CREATE DATABASE "schema2239";
USE "schema2239";
CREATE TABLE "category" (
	"id" INT,
	"categoryname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subcategory" (
	"id" INT,
	"subcategoryname" VARCHAR,
	"categoryid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_subcategory_to_category" FOREIGN KEY ("categoryid") REFERENCES "category" ("id")
);

CREATE TABLE "useraccount" (
	"id" INT,
	"useraccountname" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactiontype" (
	"id" INT,
	"typename" VARCHAR,
	"createat" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transaction" (
	"id" INT,
	"transactionname" VARCHAR,
	"transdate" DATE,
	"typeid" INT,
	"useraccountinid" INT,
	"useraccountoutid" INT,
	"categoryid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_transaction_to_transactiontype" FOREIGN KEY ("typeid") REFERENCES "transactiontype" ("id"),
	 CONSTRAINT "fkeycon_transaction_to_useraccount" FOREIGN KEY ("useraccountoutid") REFERENCES "useraccount" ("id"),
	 CONSTRAINT "fkeycon_transaction_to_category" FOREIGN KEY ("categoryid") REFERENCES "category" ("id")
);
