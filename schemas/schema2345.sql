DROP DATABASE IF EXISTS "schema2345";
CREATE DATABASE "schema2345";
USE "schema2345";
CREATE TABLE "services" (
	"id" SERIAL,
	"device_id" INTEGER,
	"service_date" DATE,
	"description" TEXT,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rents" (
	"id" SERIAL,
	"customer_id" INTEGER,
	"device_id" INTEGER,
	"start_day" DATE,
	"end_day" DATE,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" SERIAL,
	"name" TEXT,
	"email" TEXT,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "devices" (
	"id" SERIAL,
	"device_type" TEXT,
	"model" TEXT,
	"description" TEXT,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"admin" BOOLEAN,
	"visible" INTEGER,
	 PRIMARY KEY ("id")
);
