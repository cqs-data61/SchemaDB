DROP DATABASE IF EXISTS "schema2501";
CREATE DATABASE "schema2501";
USE "schema2501";
CREATE TABLE "room" (
	"roomnum" INT,
	"roomname" VARCHAR,
	 PRIMARY KEY ("roomnum")
);

CREATE TABLE "employee" (
	"employeeid" INT,
	"empfirstname" VARCHAR,
	"emplastname" VARCHAR,
	 PRIMARY KEY ("employeeid")
);

CREATE TABLE "assettype" (
	"assettypeid" INT,
	"assettypedesc" VARCHAR,
	 PRIMARY KEY ("assettypeid")
);

CREATE TABLE "assets" (
	"assetid" INT,
	"roomnum" INT,
	"employeeid" INT,
	"assettypeid" INT,
	"datepurchased" DATE,
	"dateassigned" DATE,
	"brand" VARCHAR,
	"model" VARCHAR,
	"series" VARCHAR,
	"servicetag" VARCHAR,
	"serialnum" VARCHAR,
	"cost" DECIMAL,
	 PRIMARY KEY ("assetid"),
	 CONSTRAINT "FK_Chk_RoomNum" FOREIGN KEY ("roomnum") REFERENCES "room" ("roomnum"),
	 CONSTRAINT "FK_Chk_EmployeeID" FOREIGN KEY ("employeeid") REFERENCES "employee" ("employeeid"),
	 CONSTRAINT "FK_Chk_AssetTypeID" FOREIGN KEY ("assettypeid") REFERENCES "assettype" ("assettypeid")
);
