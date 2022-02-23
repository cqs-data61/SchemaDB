DROP DATABASE IF EXISTS "schema752";
CREATE DATABASE "schema752";
USE "schema752";
CREATE TABLE "shop" (
	"shopid" INT,
	"shop_name" TEXT,
	"shop_email" TEXT,
	"shop_address" TEXT,
	 PRIMARY KEY ("shopid")
);

CREATE TABLE "user" (
	"id" TEXT,
	"name" TEXT,
	"email" TEXT,
	"profile_pic" TEXT,
	"address" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"orderid" INT,
	"file" BLOB,
	"shopid" INT,
	"status" TEXT,
	"userid" TEXT,
	 PRIMARY KEY ("orderid"),
	 CONSTRAINT "fkeycon_orders_to_shop" FOREIGN KEY ("shopid") REFERENCES "shop" ("shopid"),
	 CONSTRAINT "fkeycon_orders_to_user" FOREIGN KEY ("userid") REFERENCES "user" ("id")
);
