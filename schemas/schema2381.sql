DROP DATABASE IF EXISTS "schema2381";
CREATE DATABASE "schema2381";
USE "schema2381";
CREATE TABLE "departments" (
	"id" INT,
	"dept_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"dept_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_departments" FOREIGN KEY ("dept_id") REFERENCES "departments" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"man_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("man_id") REFERENCES "employee" ("id"),
	 CONSTRAINT "fkeycon_employee_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
