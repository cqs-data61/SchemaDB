DROP DATABASE IF EXISTS "schema2429";
CREATE DATABASE "schema2429";
USE "schema2429";
CREATE TABLE "company" (
	"id" BIGINT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "department" (
	"id" BIGINT,
	"name" VARCHAR,
	"company_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "department_company" FOREIGN KEY ("company_id") REFERENCES "company" ("id")
);

CREATE TABLE "car" (
	"id" BIGINT,
	"registration_number" VARCHAR,
	"company_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "car_company" FOREIGN KEY ("company_id") REFERENCES "company" ("id")
);

CREATE TABLE "address" (
	"id" BIGINT,
	"house_number" VARCHAR,
	"street" VARCHAR,
	"zip_code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "office" (
	"id" BIGINT,
	"name" VARCHAR,
	"address_id" BIGINT,
	"department_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "office_address" FOREIGN KEY ("address_id") REFERENCES "address" ("id")
);

CREATE TABLE "employee" (
	"id" BIGINT,
	"name" VARCHAR,
	"surname" VARCHAR,
	"address_id" BIGINT,
	"department_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "employee_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id"),
	 CONSTRAINT "employee_address" FOREIGN KEY ("address_id") REFERENCES "address" ("id")
);
