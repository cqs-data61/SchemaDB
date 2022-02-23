DROP DATABASE IF EXISTS "schema1149";
CREATE DATABASE "schema1149";
USE "schema1149";
CREATE TABLE "state" (
	"id" SERIAL,
	"name" TEXT,
	"popularity" INT,
	"color" TEXT,
	"treasury" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "relation" (
	"id" SERIAL,
	"name" TEXT,
	"fractions_connectivity" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "resource" (
	"id" SERIAL,
	"name" TEXT,
	"population_growth_multiplier" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "desease" (
	"id" SERIAL,
	"name" TEXT,
	"incidence_rate" DOUBLE PRECISION,
	"mortality" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "income_affectable_mode" (
	"id" SERIAL,
	"village_tax_multiplier" DOUBLE PRECISION,
	"city_tax_multiplier" DOUBLE PRECISION,
	"food_multiplier" DOUBLE PRECISION,
	"trade_multiplier" DOUBLE PRECISION,
	"handicraft_multiplier" DOUBLE PRECISION,
	"food_marketing_multiplier" DOUBLE PRECISION,
	"trade_marketing_multiplier" DOUBLE PRECISION,
	"handicraft_marketing_multiplier" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "climat" (
	"id" SERIAL,
	"name" TEXT,
	"income_mods_id" INTEGER,
	"temperature_degree" INT,
	"wind_degree" INT,
	"humidity_degree" INT,
	"atmospheric_pressure_degree" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_190" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "season" (
	"id" SERIAL,
	"name" TEXT,
	"income_mods_id" INTEGER,
	"temperature_mod" DOUBLE PRECISION,
	"wind_mod" DOUBLE PRECISION,
	"humidity_mod" DOUBLE PRECISION,
	"atmospheric_pressure_mod" DOUBLE PRECISION,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_193" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "waterspace" (
	"id" SERIAL,
	"climat_id" INTEGER,
	"season_id" INTEGER,
	"depth" INT,
	"width" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_296" FOREIGN KEY ("climat_id") REFERENCES "climat" ("id"),
	 CONSTRAINT "fk_290" FOREIGN KEY ("season_id") REFERENCES "season" ("id")
);

CREATE TABLE "neighborhood_of_waterspaces" (
	"first_waterspace_id" INTEGER,
	"second_waterspace_id" INTEGER,
	 PRIMARY KEY ("first_waterspace_id","second_waterspace_id"),
	 CONSTRAINT "fk_279" FOREIGN KEY ("second_waterspace_id") REFERENCES "waterspace" ("id"),
	 CONSTRAINT "fk_276" FOREIGN KEY ("first_waterspace_id") REFERENCES "waterspace" ("id")
);

CREATE TABLE "religion" (
	"id" SERIAL,
	"income_mods_id" INTEGER,
	"name" TEXT,
	"tolerance" DOUBLE PRECISION,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_217" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "culture" (
	"id" SERIAL,
	"income_mods_id" INTEGER,
	"name" TEXT,
	"tolerance" DOUBLE PRECISION,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_214" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "landscape" (
	"id" SERIAL,
	"name" TEXT,
	"income_mods_id" INTEGER,
	"mountainousness" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_196" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "legal_system" (
	"id" SERIAL,
	"group_name" TEXT,
	"is_tax_fixed" BOOLEAN,
	"tax_above_multiplier" DOUBLE PRECISION,
	"autonomy_factor" DOUBLE PRECISION,
	"income_mods_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_187" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "specialization" (
	"id" SERIAL,
	"name" TEXT,
	"income_mods_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_211" FOREIGN KEY ("income_mods_id") REFERENCES "income_affectable_mode" ("id")
);

CREATE TABLE "city" (
	"id" SERIAL,
	"specialization_id" INTEGER,
	"name" TEXT,
	"popularity" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "city_fk0" FOREIGN KEY ("specialization_id") REFERENCES "specialization" ("id")
);

CREATE TABLE "province" (
	"id" SERIAL,
	"name" TEXT,
	"treasury" DOUBLE PRECISION,
	"tax_into" DOUBLE PRECISION,
	"tax_above" DOUBLE PRECISION,
	"autonomy" INT,
	"rebellion_potential" INT,
	"village_popularity" INT,
	"popularity_growth" INT,
	"city_id" INTEGER,
	"state_id" INTEGER,
	"legal_system_id" INTEGER,
	"climat_id" INTEGER,
	"season_id" INTEGER,
	"landscape_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_145" FOREIGN KEY ("climat_id") REFERENCES "climat" ("id"),
	 CONSTRAINT "fk_136" FOREIGN KEY ("city_id") REFERENCES "city" ("id"),
	 CONSTRAINT "fk_148" FOREIGN KEY ("season_id") REFERENCES "season" ("id"),
	 CONSTRAINT "fk_142" FOREIGN KEY ("legal_system_id") REFERENCES "legal_system" ("id"),
	 CONSTRAINT "fk_139" FOREIGN KEY ("state_id") REFERENCES "state" ("id"),
	 CONSTRAINT "fk_151" FOREIGN KEY ("landscape_id") REFERENCES "landscape" ("id")
);

CREATE TABLE "province_waterspace_neighboorhood" (
	"province_id" INTEGER,
	"waterspace_id" INTEGER,
	 PRIMARY KEY ("province_id","waterspace_id"),
	 CONSTRAINT "province_waterspace_neighboorhood_fk0" FOREIGN KEY ("province_id") REFERENCES "province" ("id"),
	 CONSTRAINT "province_waterspace_neighboorhood_fk1" FOREIGN KEY ("waterspace_id") REFERENCES "waterspace" ("id")
);

CREATE TABLE "province_resources_lifecycle" (
	"province_id" INTEGER,
	"resource_id" INTEGER,
	"resource_stock" INT,
	"resource_production" INT,
	"resource_limit" INT,
	"resource_marketing" INT,
	 PRIMARY KEY ("province_id","resource_id"),
	 CONSTRAINT "province_resources_lifecycle_fk1" FOREIGN KEY ("resource_id") REFERENCES "resource" ("id"),
	 CONSTRAINT "province_resources_lifecycle_fk0" FOREIGN KEY ("province_id") REFERENCES "province" ("id")
);

CREATE TABLE "province_religions" (
	"province_id" INTEGER,
	"religion_id" INTEGER,
	"percantage" DOUBLE PRECISION,
	 PRIMARY KEY ("province_id","religion_id"),
	 CONSTRAINT "province_religions_fk1" FOREIGN KEY ("religion_id") REFERENCES "religion" ("id"),
	 CONSTRAINT "province_religions_fk0" FOREIGN KEY ("province_id") REFERENCES "province" ("id")
);

CREATE TABLE "province_deseases" (
	"province_id" INTEGER,
	"desease_id" INTEGER,
	"prevalence" INT,
	"collective_immunity" DOUBLE PRECISION,
	 PRIMARY KEY ("province_id","desease_id"),
	 CONSTRAINT "province_deseases_fk1" FOREIGN KEY ("desease_id") REFERENCES "desease" ("id"),
	 CONSTRAINT "province_deseases_fk0" FOREIGN KEY ("province_id") REFERENCES "province" ("id")
);

CREATE TABLE "province_cultures" (
	"province_id" INTEGER,
	"culture_id" INTEGER,
	"percentage" DOUBLE PRECISION,
	 PRIMARY KEY ("province_id","culture_id"),
	 CONSTRAINT "province_cultures_fk1" FOREIGN KEY ("culture_id") REFERENCES "culture" ("id"),
	 CONSTRAINT "province_cultures_fk0" FOREIGN KEY ("province_id") REFERENCES "province" ("id")
);

CREATE TABLE "neighborhood_of_provinces" (
	"first_province_id" INTEGER,
	"second_province_id" INTEGER,
	"relation_id" INTEGER,
	"degree" INT,
	 PRIMARY KEY ("first_province_id","second_province_id"),
	 CONSTRAINT "neighborhood_of_provinces_fk1" FOREIGN KEY ("second_province_id") REFERENCES "province" ("id"),
	 CONSTRAINT "neighborhood_of_provinces_fk2" FOREIGN KEY ("relation_id") REFERENCES "relation" ("id"),
	 CONSTRAINT "neighborhood_of_provinces_fk0" FOREIGN KEY ("first_province_id") REFERENCES "province" ("id")
);

CREATE TABLE "fraction" (
	"id" SERIAL,
	"name" TEXT,
	"rebellion_tendency" DOUBLE PRECISION,
	 PRIMARY KEY ("id")
);

CREATE TABLE "province_fractions" (
	"province_id" INTEGER,
	"fraction_id" INTEGER,
	"authority" INT,
	"integrity" INT,
	 PRIMARY KEY ("province_id","fraction_id"),
	 CONSTRAINT "province_fractions_fk1" FOREIGN KEY ("fraction_id") REFERENCES "fraction" ("id"),
	 CONSTRAINT "province_fractions_fk0" FOREIGN KEY ("province_id") REFERENCES "province" ("id")
);
