DROP DATABASE IF EXISTS "schema1931";
CREATE DATABASE "schema1931";
USE "schema1931";
CREATE TABLE "journeydebtstatusdefinition" (
	"id" SERIAL,
	"statusname" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "client" (
	"id" SERIAL,
	"username" CHAR,
	"password" CHAR,
	"token" CHAR,
	"firstname" CHAR,
	"lastname" CHAR,
	"phonenum" CHAR,
	"email" CHAR,
	"organization" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "chatbot" (
	"id" SERIAL,
	"awsid" CHAR,
	"clientid" INT,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_chatbot_to_client" FOREIGN KEY ("clientid") REFERENCES "client" ("id")
);

CREATE TABLE "journey" (
	"id" SERIAL,
	"awsid" CHAR,
	"clientid" INT,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_journey_to_client" FOREIGN KEY ("clientid") REFERENCES "client" ("id")
);

CREATE TABLE "apicall" (
	"id" SERIAL,
	"clientid" INT,
	"calldatetimeutc" TIMESTAMP,
	"method" CHAR,
	"url" CHAR,
	"payload" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_apicall_to_client" FOREIGN KEY ("clientid") REFERENCES "client" ("id")
);

CREATE TABLE "clientportfolio" (
	"id" SERIAL,
	"clientid" INT,
	"portfolioname" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_clientportfolio_to_client" FOREIGN KEY ("clientid") REFERENCES "client" ("id")
);

CREATE TABLE "debt" (
	"id" SERIAL,
	"clientid" INT,
	"clientportfolioid" INT,
	"originalbalance" DECIMAL,
	"outstandingbalance" DECIMAL,
	"totalpayment" DECIMAL,
	"discount" DECIMAL,
	"discountexpirationdatetimeutc" TIMESTAMP,
	"description" TEXT,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_debt_to_clientportfolio" FOREIGN KEY ("clientportfolioid") REFERENCES "clientportfolio" ("id"),
	 CONSTRAINT "fkeycon_debt_to_client" FOREIGN KEY ("clientid") REFERENCES "client" ("id")
);

CREATE TABLE "journeyentryactivity" (
	"id" SERIAL,
	"journeyid" INT,
	"debtid" INT,
	"entrydatetimeutc" TIMESTAMP,
	"exitdatetimeutc" TIMESTAMP,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_journeyentryactivity_to_journey" FOREIGN KEY ("journeyid") REFERENCES "journey" ("id"),
	 CONSTRAINT "fkeycon_journeyentryactivity_to_debt" FOREIGN KEY ("debtid") REFERENCES "debt" ("id")
);

CREATE TABLE "journeyexeactivity" (
	"id" SERIAL,
	"journeyid" INT,
	"debtid" INT,
	"journeyentryactivityid" INT,
	"entrydatetimeutc" TIMESTAMP,
	"chatsessionid" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_journeyexeactivity_to_journey" FOREIGN KEY ("journeyid") REFERENCES "journey" ("id"),
	 CONSTRAINT "fkeycon_journeyexeactivity_to_journeyentryactivity" FOREIGN KEY ("journeyentryactivityid") REFERENCES "journeyentryactivity" ("id"),
	 CONSTRAINT "fkeycon_journeyexeactivity_to_debt" FOREIGN KEY ("debtid") REFERENCES "debt" ("id")
);

CREATE TABLE "journeydebtstatus" (
	"id" SERIAL,
	"journeyentryactivityid" INT,
	"journeydebtstatusdefinitionid" INT,
	"statusvalue" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_journeydebtstatus_to_journeyentryactivity" FOREIGN KEY ("journeyentryactivityid") REFERENCES "journeyentryactivity" ("id"),
	 CONSTRAINT "fkeycon_journeydebtstatus_to_journeydebtstatusdefinition" FOREIGN KEY ("journeydebtstatusdefinitionid") REFERENCES "journeydebtstatusdefinition" ("id")
);

CREATE TABLE "debtpayment" (
	"id" SERIAL,
	"debtid" INT,
	"paymentdatetimeutc" TIMESTAMP,
	"amount" DECIMAL,
	"paymentstatus" CHAR,
	"fundingaccsummary" CHAR,
	"paymentprocessor" CHAR,
	"debtlevel" INT,
	"paymentsource" CHAR,
	"vendortransid" CHAR,
	"statusreason" TEXT,
	"accounttype" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_debtpayment_to_debt" FOREIGN KEY ("debtid") REFERENCES "debt" ("id")
);

CREATE TABLE "debtpaymentlink" (
	"id" SERIAL,
	"debtid" INT,
	"url" CHAR,
	"expirationdatetimeutc" TIMESTAMP,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_debtpaymentlink_to_debt" FOREIGN KEY ("debtid") REFERENCES "debt" ("id")
);

CREATE TABLE "borrower" (
	"id" SERIAL,
	"debtid" INT,
	"firstname" CHAR,
	"lastname" CHAR,
	"isprimary" BOOLEAN,
	"channeltype" CHAR,
	"phonenum" CHAR,
	"email" CHAR,
	"timezone" CHAR,
	"country" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_borrower_to_debt" FOREIGN KEY ("debtid") REFERENCES "debt" ("id")
);

CREATE TABLE "borrowerfundingaccount" (
	"id" SERIAL,
	"borrowerid" INT,
	"accounttype" CHAR,
	"cardnumber" INT,
	"cardholder" CHAR,
	"cvc" INT,
	"expmonyear" CHAR,
	"summary" CHAR,
	"clientidexternal" CHAR,
	"paymentprocessor" CHAR,
	"paymentprocessoruserid" CHAR,
	"token" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_borrowerfundingaccount_to_borrower" FOREIGN KEY ("borrowerid") REFERENCES "borrower" ("id")
);

CREATE TABLE "clientconfiguration" (
	"id" SERIAL,
	"clientportfolioid" INT,
	"linkexpminutes" INT,
	"gapbetweenjourneysdays" INT,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_clientconfiguration_to_clientportfolio" FOREIGN KEY ("clientportfolioid") REFERENCES "clientportfolio" ("id")
);

CREATE TABLE "clientfundingaccount" (
	"id" SERIAL,
	"clientid" INT,
	"accounttype" CHAR,
	"summary" CHAR,
	"paymentprocessor" CHAR,
	"token" CHAR,
	"createdate" TIMESTAMP,
	"lastupdatedate" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_clientfundingaccount_to_client" FOREIGN KEY ("clientid") REFERENCES "client" ("id")
);
