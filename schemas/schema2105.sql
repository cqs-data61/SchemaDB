DROP DATABASE IF EXISTS "schema2105";
CREATE DATABASE "schema2105";
USE "schema2105";
CREATE TABLE "m_user" (
	"user_id" VARCHAR,
	"password" VARCHAR,
	"user_name" VARCHAR,
	"birthday" DATE,
	"age" INT,
	"marriage" BOOLEAN,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "employee" (
	"employee_id" INT,
	"employee_name" VARCHAR,
	"age" INT,
	 PRIMARY KEY ("employee_id")
);
