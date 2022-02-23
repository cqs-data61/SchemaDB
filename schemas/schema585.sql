DROP DATABASE IF EXISTS "schema585";
CREATE DATABASE "schema585";
USE "schema585";
CREATE TABLE "t_salary" (
	"user_id" VARCHAR,
	"year_month" VARCHAR,
	"salary" INT,
	 PRIMARY KEY ("user_id","year_month")
);

CREATE TABLE "m_department" (
	"department_id" INT,
	"department_name" VARCHAR,
	 PRIMARY KEY ("department_id")
);

CREATE TABLE "m_user" (
	"user_id" VARCHAR,
	"password" VARCHAR,
	"user_name" VARCHAR,
	"birthday" DATE,
	"age" INT,
	"gender" INT,
	"department_id" INT,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "employee" (
	"id" VARCHAR,
	"name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("id")
);
