DROP DATABASE IF EXISTS "schema160";
CREATE DATABASE "schema160";
USE "schema160";
CREATE TABLE "privilege" (
	"privilege_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("privilege_id")
);

CREATE TABLE "login_users" (
	"user_id" SERIAL,
	"active" BOOLEAN,
	"expired" BOOLEAN,
	"locked" BOOLEAN,
	"username" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "roles" (
	"role_id" SERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "roles_privileges" (
	"privilege_id" SERIAL,
	"role_id" SERIAL,
	 PRIMARY KEY ("privilege_id","role_id"),
	 CONSTRAINT "privilege_role_id_fk" FOREIGN KEY ("privilege_id") REFERENCES "privilege" ("privilege_id"),
	 CONSTRAINT "role_privilege_id_fk" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);

CREATE TABLE "login_users_roles" (
	"user_id" SERIAL,
	"role_id" SERIAL,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "user_role_user_id_fk" FOREIGN KEY ("user_id") REFERENCES "login_users" ("user_id"),
	 CONSTRAINT "user_role_role_id_fk" FOREIGN KEY ("role_id") REFERENCES "roles" ("role_id")
);
