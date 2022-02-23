DROP DATABASE IF EXISTS "schema2147";
CREATE DATABASE "schema2147";
USE "schema2147";
CREATE TABLE "staffs" (
	"staff_id" INT,
	"manager_password" VARCHAR,
	"email" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"telephone" VARCHAR,
	 PRIMARY KEY ("staff_id")
);

CREATE TABLE "managers" (
	"manager_id" INT,
	"email" VARCHAR,
	"manager_password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"telephone" VARCHAR,
	 PRIMARY KEY ("manager_id")
);

CREATE TABLE "items" (
	"id" INT,
	"name" VARCHAR,
	"image_data" MEDIUMBLOB,
	"menu_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"telephone" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bookings" (
	"id" INT,
	"booking_time" TIMESTAMP,
	"table_position" VARCHAR,
	"customer_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bookings_to_customers" FOREIGN KEY ("customer_id") REFERENCES "customers" ("id")
);

CREATE TABLE "bookingitems" (
	"bookingitem_id" INT,
	"booking_id" INT,
	"item_id" INT,
	 PRIMARY KEY ("bookingitem_id"),
	 CONSTRAINT "fkeycon_bookingitems_to_items" FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
	 CONSTRAINT "fkeycon_bookingitems_to_bookings" FOREIGN KEY ("booking_id") REFERENCES "bookings" ("id")
);
