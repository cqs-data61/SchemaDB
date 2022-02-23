DROP DATABASE IF EXISTS "schema2320";
CREATE DATABASE "schema2320";
USE "schema2320";
CREATE TABLE "client" (
	"id" INT,
	"document_number" VARCHAR2,
	"full_name" VARCHAR2,
	"unique" KEY,
	 PRIMARY KEY ("id")
);

CREATE TABLE "appointment" (
	"id" INT,
	"created_at" DATETIME,
	"appointment_date" DATETIME,
	"price" DOUBLE,
	"id_client" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_appointment_to_client" FOREIGN KEY ("id_client") REFERENCES "client" ("id")
);
