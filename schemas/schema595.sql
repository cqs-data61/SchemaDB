DROP DATABASE IF EXISTS "schema595";
CREATE DATABASE "schema595";
USE "schema595";
CREATE TABLE "billingdetails" (
	"reservationid" INTEGER,
	"taxrate" DECIMAL
);

CREATE TABLE "amenity" (
	"id" INTEGER,
	"description" VARCHAR
);

CREATE TABLE "roomamenity" (
	"id" INTEGER
);

CREATE TABLE "addon" (
	"id" INTEGER,
	"description" VARCHAR,
	"cost" DECIMAL,
	"coststartdate" DATE,
	"costenddate" DATE
);

CREATE TABLE "addonforroom" (
	"id" INTEGER,
	"datepurchased" DATE
);

CREATE TABLE "guest" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"age" INTEGER
);

CREATE TABLE "promotioncode" (
	"id" INTEGER,
	"codename" VARCHAR,
	"startdate" DATE,
	"enddate" DATE,
	"percentoff" DECIMAL,
	"dollarsoff" DECIMAL
);

CREATE TABLE "roominreservation" (
	"id" INTEGER
);

CREATE TABLE "roomprice" (
	"id" INTEGER,
	"coststartdate" DATE,
	"costenddate" DATE,
	"cost" DECIMAL
);

CREATE TABLE "room" (
	"id" INTEGER,
	"roomnumber" INTEGER,
	"floor" INTEGER,
	"occupancylimit" INTEGER,
	"type" VARCHAR
);

CREATE TABLE "customer" (
	"id" INTEGER,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"phonenumber" VARCHAR,
	"email" VARCHAR
);

CREATE TABLE "reservation" (
	"id" INTEGER,
	"checkindate" DATE,
	"checkoutdate" DATE
);
