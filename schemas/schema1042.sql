DROP DATABASE IF EXISTS "schema1042";
CREATE DATABASE "schema1042";
USE "schema1042";
CREATE TABLE "hotel" (
	"id" SERIAL,
	"name" VARCHAR,
	"address" VARCHAR,
	"rooms" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "destination" (
	"acronym" VARCHAR,
	"hotel_id" INT,
	"country" VARCHAR,
	"city" VARCHAR,
	 PRIMARY KEY ("acronym"),
	 CONSTRAINT "fkeycon_destination_to_hotel" FOREIGN KEY ("hotel_id") REFERENCES "hotel" ("id")
);

CREATE TABLE "customer" (
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"top_destination" VARCHAR,
	 PRIMARY KEY ("surname"),
	 CONSTRAINT "fkeycon_customer_to_destination" FOREIGN KEY ("top_destination") REFERENCES "destination" ("acronym")
);

CREATE TABLE "agency" (
	"code" INT,
	"country" VARCHAR,
	"city" VARCHAR,
	"name" VARCHAR,
	"website" VARCHAR,
	"ratings" FLOAT,
	 PRIMARY KEY ("code")
);

CREATE TABLE "employee" (
	"id" SERIAL,
	"name" VARCHAR,
	"surname" VARCHAR,
	"email" VARCHAR,
	"agency_code" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_agency" FOREIGN KEY ("agency_code") REFERENCES "agency" ("code")
);

CREATE TABLE "booking" (
	"id" SERIAL,
	"start_date" DATE,
	"end_date" DATE,
	"destination_acronym" VARCHAR,
	"customer_surname" VARCHAR,
	"travelers" INT,
	"reservation_time" TIMESTAMP,
	"employee_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_booking_to_destination" FOREIGN KEY ("destination_acronym") REFERENCES "destination" ("acronym"),
	 CONSTRAINT "fkeycon_booking_to_employee" FOREIGN KEY ("employee_id") REFERENCES "employee" ("id"),
	 CONSTRAINT "fkeycon_booking_to_customer" FOREIGN KEY ("customer_surname") REFERENCES "customer" ("surname")
);
