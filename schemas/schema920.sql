DROP DATABASE IF EXISTS "schema920";
CREATE DATABASE "schema920";
USE "schema920";
CREATE TABLE "invoices" (
	"id" INT,
	"total_amount" DECIMAL,
	"generated_at" DATE,
	"payed_at" DATE,
	"medical_history_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "treatments" (
	"id" INT,
	"type" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "invoice_items" (
	"id" INT,
	"unit_price" DECIMAL,
	"quantity" INT,
	"total_price" DECIMAL,
	"invoice_id" INT,
	"treatment_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_invoice_items_to_invoices" FOREIGN KEY ("invoice_id") REFERENCES "invoices" ("id"),
	 CONSTRAINT "fkeycon_invoice_items_to_treatments" FOREIGN KEY ("treatment_id") REFERENCES "treatments" ("id")
);

CREATE TABLE "patients" (
	"id" INT,
	"name" VARCHAR,
	"date_of_birth" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "medical_histories" (
	"id" INT,
	"admitted_at" DATE,
	"patient_id" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_medical_histories_to_patients" FOREIGN KEY ("patient_id") REFERENCES "patients" ("id")
);

CREATE TABLE "medical_history_treatments" (
	"medical_history_id" INT,
	"treatment_id" INT,
	 PRIMARY KEY ("medical_history_id","treatment_id"),
	 CONSTRAINT "fkeycon_medical_history_treatments_to_medical_histories" FOREIGN KEY ("medical_history_id") REFERENCES "medical_histories" ("id"),
	 CONSTRAINT "fkeycon_medical_history_treatments_to_treatments" FOREIGN KEY ("treatment_id") REFERENCES "treatments" ("id")
);
