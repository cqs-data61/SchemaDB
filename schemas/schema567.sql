DROP DATABASE IF EXISTS "schema567";
CREATE DATABASE "schema567";
USE "schema567";
CREATE TABLE "population" (
	"california_county" VARCHAR,
	"total_population" INT,
	"zip" INT,
	"longitude" INT,
	"latitude" INT,
	 PRIMARY KEY ("california_county")
);

CREATE TABLE "health_risk" (
	"california_county" VARCHAR,
	"total_population" INT,
	"zip" INT,
	"asthma" INT,
	 PRIMARY KEY ("california_county"),
	 CONSTRAINT "fkeycon_health_risk_to_population" FOREIGN KEY ("zip") REFERENCES "population" ("zip")
);

CREATE TABLE "socioeconomic" (
	"total_population" INT,
	"zip" INT,
	"educational_attainment" INT,
	"housing_burdened_low_income_households" INT,
	"linguistic_isolation" INT,
	"poverty" INT,
	"unemployment" INT,
	 PRIMARY KEY ("zip"),
	 CONSTRAINT "fkeycon_socioeconomic_to_population" FOREIGN KEY ("zip") REFERENCES "population" ("zip")
);

CREATE TABLE "pollution_exposure" (
	"california_county" VARCHAR,
	"zip" INT,
	"ozone_concentrations" INT,
	"pm2_5_concentrations" INT,
	"diesel_pm_emissions" INT,
	"drinking_water_contaminants" INT,
	"pesticides_use" INT,
	"toxic_release_from_facilities" INT,
	"traffic_density" INT,
	 PRIMARY KEY ("california_county"),
	 CONSTRAINT "fkeycon_pollution_exposure_to_population" FOREIGN KEY ("zip") REFERENCES "population" ("zip")
);
