DROP DATABASE IF EXISTS "schema692";
CREATE DATABASE "schema692";
USE "schema692";
CREATE TABLE "devicemanager" (
	"id" INT,
	"position" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"level" VARCHAR,
	"salary" INT,
	"birthday" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "computer" (
	"computerid" INT,
	"price" INT,
	"performance" VARCHAR,
	"boughtdate" DATE,
	"devicemanagerid" INT,
	 PRIMARY KEY ("computerid"),
	 CONSTRAINT "fkeycon_computer_to_devicemanager" FOREIGN KEY ("devicemanagerid") REFERENCES "devicemanager" ("id")
);

CREATE TABLE "devicemanager_phone" (
	"id" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("phone","id"),
	 CONSTRAINT "fkeycon_devicemanager_phone_to_devicemanager" FOREIGN KEY ("id") REFERENCES "devicemanager" ("id")
);

CREATE TABLE "customer" (
	"customerid" INT,
	"customername" VARCHAR,
	"gender" CHAR,
	"birthday" DATE,
	 PRIMARY KEY ("customerid")
);

CREATE TABLE "customer_phone" (
	"id" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("phone","id"),
	 CONSTRAINT "fkeycon_customer_phone_to_customer" FOREIGN KEY ("id") REFERENCES "customer" ("customerid")
);

CREATE TABLE "aftereffect" (
	"id" INT,
	"position" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"level" VARCHAR,
	"salary" INT,
	"birthday" DATE,
	"home" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "aftereffect_phone" (
	"id" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("phone","id"),
	 CONSTRAINT "fkeycon_aftereffect_phone_to_aftereffect" FOREIGN KEY ("id") REFERENCES "aftereffect" ("id")
);

CREATE TABLE "photographer" (
	"id" INT,
	"position" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"level" VARCHAR,
	"salary" INT,
	"birthday" DATE,
	"home" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photographer_phone" (
	"id" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("phone","id"),
	 CONSTRAINT "fkeycon_photographer_phone_to_photographer" FOREIGN KEY ("id") REFERENCES "photographer" ("id")
);

CREATE TABLE "boss" (
	"id" INT,
	"position" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"salary" INT,
	"birthday" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "projectmanager" (
	"id" INT,
	"position" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"level" VARCHAR,
	"salary" INT,
	"birthday" DATE,
	"home" VARCHAR,
	"bossid" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_projectmanager_to_boss" FOREIGN KEY ("bossid") REFERENCES "boss" ("id")
);

CREATE TABLE "porder" (
	"orderid" INT,
	"startdate" DATE,
	"status" VARCHAR,
	"expectduration" INT,
	"price" INT,
	"place" VARCHAR,
	"ordertype" CHAR,
	"satisfaction" INT,
	"managerid" INT,
	"description" VARCHAR,
	 PRIMARY KEY ("orderid"),
	 CONSTRAINT "fkeycon_porder_to_projectmanager" FOREIGN KEY ("managerid") REFERENCES "projectmanager" ("id")
);

CREATE TABLE "photodevice" (
	"deviceid" INT,
	"devicecompany" VARCHAR,
	"price" INT,
	"devicestatus" VARCHAR,
	"boughtdate" DATE,
	"devicename" VARCHAR,
	"orderid" INT,
	"devicemanagerid" INT,
	 PRIMARY KEY ("deviceid"),
	 CONSTRAINT "fkeycon_photodevice_to_devicemanager" FOREIGN KEY ("devicemanagerid") REFERENCES "devicemanager" ("id"),
	 CONSTRAINT "fkeycon_photodevice_to_porder" FOREIGN KEY ("orderid") REFERENCES "porder" ("orderid")
);

CREATE TABLE "vehicle" (
	"vehicleid" INT,
	"size" VARCHAR,
	"price" INT,
	"orderid" INT,
	 PRIMARY KEY ("vehicleid"),
	 CONSTRAINT "fkeycon_vehicle_to_porder" FOREIGN KEY ("orderid") REFERENCES "porder" ("orderid")
);

CREATE TABLE "boughtby" (
	"orderid" INT,
	"customerid" INT,
	 PRIMARY KEY ("orderid","customerid"),
	 CONSTRAINT "fkeycon_boughtby_to_porder" FOREIGN KEY ("orderid") REFERENCES "porder" ("orderid"),
	 CONSTRAINT "fkeycon_boughtby_to_customer" FOREIGN KEY ("customerid") REFERENCES "customer" ("customerid")
);

CREATE TABLE "doeffect" (
	"orderid" INT,
	"effectid" INT,
	 PRIMARY KEY ("orderid","effectid"),
	 CONSTRAINT "fkeycon_doeffect_to_porder" FOREIGN KEY ("orderid") REFERENCES "porder" ("orderid"),
	 CONSTRAINT "fkeycon_doeffect_to_aftereffect" FOREIGN KEY ("effectid") REFERENCES "aftereffect" ("id")
);

CREATE TABLE "takephoto" (
	"orderid" INT,
	"photographerid" INT,
	 PRIMARY KEY ("orderid","photographerid"),
	 CONSTRAINT "fkeycon_takephoto_to_photographer" FOREIGN KEY ("photographerid") REFERENCES "photographer" ("id"),
	 CONSTRAINT "fkeycon_takephoto_to_porder" FOREIGN KEY ("orderid") REFERENCES "porder" ("orderid")
);

CREATE TABLE "projectmanager_phone" (
	"id" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("phone","id"),
	 CONSTRAINT "fkeycon_projectmanager_phone_to_projectmanager" FOREIGN KEY ("id") REFERENCES "projectmanager" ("id")
);

CREATE TABLE "boss_phone" (
	"id" INT,
	"phone" VARCHAR,
	 PRIMARY KEY ("phone","id"),
	 CONSTRAINT "fkeycon_boss_phone_to_boss" FOREIGN KEY ("id") REFERENCES "boss" ("id")
);

CREATE TABLE "user" (
	"id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"position" VARCHAR
);

CREATE TABLE "post" (
	"id" INTEGER,
	"author_id" INTEGER,
	"created" TIMESTAMP,
	"title" VARCHAR,
	"body" VARCHAR,
	 CONSTRAINT "fkeycon_post_to_user" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);
