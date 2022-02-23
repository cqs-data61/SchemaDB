DROP DATABASE IF EXISTS "schema2461";
CREATE DATABASE "schema2461";
USE "schema2461";
CREATE TABLE "tracking_device" (
	"device_id" INT,
	"device_type" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("device_id")
);

CREATE TABLE "current_location" (
	"driver_id" INT,
	"mobileno" INT,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"speed" INT,
	"device_id" INT,
	"additionalinfo" VARCHAR,
	"eventtime" TIMESTAMP,
	 PRIMARY KEY ("driver_id","mobileno"),
	 CONSTRAINT "fk_driver_1" FOREIGN KEY ("device_id") REFERENCES "tracking_device" ("device_id")
);

CREATE TABLE "tracking_detail" (
	"tracking_id" INT,
	"device_id" INT,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"speed" INT,
	"driver_id" INT,
	"additionalinfo" VARCHAR,
	"eventtime" TIMESTAMP,
	 PRIMARY KEY ("tracking_id"),
	 CONSTRAINT "fk_tracking_deviceId" FOREIGN KEY ("device_id") REFERENCES "tracking_device" ("device_id")
);
