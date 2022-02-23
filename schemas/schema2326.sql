DROP DATABASE IF EXISTS "schema2326";
CREATE DATABASE "schema2326";
USE "schema2326";
CREATE TABLE "department" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INT,
	"title" VARCHAR,
	"salary" DECIMAL,
	"department_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_role_to_department" FOREIGN KEY ("department_id") REFERENCES "department" ("id")
);

CREATE TABLE "employee" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"role_id" INT,
	"manager_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("manager_id") REFERENCES "employee" ("id"),
	 CONSTRAINT "fkeycon_employee_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
