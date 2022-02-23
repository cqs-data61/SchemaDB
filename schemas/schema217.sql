DROP DATABASE IF EXISTS "schema217";
CREATE DATABASE "schema217";
USE "schema217";
CREATE TABLE "payment" (
	"payment_id" INT,
	"payment_number" INT,
	"amount" DOUBLE,
	"payment_date" DATE,
	"credit_id" BIGINT,
	 PRIMARY KEY ("payment_id")
);

CREATE TABLE "credit" (
	"credit_id" INT,
	"amount" DOUBLE,
	"terms" INT,
	"rate" DOUBLE,
	 PRIMARY KEY ("credit_id")
);
