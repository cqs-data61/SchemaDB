DROP DATABASE IF EXISTS "schema1806";
CREATE DATABASE "schema1806";
USE "schema1806";
CREATE TABLE "asp_net_users" (
	"id" VARCHAR,
	"email" VARCHAR,
	"email_confirmed" BOOLEAN,
	"password_hash" TEXT,
	"security_stamp" TEXT,
	"phone_number" TEXT,
	"phone_number_confirmed" BOOLEAN,
	"two_factor_enabled" BOOLEAN,
	"lockout_end_date_utc" TIMESTAMP,
	"lockout_enabled" BOOLEAN,
	"access_failed_count" INT,
	"user_name" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "asp_net_user_logins" (
	"login_provider" VARCHAR,
	"provider_key" VARCHAR,
	"user_id" VARCHAR,
	 PRIMARY KEY ("login_provider","provider_key","user_id"),
	 CONSTRAINT "fk_dbo.asp_net_user_logins.asp_net_users_user_id" FOREIGN KEY ("user_id") REFERENCES "asp_net_users" ("id")
);

CREATE TABLE "asp_net_user_claims" (
	"id" INT,
	"user_id" VARCHAR,
	"claim_type" TEXT,
	"claim_value" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_dbo.asp_net_user_claims_dbo.asp_net_users_user_id" FOREIGN KEY ("user_id") REFERENCES "asp_net_users" ("id")
);

CREATE TABLE "asp_net_roles" (
	"id" VARCHAR,
	"description" TEXT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "asp_net_user_roles" (
	"user_id" VARCHAR,
	"role_id" VARCHAR,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fk_dbo.asp_net_user_roles_dbo.asp_net_roles_role_id" FOREIGN KEY ("role_id") REFERENCES "asp_net_roles" ("id"),
	 CONSTRAINT "fk_dbo.asp_net_user_roles_dbo.asp_net_users_user_id" FOREIGN KEY ("user_id") REFERENCES "asp_net_users" ("id")
);
