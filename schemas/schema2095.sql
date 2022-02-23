DROP DATABASE IF EXISTS "schema2095";
CREATE DATABASE "schema2095";
USE "schema2095";
CREATE TABLE "state_us_master" (
	"state_name" VARCHAR,
	"state_abb" VARCHAR,
	 PRIMARY KEY ("state_name")
);

CREATE TABLE "state_energy" (
	"state_name" VARCHAR,
	"year" INT,
	"pe_coal" BIGINT,
	"pe_naturalgas" BIGINT,
	"pe_petroleum" BIGINT,
	"pe_nuclear" BIGINT,
	"pe_totalrenew" BIGINT,
	"re_biomass" BIGINT,
	"re_geothermal" BIGINT,
	"re_hydropower" BIGINT,
	"re_solar" BIGINT,
	"re_wind" BIGINT,
	 PRIMARY KEY ("state_name","year"),
	 CONSTRAINT "fkeycon_state_energy_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_disasters" (
	"state_name" VARCHAR,
	"year" INT,
	"drought" INT,
	"flooding" INT,
	"freeze" INT,
	"severe_storm" INT,
	"tropical_cyclone" INT,
	"wildfire" INT,
	"winter_storm" INT,
	 PRIMARY KEY ("state_name","year"),
	 CONSTRAINT "fkeycon_state_disasters_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_emissions" (
	"state_name" VARCHAR,
	"year" INT,
	"co2_emissions" FLOAT,
	 PRIMARY KEY ("state_name","year"),
	 CONSTRAINT "fkeycon_state_emissions_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_rgdp" (
	"state_name" VARCHAR,
	"year" INT,
	"rgdp_millions" INT,
	 PRIMARY KEY ("state_name","year"),
	 CONSTRAINT "fkeycon_state_rgdp_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_population" (
	"state_name" VARCHAR,
	"year" INT,
	"population_thousands" INT,
	 PRIMARY KEY ("state_name","year"),
	 CONSTRAINT "fkeycon_state_population_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_season" (
	"state_name" VARCHAR,
	"annual" FLOAT,
	"fall" FLOAT,
	"spring" FLOAT,
	"summer" FLOAT,
	"winter" FLOAT,
	"max_warming_season" VARCHAR,
	 PRIMARY KEY ("state_name"),
	 CONSTRAINT "fkeycon_state_season_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "nation_temp" (
	"state_name" VARCHAR,
	"year" INT,
	"tempf" FLOAT,
	"tempc" FLOAT,
	 PRIMARY KEY ("year"),
	 CONSTRAINT "fkeycon_nation_temp_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);

CREATE TABLE "state_temp" (
	"state_name" VARCHAR,
	"year" INT,
	"tempf" FLOAT,
	"tempc" FLOAT,
	 PRIMARY KEY ("state_name","year"),
	 CONSTRAINT "fkeycon_state_temp_to_state_us_master" FOREIGN KEY ("state_name") REFERENCES "state_us_master" ("state_name")
);
