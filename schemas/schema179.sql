DROP DATABASE IF EXISTS "schema179";
CREATE DATABASE "schema179";
USE "schema179";
CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("manager_id") REFERENCES "employee" ("id"),
	 CONSTRAINT "fkeycon_employee_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
