DROP DATABASE IF EXISTS "schema552";
CREATE DATABASE "schema552";
USE "schema552";
CREATE TABLE "orthomosaics" (
	"id" BIGINT,
	"directory_location" TEXT,
	"image_extension" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGINT,
	"email" VARCHAR,
	"password" VARCHAR,
	"role" TINYINT,
	"force_reset" TINYINT,
	"api_key" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "flights" (
	"id" BIGINT,
	"user_id" BIGINT,
	"flight_name" TEXT,
	"manual_notes" VARCHAR,
	"address" VARCHAR,
	"field_name" VARCHAR,
	"crop_name" VARCHAR,
	"average_latitude" DECIMAL,
	"average_longitude" DECIMAL,
	"average_altitude" DECIMAL,
	"flight_start_time" DATETIME,
	"flight_end_time" DATETIME,
	"hardware_make" VARCHAR,
	"hardware_model" VARCHAR,
	"privacy" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_flights_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "shared_flights" (
	"user_id" BIGINT,
	"flight_id" BIGINT,
	 CONSTRAINT "fkeycon_shared_flights_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_shared_flights_to_flights" FOREIGN KEY ("flight_id") REFERENCES "flights" ("id")
);

CREATE TABLE "images" (
	"id" BIGINT,
	"user_id" BIGINT,
	"flight_id" BIGINT,
	"directory_location" TEXT,
	"image_extension" VARCHAR,
	"datetime" DATETIME,
	"latitude" DECIMAL,
	"longitude" DECIMAL,
	"altitude" DECIMAL,
	"image_width" INT,
	"image_height" INT,
	"exposure_time" VARCHAR,
	"f_number" VARCHAR,
	"iso_speed" INT,
	"metering_mode" VARCHAR,
	"focal_length" VARCHAR,
	"light_source" VARCHAR,
	"exposure_mode" VARCHAR,
	"white_balance" VARCHAR,
	"gain_control" VARCHAR,
	"contrast" VARCHAR,
	"saturation" VARCHAR,
	"sharpness" VARCHAR,
	"image_compression" VARCHAR,
	"exif_version" VARCHAR,
	"software_version" VARCHAR,
	"hardware_make" VARCHAR,
	"hardware_model" VARCHAR,
	"hardware_serial_number" VARCHAR,
	"md5_hash" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_images_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_images_to_flights" FOREIGN KEY ("flight_id") REFERENCES "flights" ("id")
);
