DROP DATABASE IF EXISTS "schema1858";
CREATE DATABASE "schema1858";
USE "schema1858";
CREATE TABLE "tours" (
	"tourid" INTEGER,
	"tourname" VARCHAR,
	"price" INT,
	"description" VARCHAR,
	"difficulty" INT,
	"location" INT,
	"childfriendly" BOOLEAN,
	"season" SEASON,
	"providername" VARCHAR,
	 PRIMARY KEY ("tourid")
);

CREATE TABLE "dates" (
	"tourid" INT,
	"tourdate" DATE,
	"maxavailableseats" INT,
	"availableseats" INT,
	 PRIMARY KEY ("tourid","tourdate"),
	 CONSTRAINT "fkeycon_dates_to_tours" FOREIGN KEY ("tourid") REFERENCES "tours" ("tourid")
);

CREATE TABLE "reservations" (
	"reservationid" INT,
	"tourid" INT,
	"tourdate" DATE,
	"noofseats" INT,
	"customername" VARCHAR,
	"customeremail" VARCHAR,
	 PRIMARY KEY ("tourid","tourdate","customeremail"),
	 CONSTRAINT "fkeycon_reservations_to_dates" FOREIGN KEY ("tourid","tourdate") REFERENCES "dates" ("tourid","tourdate")
);
