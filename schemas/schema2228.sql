DROP DATABASE IF EXISTS "schema2228";
CREATE DATABASE "schema2228";
USE "schema2228";
CREATE TABLE "department" (
	"deptid" INTEGER,
	"department_name" VARCHAR,
	 PRIMARY KEY ("deptid")
);

CREATE TABLE "roles" (
	"roleid" INTEGER,
	"title" VARCHAR,
	"salary" DECIMAL,
	"dmentid" INTEGER,
	 PRIMARY KEY ("roleid"),
	 CONSTRAINT "fkeycon_roles_to_department" FOREIGN KEY ("dmentid") REFERENCES "department" ("deptid")
);

CREATE TABLE "employee" (
	"id" INTEGER,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"rolesid" INTEGER,
	"managerid" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_employee_to_employee" FOREIGN KEY ("managerid") REFERENCES "employee" ("id"),
	 CONSTRAINT "fkeycon_employee_to_roles" FOREIGN KEY ("rolesid") REFERENCES "roles" ("roleid")
);
