DROP DATABASE IF EXISTS "schema960";
CREATE DATABASE "schema960";
USE "schema960";
CREATE TABLE "invoice" (
	"invoice_id" SERIAL,
	"ticket_id" INTEGER,
	"invoice_no" INTEGER,
	"invoice_total" BIGINT,
	"due_date" DATE,
	"paid_date" DATE,
	"active" BOOLEAN,
	 PRIMARY KEY ("invoice_id")
);

CREATE TABLE "ticket" (
	"ticket_id" SERIAL,
	"location_id" INTEGER,
	"equipment_id" INTEGER,
	"service_category_id" INTEGER,
	"description" VARCHAR,
	"employee_id" INTEGER,
	"contractor_id" INTEGER,
	"estimate" BIGINT,
	"submitted_on" DATE,
	"completed_on" TIMESTAMP,
	"active" BOOLEAN,
	 PRIMARY KEY ("ticket_id")
);

CREATE TABLE "equipment" (
	"equipment_id" SERIAL,
	"brand" VARCHAR,
	"model" VARCHAR,
	"serial_no" VARCHAR,
	"equipment_category_id" INTEGER,
	"location_id" INTEGER,
	 PRIMARY KEY ("equipment_id")
);

CREATE TABLE "equipment_category" (
	"equipment_category_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("equipment_category_id")
);

CREATE TABLE "contractor_service_category" (
	"contractor_id" INTEGER,
	"service_category_id" INTEGER,
	 PRIMARY KEY ("contractor_id","service_category_id")
);

CREATE TABLE "service_category" (
	"service_category_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("service_category_id")
);

CREATE TABLE "contractor" (
	"contractor_id" SERIAL,
	"contact_id" INTEGER,
	 PRIMARY KEY ("contractor_id")
);

CREATE TABLE "employee_location" (
	"employee_id" INTEGER,
	"location_id" INTEGER,
	 PRIMARY KEY ("employee_id","location_id")
);

CREATE TABLE "employee" (
	"employee_id" SERIAL,
	"contact_id" INTEGER,
	"position_id" INTEGER,
	"hire_date" DATE,
	 PRIMARY KEY ("employee_id")
);

CREATE TABLE "position" (
	"position_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("position_id")
);

CREATE TABLE "location" (
	"location_id" SERIAL,
	"name" VARCHAR,
	"address_id" INTEGER,
	 PRIMARY KEY ("location_id")
);

CREATE TABLE "contact" (
	"contact_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"address_id" INTEGER,
	 PRIMARY KEY ("contact_id")
);

CREATE TABLE "address" (
	"address_id" SERIAL,
	"street_no" INTEGER,
	"street_name" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zip_code" INTEGER,
	 PRIMARY KEY ("address_id")
);
