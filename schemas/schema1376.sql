DROP DATABASE IF EXISTS "schema1376";
CREATE DATABASE "schema1376";
USE "schema1376";
CREATE TABLE "foreign_exchange_rate" (
	"date" DATE,
	"currency_pair" CHAR,
	"rate" DECIMAL,
	 PRIMARY KEY ("currency_pair","date")
);

CREATE TABLE "stock_market_index" (
	"date" DATE,
	"sp500" DECIMAL,
	 PRIMARY KEY ("date")
);

CREATE TABLE "issuer" (
	"inn" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("inn")
);

CREATE TABLE "security" (
	"id" VARCHAR,
	"ticker" VARCHAR,
	"name" VARCHAR,
	"issuer_inn" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "security_issuer_inn_fkey" FOREIGN KEY ("issuer_inn") REFERENCES "issuer" ("inn")
);

CREATE TABLE "security_quote" (
	"id" INT,
	"security" VARCHAR,
	"timestamp" TIMESTAMP,
	"quote" DECIMAL,
	"price" DECIMAL,
	"accrued_interest" DECIMAL,
	"currency" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "security_quote_security_fkey" FOREIGN KEY ("security") REFERENCES "security" ("id")
);

CREATE TABLE "portfolio" (
	"id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transaction" (
	"id" VARCHAR,
	"portfolio" VARCHAR,
	"security" VARCHAR,
	"timestamp" TIMESTAMP,
	"count" INT,
	 PRIMARY KEY ("id","portfolio"),
	 CONSTRAINT "transaction_security_fkey" FOREIGN KEY ("security") REFERENCES "security" ("id"),
	 CONSTRAINT "transaction_portfolio_fkey" FOREIGN KEY ("portfolio") REFERENCES "portfolio" ("id")
);

CREATE TABLE "portfolio_property" (
	"id" INT,
	"portfolio" VARCHAR,
	"timestamp" TIMESTAMP,
	"property" VARCHAR,
	"value" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "portfolio_property_portfolio_fkey" FOREIGN KEY ("portfolio") REFERENCES "portfolio" ("id")
);

CREATE TABLE "cash_flow_type" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transaction_cash_flow" (
	"transaction_id" VARCHAR,
	"portfolio" VARCHAR,
	"type" INT,
	"value" DECIMAL,
	"currency" CHAR,
	 PRIMARY KEY ("transaction_id","portfolio","type"),
	 CONSTRAINT "transaction_cash_flow_transaction_id_fkey" FOREIGN KEY ("transaction_id") REFERENCES "transaction" ("id"),
	 CONSTRAINT "transaction_cash_flow_type_fkey" FOREIGN KEY ("type") REFERENCES "cash_flow_type" ("id"),
	 CONSTRAINT "transaction_cash_flow_portfolio_fkey" FOREIGN KEY ("portfolio") REFERENCES "portfolio" ("id")
);

CREATE TABLE "security_event_cash_flow" (
	"id" INT,
	"portfolio" VARCHAR,
	"timestamp" TIMESTAMP,
	"security" VARCHAR,
	"count" INT,
	"type" INT,
	"value" DECIMAL,
	"currency" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "security_event_cash_flow_type_fkey" FOREIGN KEY ("type") REFERENCES "cash_flow_type" ("id"),
	 CONSTRAINT "security_event_cash_flow_security_fkey" FOREIGN KEY ("security") REFERENCES "security" ("id"),
	 CONSTRAINT "security_event_cash_flow_portfolio_fkey" FOREIGN KEY ("portfolio") REFERENCES "portfolio" ("id")
);

CREATE TABLE "event_cash_flow" (
	"id" INT,
	"portfolio" VARCHAR,
	"timestamp" TIMESTAMP,
	"type" INT,
	"value" DECIMAL,
	"currency" CHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "event_cash_flow_portfolio_fkey" FOREIGN KEY ("portfolio") REFERENCES "portfolio" ("id"),
	 CONSTRAINT "event_cash_flow_type_fkey" FOREIGN KEY ("type") REFERENCES "cash_flow_type" ("id")
);
