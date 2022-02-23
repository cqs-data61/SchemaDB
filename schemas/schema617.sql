DROP DATABASE IF EXISTS "schema617";
CREATE DATABASE "schema617";
USE "schema617";
CREATE TABLE "device" (
	"device_id" VARCHAR,
	"mobile_no" VARCHAR,
	"imei" VARCHAR,
	"plate_no" CHAR,
	"state" TINYINT,
	"register_time" DATETIME,
	"install_time" DATETIME,
	"protocol_version" TINYINT,
	"software_version" VARCHAR,
	"firmware_version" VARCHAR,
	"hardware_version" VARCHAR,
	"device_model" VARCHAR,
	"maker_id" VARCHAR,
	"city_id" SMALLINT,
	"province_id" TINYINT,
	"bind" TINYINT,
	"deleted" TINYINT,
	"creator" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("device_id")
);

CREATE TABLE "device_status" (
	"online" TINYINT,
	"device_time" DATETIME,
	"device_id" VARCHAR,
	"mobile_no" VARCHAR,
	"plate_no" CHAR,
	"warn_bit" INT,
	"status_bit" INT,
	"longitude" INT,
	"latitude" INT,
	"altitude" SMALLINT,
	"speed" SMALLINT,
	"direction" SMALLINT,
	"update_time" DATETIME,
	"create_time" DATETIME,
	 PRIMARY KEY ("device_id")
);

CREATE TABLE "location" (
	"device_time" DATETIME,
	"device_id" VARCHAR,
	"mobile_no" VARCHAR,
	"plate_no" CHAR,
	"warn_bit" INT,
	"status_bit" INT,
	"longitude" INT,
	"latitude" INT,
	"altitude" SMALLINT,
	"speed" SMALLINT,
	"direction" SMALLINT,
	"alarm_type" TINYINT,
	"create_time" DATETIME,
	"device_date" DATE,
	 PRIMARY KEY ("device_id","device_time")
);
