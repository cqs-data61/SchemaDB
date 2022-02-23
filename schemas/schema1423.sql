DROP DATABASE IF EXISTS "schema1423";
CREATE DATABASE "schema1423";
USE "schema1423";
CREATE TABLE "payments" (
	"id" INTEGER,
	"deliverypointorderid" INTEGER,
	"summ" NUMERIC,
	"transactionid" TEXT,
	"localts" DATETIME,
	"localid" INTEGER,
	 PRIMARY KEY ("localid")
);

CREATE TABLE "orderlines" (
	"id" INTEGER,
	"orderid" INTEGER,
	"name" TEXT,
	"amount" INTEGER,
	"price" NUMERIC,
	"factamount" NUMERIC,
	"localts" DATETIME,
	"localid" INTEGER,
	 PRIMARY KEY ("localid")
);

CREATE TABLE "orders" (
	"id" INTEGER,
	"orderid" INTEGER,
	"deliverypointid" INTEGER,
	"pickup" INTEGER,
	"timefrom" DATETIME,
	"timeto" DATETIME,
	"number" TEXT,
	"trackingnumber" TEXT,
	"personname" TEXT,
	"phone" TEXT,
	"comment" TEXT,
	"deliverytypename" TEXT,
	"floor" INTEGER,
	"flat" TEXT,
	"elevator" INTEGER,
	"paymenttypename" TEXT,
	"sellername" TEXT,
	"canceled" INTEGER,
	"finished" INTEGER,
	"cardpaymentallowed" INTEGER,
	"localts" DATETIME,
	"localid" INTEGER,
	 PRIMARY KEY ("localid")
);

CREATE TABLE "deliverypoints" (
	"id" INTEGER,
	"deliveryid" INTEGER,
	"seq" NUMERIC,
	"planarrival" DATETIME,
	"plandeparture" DATETIME,
	"factarrival" DATETIME,
	"factdeparture" DATETIME,
	"addressname" TEXT,
	"latitude" NUMERIC,
	"longitude" NUMERIC,
	"sellername" TEXT,
	"buyername" TEXT,
	"phone" TEXT,
	"paymenttypename" TEXT,
	"deliverytypename" TEXT,
	"pickupsellername" TEXT,
	"sendername" TEXT,
	"senderphone" TEXT,
	"localts" DATETIME,
	"localid" INTEGER,
	 PRIMARY KEY ("localid")
);

CREATE TABLE "deliveries" (
	"id" INTEGER,
	"active" INTEGER,
	"localts" DATETIME,
	"localid" INTEGER,
	 PRIMARY KEY ("localid")
);
