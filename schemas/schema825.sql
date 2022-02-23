DROP DATABASE IF EXISTS "schema825";
CREATE DATABASE "schema825";
USE "schema825";
CREATE TABLE "concepto" (
	"concepto_id" SERIAL,
	"codigo" INT,
	"nombre" VARCHAR,
	"unidad" INT,
	"columna" INT,
	"tipoconcepto" INT,
	"grupo" VARCHAR,
	"subgrupo" VARCHAR,
	"seaplicaa" VARCHAR,
	"cantidad" VARCHAR,
	"valor" VARCHAR,
	"multiplicador" VARCHAR,
	"divisor" VARCHAR,
	"condicion" VARCHAR,
	"periodico" BOOLEAN,
	 PRIMARY KEY ("concepto_id")
);

CREATE TABLE "concepto_tabla" (
	"concepto_tabla_id" SERIAL,
	"concepto_id" INT,
	"minimo" NUMERIC,
	"maximo" NUMERIC,
	"fijo" NUMERIC,
	"porcentual" NUMERIC,
	 PRIMARY KEY ("concepto_tabla_id"),
	 CONSTRAINT "fk_concepto_id" FOREIGN KEY ("concepto_id") REFERENCES "concepto" ("concepto_id")
);

CREATE TABLE "department" (
	"department_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "job" (
	"job_id" SERIAL,
	"name" VARCHAR,
	"base_salary" NUMERIC,
	"department_id" INT,
	 PRIMARY KEY ("job_id"),
	 CONSTRAINT "fk_department_id" FOREIGN KEY ("department_id") REFERENCES "department" ("department_id")
);

CREATE TABLE "job_category" (
	"job_category_id" SERIAL,
	"name" VARCHAR,
	"percentage_raise" NUMERIC,
	"fixed_raise" NUMERIC,
	"job_id" INT,
	 PRIMARY KEY ("job_category_id"),
	 CONSTRAINT "fk_job_id" FOREIGN KEY ("job_id") REFERENCES "job" ("job_id")
);

CREATE TABLE "employee" (
	"employee_id" SERIAL,
	"identity_number" VARCHAR,
	"email_work" VARCHAR,
	"email_personal" VARCHAR,
	"address" VARCHAR,
	"job_category_id" INT,
	"start_date" DATETIME,
	 PRIMARY KEY ("employee_id"),
	 CONSTRAINT "fk_job_category" FOREIGN KEY ("job_category_id") REFERENCES "job_category" ("job_category_id")
);

CREATE TABLE "financial_entities" (
	"entity_id" SERIAL,
	"identifier" VARCHAR,
	"address" VARCHAR,
	"phone_number" VARCHAR,
	"legal_name" VARCHAR,
	"display_name" VARCHAR,
	"email_address" VARCHAR,
	 PRIMARY KEY ("entity_id")
);

CREATE TABLE "financial_period" (
	"financial_period_id" SERIAL,
	"financial_entity_id" INT,
	"period_name" VARCHAR,
	"period_start_date" DATETIME,
	"period_end_date" DATETIME,
	 PRIMARY KEY ("financial_period_id"),
	 CONSTRAINT "fk_financial_entity_id" FOREIGN KEY ("financial_entity_id") REFERENCES "financial_entities" ("entity_id")
);

CREATE TABLE "entity_liable" (
	"entity_liable_id" SERIAL,
	"entity_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email_address" VARCHAR,
	 PRIMARY KEY ("entity_liable_id"),
	 CONSTRAINT "fk_entity_id" FOREIGN KEY ("entity_id") REFERENCES "financial_entities" ("entity_id")
);

CREATE TABLE "account_types" (
	"account_type_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("account_type_id")
);

CREATE TABLE "accounts" (
	"account_id" SERIAL,
	"name" VARCHAR,
	"abstract_account" BOOLEAN,
	"account_type_id" INT,
	"account_balance" NUMERIC,
	"parent_account_id" INT,
	"enabled" BOOLEAN,
	 PRIMARY KEY ("account_id"),
	 CONSTRAINT "fk_account_type" FOREIGN KEY ("account_type_id") REFERENCES "account_types" ("account_type_id"),
	 CONSTRAINT "fk_parent_account_id" FOREIGN KEY ("parent_account_id") REFERENCES "accounts" ("account_id")
);

CREATE TABLE "actions" (
	"action_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("action_id")
);

CREATE TABLE "roles" (
	"role_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "users" (
	"user_id" SERIAL,
	"username" VARCHAR,
	"display_name" VARCHAR,
	"email" VARCHAR,
	"password_hash" VARCHAR,
	"role_id" INT,
	"financial_entity_id" INT,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id"),
	 CONSTRAINT "fk_financial_entity_id" FOREIGN KEY ("financial_entity_id") REFERENCES "financial_entities" ("entity_id")
);

CREATE TABLE "entry_seats" (
	"entry_seat_id" SERIAL,
	"creation_date" DATETIME,
	"description" VARCHAR,
	"operation_type" VARCHAR,
	"financial_period_id" INT,
	"created_by" INT,
	 PRIMARY KEY ("entry_seat_id"),
	 CONSTRAINT "fk_financial_period_id" FOREIGN KEY ("financial_period_id") REFERENCES "financial_period" ("financial_period_id"),
	 CONSTRAINT "fk_created_by" FOREIGN KEY ("created_by") REFERENCES "users" ("user_id")
);

CREATE TABLE "entry_seat_lines" (
	"entry_seat_line_id" SERIAL,
	"position" INT,
	"account_id" INT,
	"entry_seat_id" INT,
	"assets" NUMERIC,
	"debit" NUMERIC,
	 PRIMARY KEY ("entry_seat_line_id"),
	 CONSTRAINT "fk_entry_seat_id" FOREIGN KEY ("entry_seat_id") REFERENCES "entry_seats" ("entry_seat_id"),
	 CONSTRAINT "fk_account_id" FOREIGN KEY ("account_id") REFERENCES "accounts" ("account_id")
);

CREATE TABLE "roles_actions" (
	"id" SERIAL,
	"role_id" INT,
	"action_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_role" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id"),
	 CONSTRAINT "fk_action" FOREIGN KEY ("action_id") REFERENCES "actions" ("action_id")
);
