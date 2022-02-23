DROP DATABASE IF EXISTS "schema1801";
CREATE DATABASE "schema1801";
USE "schema1801";
CREATE TABLE "job" (
	"job_id" INT,
	"date" DATE,
	"knives" INT,
	"payment" DECIMAL,
	"notes" VARCHAR,
	 PRIMARY KEY ("job_id")
);

CREATE TABLE "booking" (
	"booking_id" INT,
	"current_date" DATE,
	"preferred_date" DATE,
	"knives" INT,
	"rate1" DECIMAL,
	"rate2" DECIMAL,
	"price" DECIMAL,
	"notes" VARCHAR,
	 PRIMARY KEY ("booking_id")
);

CREATE TABLE "customer" (
	"customer_id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"address1" VARCHAR,
	"address2" VARCHAR,
	"address3" VARCHAR,
	"county" VARCHAR,
	 PRIMARY KEY ("customer_id")
);

CREATE TABLE "customer_booking" (
	"booking_id" INT,
	"customer_id" INT,
	 PRIMARY KEY ("booking_id","customer_id"),
	 CONSTRAINT "fk_booking_has_customer_customer1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
	 CONSTRAINT "fk_booking_has_customer_booking1" FOREIGN KEY ("booking_id") REFERENCES "booking" ("booking_id")
);

CREATE TABLE "job_for_customer" (
	"job_id" INT,
	"customer_id" INT,
	 PRIMARY KEY ("job_id","customer_id"),
	 CONSTRAINT "fk_job_has_customer_customer1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
	 CONSTRAINT "fk_job_has_customer_job" FOREIGN KEY ("job_id") REFERENCES "job" ("job_id")
);

CREATE TABLE "contact" (
	"contact_id" INT,
	"fname" VARCHAR,
	"lname" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"job_title" VARCHAR,
	"notes" VARCHAR,
	"customer_id" INT,
	 PRIMARY KEY ("contact_id"),
	 CONSTRAINT "fk_contact_customer1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id")
);
