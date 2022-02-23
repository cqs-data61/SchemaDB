DROP DATABASE IF EXISTS "schema1370";
CREATE DATABASE "schema1370";
USE "schema1370";
CREATE TABLE "usermanufacturers" (
	"user_id" INTEGER,
	"manufacturer_id" INTEGER
);

CREATE TABLE "userreservations" (
	"user_id" INTEGER,
	"reservation_id" INTEGER
);

CREATE TABLE "userproductions" (
	"user_id" INTEGER,
	"production_id" INTEGER
);

CREATE TABLE "userequipment" (
	"user_id" INTEGER,
	"equipment_id" INTEGER
);

CREATE TABLE "userinventory" (
	"user_id" INTEGER,
	"inventory_id" INTEGER
);

CREATE TABLE "reservations" (
	"id" SERIAL,
	"production_id" INTEGER,
	"inventory_id" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inventory" (
	"id" SERIAL,
	"model_id" INTEGER,
	"serialnum" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "equipment" (
	"id" SERIAL,
	"model" TEXT,
	"manufacturer_id" INTEGER,
	"visible" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "productions" (
	"id" SERIAL,
	"name" TEXT,
	"starting" DATE,
	"ending" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "manufacturers" (
	"id" SERIAL,
	"name" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" SERIAL,
	"username" TEXT,
	"password" TEXT,
	"isadmin" BOOLEAN,
	 PRIMARY KEY ("id")
);
