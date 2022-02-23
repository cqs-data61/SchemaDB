DROP DATABASE IF EXISTS "schema2525";
CREATE DATABASE "schema2525";
USE "schema2525";
CREATE TABLE "aircraft" (
	"id" INT,
	"model" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "travel_class" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "aircraft_class" (
	"id" INT,
	"aircraft_id" INT,
	"travel_class_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_travel_class_has_aircraft_travel_class1" FOREIGN KEY ("travel_class_id") REFERENCES "travel_class" ("id"),
	 CONSTRAINT "fk_travel_class_has_aircraft_aircraft1" FOREIGN KEY ("aircraft_id") REFERENCES "aircraft" ("id")
);

CREATE TABLE "customer" (
	"id" INT,
	"username" VARCHAR,
	"full_name" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "country" (
	"code" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "airport" (
	"iata_code" VARCHAR,
	"name" VARCHAR,
	"country_code" VARCHAR,
	 PRIMARY KEY ("iata_code"),
	 CONSTRAINT "fk_airport_country1" FOREIGN KEY ("country_code") REFERENCES "country" ("code")
);

CREATE TABLE "route" (
	"id" INT,
	"origin_airport_iata_code" VARCHAR,
	"dest_airport_iata_code" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_direction_airport2" FOREIGN KEY ("dest_airport_iata_code") REFERENCES "airport" ("iata_code"),
	 CONSTRAINT "fk_direction_airport1" FOREIGN KEY ("origin_airport_iata_code") REFERENCES "airport" ("iata_code")
);

CREATE TABLE "schedule" (
	"id" INT,
	"route_id" INT,
	"departure_time_gmt" TIMESTAMP,
	"arrival_time_gmt" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_schedule_direction1" FOREIGN KEY ("route_id") REFERENCES "route" ("id")
);

CREATE TABLE "flight" (
	"id" INT,
	"schedule_id" INT,
	"code" VARCHAR,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_flight_schedule1" FOREIGN KEY ("schedule_id") REFERENCES "schedule" ("id")
);

CREATE TABLE "flight_class" (
	"id" INT,
	"flight_id" INT,
	"aircraft_class_id" INT,
	"price_in_cents" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_flight_class_price_flight1" FOREIGN KEY ("flight_id") REFERENCES "flight" ("id"),
	 CONSTRAINT "fk_flight_class_price_aircraft_class1" FOREIGN KEY ("aircraft_class_id") REFERENCES "aircraft_class" ("id")
);

CREATE TABLE "booking" (
	"id" INT,
	"customer_id" INT,
	"flight_class_id" INT,
	"status" VARCHAR,
	"creation_date" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_booking_customer1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("id"),
	 CONSTRAINT "fk_booking_flight_class_price1" FOREIGN KEY ("flight_class_id") REFERENCES "flight_class" ("id")
);

CREATE TABLE "payment" (
	"id" INT,
	"booking_id" INT,
	"credit_card_number" VARCHAR,
	"credit_card_name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_payment_booking1" FOREIGN KEY ("booking_id") REFERENCES "booking" ("id")
);
