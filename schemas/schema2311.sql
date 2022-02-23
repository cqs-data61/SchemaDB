DROP DATABASE IF EXISTS "schema2311";
CREATE DATABASE "schema2311";
USE "schema2311";
CREATE TABLE "merchants" (
	"merchantid" CHAR,
	"companyname" VARCHAR,
	"clientname" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("merchantid")
);

CREATE TABLE "payments" (
	"paymentid" CHAR,
	"paymentdate" TIMESTAMP,
	"amount" DECIMAL,
	"currencycode" CHAR,
	"cardnumber" CHAR,
	"cvv" CHAR,
	"expirymonth" INT,
	"expiryyear" INT,
	"paymentstatus" INT,
	"merchantid" CHAR,
	 PRIMARY KEY ("paymentid"),
	 CONSTRAINT "fkeycon_payments_to_merchants" FOREIGN KEY ("merchantid") REFERENCES "merchants" ("merchantid")
);
