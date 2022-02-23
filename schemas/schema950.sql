DROP DATABASE IF EXISTS "schema950";
CREATE DATABASE "schema950";
USE "schema950";
CREATE TABLE "transaction" (
	"id" INTEGER,
	"chequenumber" INTEGER,
	"date" TEXT,
	"accountid" INTEGER,
	"cleared" TEXT,
	"amount" REAL,
	"categorysubcategoryid" INTEGER,
	"memo" TEXT,
	"payeeid" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "account" (
	"id" INTEGER,
	"name" TEXT,
	"accounttypeid" INTEGER,
	"status" TEXT,
	"openingbalance" REAL,
	"balance" REAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "accounttype" (
	"id" INTEGER,
	"name" TEXT,
	"description" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "payee" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "categorysubcategory" (
	"categoryid" INTEGER,
	"subcategoryid" INTEGER,
	"id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subcategory" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"name" TEXT,
	 PRIMARY KEY ("id")
);
