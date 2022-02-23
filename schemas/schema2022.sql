DROP DATABASE IF EXISTS "schema2022";
CREATE DATABASE "schema2022";
USE "schema2022";
CREATE TABLE "sorder" (
	"orderid" INTEGER,
	"date" TEXT,
	"periodicdelivery" BOOLEAN,
	"needsdelivery" BOOLEAN,
	"weight" INTEGER,
	"isdelivered" INTEGER,
	"locationid" INTEGER,
	 PRIMARY KEY ("orderid")
);

CREATE TABLE "shiftdemands" (
	"date" DATE,
	"shifttype" TEXT,
	"cashieramount" INTEGER,
	"storekeeperamount" INTEGER,
	"arrangeramount" INTEGER,
	"guardamount" INTEGER,
	"assistantamount" INTEGER,
	"deliveryrequired" INTEGER,
	"branchid" INTEGER,
	 PRIMARY KEY ("date","shifttype","branchid")
);

CREATE TABLE "locations" (
	"id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"tel_number" VARCHAR,
	"contact_name" VARCHAR,
	"shiiping_erea" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"supplier" VARCHAR,
	"target_location" INT,
	"total_weight" DOUBLE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_orders_to_locations" FOREIGN KEY ("target_location") REFERENCES "locations" ("id")
);

