DROP DATABASE IF EXISTS "schema1450";
CREATE DATABASE "schema1450";
USE "schema1450";
CREATE TABLE "transaction" (
	"txn_id" INTEGER,
	"txn_date" DATETIME,
	"account_id" INTEGER,
	"txn_type_cd" ENUM,
	"amount" DOUBLE,
	"teller_emp_id" SMALLINT,
	"execution_branch_id" SMALLINT,
	"funds_avail_date" DATETIME
);

CREATE TABLE "account" (
	"account_id" INTEGER,
	"product_cd" VARCHAR,
	"cust_id" INTEGER,
	"open_date" DATE,
	"close_date" DATE,
	"last_activity_date" DATE,
	"status" ENUM,
	"open_branch_id" SMALLINT,
	"open_emp_id" SMALLINT,
	"avail_balance" FLOAT,
	"pending_balance" FLOAT
);

CREATE TABLE "officer" (
	"officer_id" SMALLINT,
	"cust_id" INTEGER,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"title" VARCHAR,
	"start_date" DATE,
	"end_date" DATE
);

CREATE TABLE "business" (
	"cust_id" INTEGER,
	"name" VARCHAR,
	"state_id" VARCHAR,
	"incorp_date" DATE
);

CREATE TABLE "individual" (
	"cust_id" INTEGER,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"birth_date" DATE
);

CREATE TABLE "customer" (
	"cust_id" INTEGER,
	"fed_id" VARCHAR,
	"cust_type_cd" ENUM,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"postal_code" VARCHAR
);

CREATE TABLE "product" (
	"product_cd" VARCHAR,
	"name" VARCHAR,
	"product_type_cd" VARCHAR,
	"date_offered" DATE,
	"date_retired" DATE
);

CREATE TABLE "product_type" (
	"product_type_cd" VARCHAR,
	"name" VARCHAR
);

CREATE TABLE "employee" (
	"emp_id" SMALLINT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"superior_emp_id" SMALLINT,
	"dept_id" SMALLINT,
	"title" VARCHAR,
	"assigned_branch_id" SMALLINT
);

CREATE TABLE "branch" (
	"branch_id" SMALLINT,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip" VARCHAR
);

CREATE TABLE "department" (
	"dept_id" SMALLINT,
	"name" VARCHAR
);
