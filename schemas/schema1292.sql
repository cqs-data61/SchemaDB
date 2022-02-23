DROP DATABASE IF EXISTS "schema1292";
CREATE DATABASE "schema1292";
USE "schema1292";
CREATE TABLE "maintenance" (
	"maintenance_id" VARCHAR,
	"user_id" VARCHAR,
	"activity_id" VARCHAR,
	"responsible" VARCHAR,
	"reason" VARCHAR,
	"replacement_note" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	"due_date" DATETIME,
	"replacement_cost" INTEGER,
	"maintenance_cost" INTEGER,
	"currency_id" VARCHAR,
	"done" TINYINT,
	 PRIMARY KEY ("maintenance_id")
);

CREATE TABLE "activity" (
	"activity_id" VARCHAR,
	"machine_id" VARCHAR,
	"activity_type_id" VARCHAR,
	"is_on" TINYINT,
	"next_due_date" DATE,
	 PRIMARY KEY ("activity_id")
);

CREATE TABLE "new_user" (
	"email" VARCHAR,
	"created_at" TIMESTAMP,
	"confirmation_token" VARCHAR,
	"role_id" VARCHAR,
	"company_id" VARCHAR,
	 PRIMARY KEY ("email")
);

CREATE TABLE "user_role" (
	"user_id" VARCHAR,
	"role_id" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "role" (
	"role_id" VARCHAR,
	"role_name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "machine" (
	"machine_id" VARCHAR,
	"machine_name" VARCHAR,
	"machine_type_id" VARCHAR,
	"is_on" TINYINT,
	 PRIMARY KEY ("machine_id")
);

CREATE TABLE "activity_type" (
	"activity_type_id" VARCHAR,
	"machine_type_id" VARCHAR,
	"name" VARCHAR,
	"priority" TINYINT,
	"mandatory" TINYINT,
	"frequency" INT,
	"default_value" TINYINT,
	"company_id" VARCHAR,
	 PRIMARY KEY ("activity_type_id")
);

CREATE TABLE "user" (
	"user_id" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"created_at" TIMESTAMP,
	"company_id" VARCHAR,
	"token" VARCHAR,
	"role_id" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "machine_type" (
	"machine_type_id" VARCHAR,
	"name" VARCHAR,
	"horse_power" VARCHAR,
	"default_value" TINYINT,
	"company_id" VARCHAR,
	 PRIMARY KEY ("machine_type_id")
);

CREATE TABLE "company" (
	"company_id" VARCHAR,
	"name" VARCHAR,
	"company_type" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("company_id")
);