CREATE TABLE "trucks" (
	"id" VARCHAR,
	"model" VARCHAR,
	"neto_weight" DOUBLE,
	"max_weight" DOUBLE,
	"isused" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "availableworkingdays" (
	"id" TEXT,
	"day" TEXT,
	"shift_type" TEXT,
	"isavailable" INTEGER,
	 PRIMARY KEY ("id","day","shift_type")
);

CREATE TABLE "workers" (
	"id" TEXT,
	"branchid" INTEGER,
	"first_name" TEXT,
	"last_name" TEXT,
	"start_working_day" DATE,
	"isworking" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drivers" (
	"id" TEXT,
	"license_type" VARCHAR,
	"expiration_date" DATE,
	"status" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_drivers_to_workers" FOREIGN KEY ("id") REFERENCES "workers" ("id")
);

CREATE TABLE "shifts" (
	"date" DATE,
	"shifttype" TEXT,
	"branchid" INTEGER,
	"shiftmanagerid" TEXT,
	"driverid" TEXT,
	 PRIMARY KEY ("date","shifttype","branchid"),
	 CONSTRAINT "fkeycon_shifts_to_drivers" FOREIGN KEY ("driverid") REFERENCES "drivers" ("id"),
	 CONSTRAINT "fkeycon_shifts_to_shiftdemands" FOREIGN KEY ("date","shifttype","branchid") REFERENCES "shiftdemands" ("date","shifttype","branchid"),
	 CONSTRAINT "fkeycon_shifts_to_workers" FOREIGN KEY ("shiftmanagerid") REFERENCES "workers" ("id")
);

CREATE TABLE "deliveries" (
	"id" VARCHAR,
	"delivery_date" DATE,
	"deliver_time" TIME,
	"driver_id" TEXT,
	"source_location" INT,
	"weight" DOUBLE,
	"truck_id" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_deliveries_to_drivers" FOREIGN KEY ("driver_id") REFERENCES "drivers" ("id"),
	 CONSTRAINT "fkeycon_deliveries_to_locations" FOREIGN KEY ("source_location") REFERENCES "locations" ("id"),
	 CONSTRAINT "fkeycon_deliveries_to_trucks" FOREIGN KEY ("truck_id") REFERENCES "trucks" ("id")
);

CREATE TABLE "locationsfordelivery" (
	"delivery_id" VARCHAR,
	"location_id" INT,
	 PRIMARY KEY ("delivery_id","location_id"),
	 CONSTRAINT "fkeycon_locationsfordelivery_to_deliveries" FOREIGN KEY ("delivery_id") REFERENCES "deliveries" ("id"),
	 CONSTRAINT "fkeycon_locationsfordelivery_to_locations" FOREIGN KEY ("location_id") REFERENCES "locations" ("id")
);

CREATE TABLE "ordersfordelivery" (
	"delivery_id" VARCHAR,
	"order_id" INT,
	 PRIMARY KEY ("delivery_id","order_id"),
	 CONSTRAINT "fkeycon_ordersfordelivery_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("id"),
	 CONSTRAINT "fkeycon_ordersfordelivery_to_deliveries" FOREIGN KEY ("delivery_id") REFERENCES "deliveries" ("id")
);

CREATE TABLE "workersconstraints" (
	"id" INT,
	"dayconstraint" VARCHAR,
	"kindconstraint" VARCHAR,
	 PRIMARY KEY ("id","dayconstraint","kindconstraint"),
	 CONSTRAINT "fkeycon_workersconstraints_to_workers" FOREIGN KEY ("id") REFERENCES "workers" ("id")
);

CREATE TABLE "hiringconditions" (
	"id" TEXT,
	"salaryperhour" REAL,
	"fund" TEXT,
	"vacationdays" INTEGER,
	"sickleavepermonth" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_hiringconditions_to_workers" FOREIGN KEY ("id") REFERENCES "workers" ("id")
);

CREATE TABLE "qualifications" (
	"id" TEXT,
	"qualification" TEXT,
	 PRIMARY KEY ("id","qualification"),
	 CONSTRAINT "fkeycon_qualifications_to_workers" FOREIGN KEY ("id") REFERENCES "workers" ("id")
);

CREATE TABLE "workersatshift" (
	"date" DATE,
	"shifttype" TEXT,
	"branchid" INTEGER,
	"workerid" TEXT,
	"workas" TEXT,
	 PRIMARY KEY ("date","shifttype","branchid","workerid","workas"),
	 CONSTRAINT "fkeycon_workersatshift_to_qualifications" FOREIGN KEY ("workerid","workas") REFERENCES "qualifications" ("id","qualification"),
	 CONSTRAINT "fkeycon_workersatshift_to_shifts" FOREIGN KEY ("date","shifttype","branchid") REFERENCES "shifts" ("date","shifttype","branchid")
);

CREATE TABLE "bankaccounts" (
	"id" TEXT,
	"bank_name" TEXT,
	"branch" TEXT,
	"bankaccountid" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bankaccounts_to_workers" FOREIGN KEY ("id") REFERENCES "workers" ("id")
);

CREATE TABLE "branches" (
	"branchid" INTEGER,
	"branchmanagerid" TEXT,
	"hrd_id" TEXT,
	"logisticsmanagerid" TEXT,
	 PRIMARY KEY ("branchid"),
	 CONSTRAINT "fkeycon_branches_to_workers" FOREIGN KEY ("hrd_id") REFERENCES "workers" ("id")
);

CREATE TABLE "discount" (
	"id" INTEGER,
	"name" TEXT,
	"discpercentage" REAL,
	"startdate" TEXT,
	"enddate" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INTEGER,
	"name" TEXT,
	"storelocation" TEXT,
	"storagelocation" TEXT,
	"manufacturer" TEXT,
	"sellprice" REAL,
	"minamount" INTEGER,
	"categoryid" INTEGER,
	"selldiscountid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_product_to_discount" FOREIGN KEY ("selldiscountid") REFERENCES "discount" ("id")
);

CREATE TABLE "itemsfororder" (
	"order_id" INT,
	"item" INTEGER,
	"quantity" INT,
	 PRIMARY KEY ("order_id","item"),
	 CONSTRAINT "fkeycon_itemsfororder_to_product" FOREIGN KEY ("item") REFERENCES "product" ("id"),
	 CONSTRAINT "fkeycon_itemsfororder_to_orders" FOREIGN KEY ("order_id") REFERENCES "orders" ("id")
);

CREATE TABLE "itemgroup" (
	"id" INTEGER,
	"pid" INTEGER,
	"location" INTEGER,
	"quantity" INTEGER,
	"priceboughtat" REAL,
	"expiration" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "report" (
	"id" INTEGER,
	"creationdate" TEXT,
	"reporttag" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INTEGER,
	"name" TEXT,
	"superid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_category_to_category" FOREIGN KEY ("superid") REFERENCES "category" ("id")
);

CREATE TABLE "specificproduct" (
	"id" INTEGER,
	"expirationdate" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inventoryitem" (
	"name" TEXT,
	"manufacturer" TEXT,
	"location" INTEGER,
	"quantity" INTEGER,
	 PRIMARY KEY ("name","location")
);

CREATE TABLE "supplier" (
	"companynumber" INTEGER,
	"name" TEXT,
	"paymentmethod" TEXT,
	"bankaccount" TEXT,
	 PRIMARY KEY ("companynumber")
);

CREATE TABLE "supplieritem" (
	"productid" INTEGER,
	"companynumber" INTEGER,
	"name" TEXT,
	"quantity" TEXT,
	"price" INTEGER,
	"suppliercn" INTEGER,
	 PRIMARY KEY ("productid","companynumber"),
	 CONSTRAINT "fkeycon_supplieritem_to_supplier" FOREIGN KEY ("companynumber") REFERENCES "supplier" ("companynumber")
);

CREATE TABLE "orderitems" (
	"productid" INTEGER,
	"companynumber" INTEGER,
	"orderid" INTEGER,
	"price" INTEGER,
	"quantity" INTEGER,
	 PRIMARY KEY ("productid","companynumber","orderid"),
	 CONSTRAINT "fkeycon_orderitems_to_supplier" FOREIGN KEY ("companynumber") REFERENCES "supplier" ("companynumber")
);

CREATE TABLE "quantitywriter" (
	"id" INTEGER,
	"minpricediscount" INTEGER,
	"regularcostumerdiscount" INTEGER,
	"companynumber" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_quantitywriter_to_supplier" FOREIGN KEY ("companynumber") REFERENCES "supplier" ("companynumber")
);

CREATE TABLE "stepdiscount" (
	"id" INTEGER,
	"stepprice" INTEGER,
	"precentage" INTEGER,
	"qwid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_stepdiscount_to_quantitywriter" FOREIGN KEY ("qwid") REFERENCES "quantitywriter" ("id")
);

CREATE TABLE "contact" (
	"contactname" TEXT,
	"email" TEXT,
	"companynumber" INTEGER,
	 PRIMARY KEY ("contactname","email","companynumber"),
	 CONSTRAINT "fkeycon_contact_to_supplier" FOREIGN KEY ("companynumber") REFERENCES "supplier" ("companynumber")
);

CREATE TABLE "supplydays" (
	"companynumber" INTEGER,
	"weekday" TEXT,
	 PRIMARY KEY ("companynumber","weekday")
);
