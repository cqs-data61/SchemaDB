DROP DATABASE IF EXISTS "schema2347";
CREATE DATABASE "schema2347";
USE "schema2347";
CREATE TABLE "physician_rooms" (
	"id" INT,
	"room_id" VARCHAR,
	"physician_id" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "consultation_times" (
	"id" INT,
	"physician_id" VARCHAR,
	"time" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rooms" (
	"id" INT,
	"name" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "treatment_types" (
	"id" INT,
	"name" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "visitor_appointments" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"reason" VARCHAR,
	"physician_id" VARCHAR,
	"treatment_type_id" VARCHAR,
	"time" VARCHAR,
	"room" VARCHAR,
	"status" VARCHAR,
	"note" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "appointments" (
	"id" INT,
	"reason" VARCHAR,
	"patient_id" VARCHAR,
	"physician_id" VARCHAR,
	"treatment_type_id" VARCHAR,
	"time" VARCHAR,
	"room" VARCHAR,
	"status" VARCHAR,
	"note" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "patients" (
	"id" INT,
	"title" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"age" INT,
	"phone_number" VARCHAR,
	"address" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "physicians" (
	"id" INT,
	"title" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"address" VARCHAR,
	"phone_number" VARCHAR,
	"expertise" VARCHAR,
	"consultation_time" VARCHAR,
	"created_at" VARCHAR,
	"updated_at" VARCHAR,
	 PRIMARY KEY ("id")
);
