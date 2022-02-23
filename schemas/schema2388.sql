DROP DATABASE IF EXISTS "schema2388";
CREATE DATABASE "schema2388";
USE "schema2388";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" CHARACTER VARYING,
	"surname" CHARACTER VARYING,
	"login" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("name")
);

CREATE TABLE "users_roles" (
	"user_id" BIGINT,
	"role_id" CHARACTER VARYING,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "user_roles_role_id_fkey" FOREIGN KEY ("role_id") REFERENCES "roles" ("name"),
	 CONSTRAINT "user_roles_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "departments" (
	"id" BIGINT,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_departments" (
	"user_id" BIGINT,
	"departments_id" BIGINT,
	 PRIMARY KEY ("user_id","departments_id"),
	 CONSTRAINT "users_departments_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "users_departments_departments_id_fkey" FOREIGN KEY ("departments_id") REFERENCES "departments" ("id")
);
