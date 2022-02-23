DROP DATABASE IF EXISTS "schema1624";
CREATE DATABASE "schema1624";
USE "schema1624";
CREATE TABLE "revinfo" (
	"rev" INT4,
	"revtstmp" INT8,
	 PRIMARY KEY ("rev")
);

CREATE TABLE "users_aud" (
	"id" INT8,
	"rev" INT4,
	"revtype" VARCHAR,
	"active" BOOLEAN,
	"email" VARCHAR,
	"email_token_time" TIMESTAMP,
	"email_token" VARCHAR,
	"email_verification_attempts" INT4,
	"email_verified" BOOLEAN,
	"email_verified_time" TIMESTAMP,
	"failed_login_attempts" INT4,
	"first_name" VARCHAR,
	"last_login_failure_time" TIMESTAMP,
	"last_name" VARCHAR,
	"last_password_changed_time" TIMESTAMP,
	"last_successful_login_time" TIMESTAMP,
	"password" VARCHAR,
	"password_reset_token" VARCHAR,
	"password_reset_token_generated_time" TIMESTAMP,
	"username" VARCHAR,
	 PRIMARY KEY ("id","rev"),
	 CONSTRAINT "users_aud_fk_revinfo_pkey" FOREIGN KEY ("rev") REFERENCES "revinfo" ("rev"),
	 CONSTRAINT "fk_user_aud_revinfo_pkey" FOREIGN KEY ("rev") REFERENCES "revinfo" ("rev")
);

CREATE TABLE "permissions" (
	"id" INT8,
	"deleted" BOOLEAN,
	"guid" VARCHAR,
	"version" INT4,
	"created_by" VARCHAR,
	"created_on" TIMESTAMP,
	"updated_by" VARCHAR,
	"updated_on" TIMESTAMP,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT8,
	"deleted" BOOLEAN,
	"guid" VARCHAR,
	"version" INT4,
	"created_by" VARCHAR,
	"created_on" TIMESTAMP,
	"updated_by" VARCHAR,
	"updated_on" TIMESTAMP,
	"name" VARCHAR,
	"description" VARCHAR,
	"system" BOOLEAN,
	"role_type" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role_permissions" (
	"role_id" INT8,
	"permission_id" INT8,
	 PRIMARY KEY ("role_id","permission_id"),
	 CONSTRAINT "role_permissions_fk_permission_pkey" FOREIGN KEY ("permission_id") REFERENCES "permissions" ("id"),
	 CONSTRAINT "fk_role_permissions_permission_pkey" FOREIGN KEY ("permission_id") REFERENCES "permissions" ("id"),
	 CONSTRAINT "role_permissions_fk_role_pkey" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "fk_role_permissions_role_pkey" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);

CREATE TABLE "users" (
	"id" INT8,
	"deleted" BOOLEAN,
	"guid" VARCHAR,
	"version" INT4,
	"created_by" VARCHAR,
	"created_on" TIMESTAMP,
	"updated_by" VARCHAR,
	"updated_on" TIMESTAMP,
	"active" BOOLEAN,
	"email" VARCHAR,
	"email_token_time" TIMESTAMP,
	"email_token" VARCHAR,
	"email_verification_attempts" INT4,
	"email_verified" BOOLEAN,
	"email_verified_time" TIMESTAMP,
	"failed_login_attempts" INT4,
	"first_name" VARCHAR,
	"last_login_failure_time" TIMESTAMP,
	"last_name" VARCHAR,
	"last_password_changed_time" TIMESTAMP,
	"last_successful_login_time" TIMESTAMP,
	"password" VARCHAR,
	"password_reset_token" VARCHAR,
	"password_reset_token_generated_time" TIMESTAMP,
	"username" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_roles" (
	"user_id" INT8,
	"role_id" INT8,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fk_user_roles_user_pkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "user_roles_fk_role_pkey" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "user_roles_fk_user_pkey" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fk_user_roles_role_pkey" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);
