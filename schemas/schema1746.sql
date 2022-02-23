DROP DATABASE IF EXISTS "schema1746";
CREATE DATABASE "schema1746";
USE "schema1746";
CREATE TABLE "t_exemption_reason" (
	"exemption_reason_id" VARCHAR,
	"exemption_reason" VARCHAR,
	 PRIMARY KEY ("exemption_reason_id")
);

CREATE TABLE "t_ccaz_vehicle_type" (
	"ccaz_vehicle_type_id" VARCHAR,
	"ccaz_vehicle_type" VARCHAR,
	 PRIMARY KEY ("ccaz_vehicle_type_id")
);

CREATE TABLE "t_fuel_type" (
	"fuel_type_id" VARCHAR,
	"fuel_type" VARCHAR,
	 PRIMARY KEY ("fuel_type_id")
);

CREATE TABLE "t_type_approval" (
	"type_approval_id" VARCHAR,
	"type_approval" VARCHAR,
	 PRIMARY KEY ("type_approval_id")
);

CREATE TABLE "t_vehicle_entrant_reporting" (
	"vehicle_entrant_reporting_id" VARCHAR,
	"vrn_hash" VARCHAR,
	"hour" TIMESTAMP,
	"clean_air_zone_id" VARCHAR,
	"type_approval_id" VARCHAR,
	"fuel_type_id" VARCHAR,
	"charge_validity_code" VARCHAR,
	"ccaz_vehicle_type_id" VARCHAR,
	"make" VARCHAR,
	"model" VARCHAR,
	"colour" VARCHAR,
	 PRIMARY KEY ("vehicle_entrant_reporting_id"),
	 CONSTRAINT "fk_ccaz_vehicle_type_id" FOREIGN KEY ("ccaz_vehicle_type_id") REFERENCES "t_ccaz_vehicle_type" ("ccaz_vehicle_type_id"),
	 CONSTRAINT "fk_fuel_type_id" FOREIGN KEY ("fuel_type_id") REFERENCES "t_fuel_type" ("fuel_type_id"),
	 CONSTRAINT "fk_type_approval_id" FOREIGN KEY ("type_approval_id") REFERENCES "t_type_approval" ("type_approval_id")
);

CREATE TABLE "t_entrant_exemption" (
	"entrant_exemption_id" VARCHAR,
	"vehicle_entrant_reporting_id" VARCHAR,
	"exemption_reason_id" VARCHAR,
	 PRIMARY KEY ("entrant_exemption_id"),
	 CONSTRAINT "fk_exemption_reason_id" FOREIGN KEY ("exemption_reason_id") REFERENCES "t_exemption_reason" ("exemption_reason_id"),
	 CONSTRAINT "fk_vehicle_entrant_reporting_id" FOREIGN KEY ("vehicle_entrant_reporting_id") REFERENCES "t_vehicle_entrant_reporting" ("vehicle_entrant_reporting_id")
);

CREATE TABLE "t_entrant_taxi_phv" (
	"entrant_taxi_phv_id" VARCHAR,
	"vehicle_entrant_reporting_id" VARCHAR,
	"description" VARCHAR,
	"licensing_authority" VARCHAR,
	 PRIMARY KEY ("entrant_taxi_phv_id"),
	 CONSTRAINT "fk_vehicle_entrant_reporting_id" FOREIGN KEY ("vehicle_entrant_reporting_id") REFERENCES "t_vehicle_entrant_reporting" ("vehicle_entrant_reporting_id")
);
