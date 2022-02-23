DROP DATABASE IF EXISTS "schema2078";
CREATE DATABASE "schema2078";
USE "schema2078";
CREATE TABLE "report_generator" (
	"id" INTEGER,
	"name" VARCHAR,
	"c_type" VARCHAR,
	"c_number" INTEGER,
	"c_date" DATETIME,
	"unp" INTEGER,
	"users_amount" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rep_gen_email" (
	"id" INTEGER,
	"email" VARCHAR,
	"rep_gen_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_rep_gen_email_to_report_generator" FOREIGN KEY ("rep_gen_id") REFERENCES "report_generator" ("id")
);

CREATE TABLE "tariff" (
	"id" INTEGER,
	"name" VARCHAR,
	"category" INTEGER,
	"u_min" INTEGER,
	"u_max" INTEGER,
	"price" DECIMAL,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "privilege" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" INTEGER,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles_privileges" (
	"role_id" INTEGER,
	"privilege_id" INTEGER,
	 CONSTRAINT "fkeycon_roles_privileges_to_privilege" FOREIGN KEY ("privilege_id") REFERENCES "privilege" ("id"),
	 CONSTRAINT "fkeycon_roles_privileges_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);

CREATE TABLE "users" (
	"id" INTEGER,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"registered" DATETIME,
	"enabled" BOOL,
	"provider" VARCHAR,
	"provider_id" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "password_reset_token" (
	"id" INTEGER,
	"expiry_date" DATETIME,
	"token" VARCHAR,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_password_reset_token_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "verification_token" (
	"id" INTEGER,
	"expiry_date" DATETIME,
	"token" VARCHAR,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_verification_token_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "users_roles" (
	"user_id" INTEGER,
	"role_id" INTEGER,
	 CONSTRAINT "fkeycon_users_roles_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_users_roles_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id")
);
