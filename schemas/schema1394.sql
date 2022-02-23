DROP DATABASE IF EXISTS "schema1394";
CREATE DATABASE "schema1394";
USE "schema1394";
CREATE TABLE "transportingunits" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "labors" (
	"id" INT,
	"name" VARCHAR,
	"dateofbirth" DATE,
	"phonenumber" VARCHAR,
	"roleid" INT,
	"transportingunitid" INT,
	"password" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "transportingUnits___fk" FOREIGN KEY ("transportingunitid") REFERENCES "transportingunits" ("id"),
	 CONSTRAINT "role___fk" FOREIGN KEY ("roleid") REFERENCES "roles" ("id")
);

CREATE TABLE "warehouses" (
	"id" INT,
	"address" VARCHAR,
	"managerid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "manager___fk" FOREIGN KEY ("managerid") REFERENCES "labors" ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"customername" VARCHAR,
	"address" VARCHAR,
	"phonenumber" VARCHAR,
	"transportingunitid" INT,
	"transporterid" INT,
	"notes" VARCHAR,
	"createddate" TIMESTAMP,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "transporters___fk" FOREIGN KEY ("transporterid") REFERENCES "labors" ("id"),
	 CONSTRAINT "orders_transportingUnits___fk" FOREIGN KEY ("transportingunitid") REFERENCES "transportingunits" ("id")
);

CREATE TABLE "returns" (
	"id" INT,
	"orderid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "returns_order_id_fk" FOREIGN KEY ("orderid") REFERENCES "orders" ("id")
);

CREATE TABLE "orderdeliverydetails" (
	"orderid" INT,
	"updateddate" TIMESTAMP,
	"notes" VARCHAR,
	 PRIMARY KEY ("updateddate","orderid"),
	 CONSTRAINT "orderDeliveryDetails_orders_id_fk" FOREIGN KEY ("orderid") REFERENCES "orders" ("id")
);

CREATE TABLE "inventories" (
	"id" INT,
	"name" VARCHAR,
	"price" DOUBLE,
	"source" VARCHAR,
	"thumbnailurl" VARCHAR,
	"tags" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "warehouseitems" (
	"inventoryid" INT,
	"warehouseid" INT,
	"quantity" INT,
	 PRIMARY KEY ("warehouseid","inventoryid"),
	 CONSTRAINT "warehouseItems_warehouses_id_fk" FOREIGN KEY ("warehouseid") REFERENCES "warehouses" ("id"),
	 CONSTRAINT "warehouseItems_inventories_id_fk" FOREIGN KEY ("inventoryid") REFERENCES "inventories" ("id")
);

CREATE TABLE "orderdetails" (
	"orderid" INT,
	"itemid" INT,
	"price" DOUBLE,
	"quantity" INT,
	 PRIMARY KEY ("orderid","itemid"),
	 CONSTRAINT "orderDetails_orders_id_fk" FOREIGN KEY ("orderid") REFERENCES "orders" ("id"),
	 CONSTRAINT "orderDetails_inventories_id_fk" FOREIGN KEY ("itemid") REFERENCES "inventories" ("id")
);
