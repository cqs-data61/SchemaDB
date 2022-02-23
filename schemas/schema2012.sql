DROP DATABASE IF EXISTS "schema2012";
CREATE DATABASE "schema2012";
USE "schema2012";
CREATE TABLE "r_status" (
	"status_id" INTEGER,
	"r_status" VARCHAR,
	 PRIMARY KEY ("status_id")
);

CREATE TABLE "r_types" (
	"type_id" INTEGER,
	"r_type" VARCHAR,
	 PRIMARY KEY ("type_id")
);

CREATE TABLE "user_roles" (
	"role_id" INTEGER,
	"u_role" VARCHAR,
	 PRIMARY KEY ("role_id")
);

CREATE TABLE "users" (
	"user_id" INTEGER,
	"username" VARCHAR,
	"password" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"role_id" INTEGER,
	 CONSTRAINT "fk_users_role" FOREIGN KEY ("role_id") REFERENCES "user_roles" ("role_id")
);

CREATE TABLE "reimbursements" (
	"reim_id" INTEGER,
	"amount" DOUBLE,
	"submitted" DATE,
	"resolved" DATE,
	"description" VARCHAR,
	"author" INTEGER,
	"resolver" INTEGER,
	"status_id" INTEGER,
	"type_id" INTEGER,
	"receipt" LONGBLOB,
	 CONSTRAINT "fkeycon_reimbursements_to_r_types" FOREIGN KEY ("type_id") REFERENCES "r_types" ("type_id"),
	 CONSTRAINT "fkeycon_reimbursements_to_r_status" FOREIGN KEY ("status_id") REFERENCES "r_status" ("status_id"),
	 CONSTRAINT "fkeycon_reimbursements_to_users" FOREIGN KEY ("resolver") REFERENCES "users" ("user_id")
);
