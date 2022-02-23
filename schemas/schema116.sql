DROP DATABASE IF EXISTS "schema116";
CREATE DATABASE "schema116";
USE "schema116";
CREATE TABLE "messages" (
	"id" SERIAL,
	"from_user" INTEGER,
	"to_user" INTEGER,
	"project_id" INTEGER,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tasks" (
	"id" SERIAL,
	"title" TEXT,
	"status" INTEGER,
	"project_id" INTEGER,
	"date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projects" (
	"id" SERIAL,
	"title" TEXT,
	"description" TEXT,
	"provider" INTEGER,
	"client" INTEGER,
	"date" TIMESTAMP,
	"amount" INTEGER,
	"payed" BOOLEAN,
	"status" INTEGER,
	"display" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transactions" (
	"id" SERIAL,
	"from_acc" INTEGER,
	"to_acc" INTEGER,
	"amount" INTEGER,
	"date" TIMESTAMP,
	"status" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "statuses" (
	"id" SERIAL,
	"status" TEXT,
	"domain" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "domains" (
	"id" SERIAL,
	"domain" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "financial_accounts" (
	"id" SERIAL,
	"user_id" INTEGER,
	"amount" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"first_name" TEXT,
	"surname" TEXT,
	"username" TEXT,
	"password" TEXT,
	 PRIMARY KEY ("id")
);
