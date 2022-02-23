DROP DATABASE IF EXISTS "schema301";
CREATE DATABASE "schema301";
USE "schema301";
CREATE TABLE "offices" (
	"office_id" SERIAL,
	"office_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"district" VARCHAR,
	"postal_code" VARCHAR,
	"phone" VARCHAR,
	"open_time" TIME,
	"close_time" TIME,
	"hourly_rate" NUMERIC,
	 PRIMARY KEY ("office_id")
);

CREATE TABLE "users" (
	"user_id" INT,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"role" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "patients" (
	"patient_id" SERIAL,
	"user_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("patient_id"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "doctors" (
	"doctor_id" SERIAL,
	"user_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"office_id" INT,
	 PRIMARY KEY ("doctor_id"),
	 CONSTRAINT "fk_office_id" FOREIGN KEY ("office_id") REFERENCES "offices" ("office_id"),
	 CONSTRAINT "fk_user_id" FOREIGN KEY ("user_id") REFERENCES "users" ("user_id")
);

CREATE TABLE "appointments" (
	"appointment_id" SERIAL,
	"doctor_id" INT,
	"patient_id" INT,
	"appointment_date" DATE,
	"appointment_time_start" TIME,
	"appointment_time_end" TIME,
	"appointment_status" VARCHAR,
	 PRIMARY KEY ("appointment_id"),
	 CONSTRAINT "fk_doctor_id" FOREIGN KEY ("doctor_id") REFERENCES "doctors" ("doctor_id")
);
