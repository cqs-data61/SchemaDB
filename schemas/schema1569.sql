DROP DATABASE IF EXISTS "schema1569";
CREATE DATABASE "schema1569";
USE "schema1569";
CREATE TABLE "company" (
	"company_id" INTEGER,
	"company_name" NVARCHAR
);

CREATE TABLE "climate_area" (
	"climate_area_id" INTEGER,
	"area_name" NVARCHAR
);

CREATE TABLE "project" (
	"project_id" INTEGER,
	"outdoor_spot_id" INTEGER,
	"location_id" INTEGER,
	"construction_company_id" INTEGER,
	"tech_support_company_id" INTEGER,
	"project_company_id" INTEGER,
	"project_name" NVARCHAR,
	"floor" INTEGER,
	"latitude" FLOAT,
	"longitude" FLOAT,
	"district" NVARCHAR,
	"area" FLOAT,
	"demo_area" FLOAT,
	"building_type" NVARCHAR,
	"building_height" FLOAT,
	"started_time" DATETIME,
	"finished_time" DATETIME,
	"record_started_from" DATETIME,
	"description" NVARCHAR,
	"foreign" KEY,
	"foreign" KEY,
	"foreign" KEY
);

CREATE TABLE "spot" (
	"spot_id" INTEGER,
	"project_id" INTEGER,
	"spot_name" NVARCHAR,
	"spot_type" NVARCHAR,
	"image" BLOB,
	 CONSTRAINT "fkeycon_spot_to_project" FOREIGN KEY ("project_id") REFERENCES "project" ("project_id")
);

CREATE TABLE "device" (
	"device_id" INTEGER,
	"device_name" NVARCHAR,
	"device_type" NVARCHAR,
	"online" BOOLEAN,
	"spot_id" INTEGER,
	"create_time" DATETIME,
	"modify_time" DATETIME,
	 CONSTRAINT "fkeycon_device_to_spot" FOREIGN KEY ("spot_id") REFERENCES "spot" ("spot_id")
);

CREATE TABLE "spot_record" (
	"spot_record_id" INTEGER,
	"spot_record_time" DATETIME,
	"device_id" INTEGER,
	"temperature" FLOAT,
	"humidity" FLOAT,
	"window_opened" BOOLEAN,
	"ac_power" FLOAT,
	"pm25" INTEGER,
	"co2" INTEGER,
	 CONSTRAINT "fkeycon_spot_record_to_device" FOREIGN KEY ("device_id") REFERENCES "device" ("device_id")
);

CREATE TABLE "project_detail" (
	"project_id" INTEGER,
	"image" BLOB,
	"image_description" NVARCHAR,
	 CONSTRAINT "fkeycon_project_detail_to_project" FOREIGN KEY ("project_id") REFERENCES "project" ("project_id")
);

CREATE TABLE "location" (
	"location_id" INTEGER,
	"climate_area_id" INTEGER,
	"province" NVARCHAR,
	"city" NVARCHAR
);

CREATE TABLE "outdoor_spot" (
	"outdoor_spot_id" INTEGER,
	"outdoor_spot_name" NVARCHAR
);

CREATE TABLE "outdoor_record" (
	"outdoor_spot_id" INTEGER,
	"outdoor_record_time" DATETIME,
	"outdoor_temperature" FLOAT,
	"outdoor_humidity" FLOAT,
	"wind_direction" FLOAT,
	"wind_speed" FLOAT,
	"wind_chill" FLOAT,
	"solar_radiation" FLOAT,
	 CONSTRAINT "fkeycon_outdoor_record_to_outdoor_spot" FOREIGN KEY ("outdoor_spot_id") REFERENCES "outdoor_spot" ("outdoor_spot_id")
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"user_name" NVARCHAR,
	"last_seen" DATETIME,
	"passwd_hash" VARCHAR,
	"permission" INTEGER
);
