DROP DATABASE IF EXISTS "schema1614";
CREATE DATABASE "schema1614";
USE "schema1614";
CREATE TABLE "users" (
	"id" SERIAL,
	"name" VARCHAR,
	"email" VARCHAR,
	"username" VARCHAR,
	"userrole" VARCHAR,
	"password" VARCHAR,
	"register_date" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "posts" (
	"id" SERIAL,
	"created" TIMESTAMP,
	"title" TEXT,
	"content" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "trackingcontents" (
	"trackeditem" SERIAL,
	"trackingid" VARCHAR,
	"invid" INTEGER,
	"asinid" VARCHAR,
	"quantity" INTEGER,
	"store" VARCHAR,
	 PRIMARY KEY ("trackeditem")
);

CREATE TABLE "tracking" (
	"id" SERIAL,
	"trackingid" VARCHAR,
	"invid" INTEGER,
	"received" VARCHAR,
	"ordernumber" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"invid" SERIAL,
	"asinid" VARCHAR,
	"datepurchased" TIMESTAMP,
	"buyprice" NUMERIC,
	"sellprice" NUMERIC,
	"store" VARCHAR,
	"supplier" VARCHAR,
	"quantity" INTEGER,
	"ordernumber" VARCHAR,
	"fullfillment" VARCHAR,
	"buyer" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("invid")
);

CREATE TABLE "bin" (
	"contentid" SERIAL,
	"locationid" INTEGER,
	"asinid" VARCHAR,
	"quantity" INTEGER,
	"datereceived" TIMESTAMP,
	"expirationdate" VARCHAR,
	"trackingid" VARCHAR,
	"store" VARCHAR,
	"tobebinned" INTEGER,
	"tobepicked" INTEGER,
	"pickquantity" INTEGER,
	"damaged" INTEGER,
	"missing" INTEGER,
	"username" VARCHAR,
	 PRIMARY KEY ("contentid")
);

CREATE TABLE "physicallocation" (
	"locationid" SERIAL,
	"rackid" INTEGER,
	"shelfid" INTEGER,
	 PRIMARY KEY ("locationid")
);

CREATE TABLE "product" (
	"asinid" VARCHAR,
	"picture" VARCHAR,
	"hazardous" VARCHAR,
	"oversized" VARCHAR,
	"description" VARCHAR,
	"imglink" VARCHAR,
	 PRIMARY KEY ("asinid")
);
