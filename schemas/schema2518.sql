DROP DATABASE IF EXISTS "schema2518";
CREATE DATABASE "schema2518";
USE "schema2518";
CREATE TABLE "country" (
	"country_name" VARCHAR,
	 PRIMARY KEY ("country_name")
);

CREATE TABLE "airline" (
	"airline_name" VARCHAR,
	"airline_alias" VARCHAR,
	"airline_country" VARCHAR,
	 PRIMARY KEY ("airline_alias"),
	 CONSTRAINT "fkeycon_airline_to_country" FOREIGN KEY ("airline_country") REFERENCES "country" ("country_name")
);

CREATE TABLE "hotspot" (
	"hotspot_id" SERIAL,
	"date" DATE,
	"startslot_index" INT,
	"endslot_index" INT,
	"normal_capacity" INT,
	"stressed_capacity" INT,
	"airline" VARCHAR,
	 PRIMARY KEY ("hotspot_id"),
	 CONSTRAINT "fkeycon_hotspot_to_airline" FOREIGN KEY ("airline") REFERENCES "airline" ("airline_alias")
);

CREATE TABLE "costfunction" (
	"cf_name" VARCHAR,
	"owner" VARCHAR,
	 PRIMARY KEY ("cf_name"),
	 CONSTRAINT "fkeycon_costfunction_to_airline" FOREIGN KEY ("owner") REFERENCES "airline" ("airline_alias")
);

CREATE TABLE "proposal" (
	"proposal_id" SERIAL,
	"price" REAL,
	"delay" INT,
	"bid" BOOL,
	"ask" BOOL,
	"cf" VARCHAR,
	 PRIMARY KEY ("proposal_id"),
	 CONSTRAINT "fkeycon_proposal_to_costfunction" FOREIGN KEY ("cf") REFERENCES "costfunction" ("cf_name")
);

CREATE TABLE "users" (
	"username" VARCHAR,
	"pwhash" VARCHAR,
	"role" VARCHAR,
	"airline" VARCHAR,
	 PRIMARY KEY ("username"),
	 CONSTRAINT "fkeycon_users_to_airline" FOREIGN KEY ("airline") REFERENCES "airline" ("airline_alias")
);

CREATE TABLE "city" (
	"city_name" VARCHAR,
	"country" VARCHAR,
	"utc_offset" VARCHAR,
	 PRIMARY KEY ("city_name","country"),
	 CONSTRAINT "fkeycon_city_to_country" FOREIGN KEY ("country") REFERENCES "country" ("country_name")
);

CREATE TABLE "airport" (
	"airport_alias" VARCHAR,
	"airport_name" VARCHAR,
	"airport_city" VARCHAR,
	"airport_country" VARCHAR,
	 PRIMARY KEY ("airport_alias"),
	 CONSTRAINT "fkeycon_airport_to_city" FOREIGN KEY ("airport_city","airport_country") REFERENCES "city" ("city_name","country")
);

CREATE TABLE "flight" (
	"flight_id" SERIAL,
	"departureairport" VARCHAR,
	"destinationairport" VARCHAR,
	"airline" VARCHAR,
	"departuretime" TIMESTAMP,
	"destinationtime" TIMESTAMP,
	 PRIMARY KEY ("flight_id"),
	 CONSTRAINT "fkeycon_flight_to_airport" FOREIGN KEY ("destinationairport") REFERENCES "airport" ("airport_alias"),
	 CONSTRAINT "fkeycon_flight_to_airline" FOREIGN KEY ("airline") REFERENCES "airline" ("airline_alias")
);

CREATE TABLE "cf_flight_attr" (
	"cf_name" VARCHAR,
	"flight_id" INT,
	 PRIMARY KEY ("cf_name","flight_id"),
	 CONSTRAINT "fkeycon_cf_flight_attr_to_flight" FOREIGN KEY ("flight_id") REFERENCES "flight" ("flight_id"),
	 CONSTRAINT "fkeycon_cf_flight_attr_to_costfunction" FOREIGN KEY ("cf_name") REFERENCES "costfunction" ("cf_name")
);
