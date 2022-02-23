DROP DATABASE IF EXISTS "schema2252";
CREATE DATABASE "schema2252";
USE "schema2252";
CREATE TABLE "procedures" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"duration" INTERVAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"login" VARCHAR,
	"password" VARCHAR,
	"role_id" BIGINT,
	"rating" DOUBLE PRECISION,
	"recall_count" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_roles" FOREIGN KEY ("role_id") REFERENCES "roles" ("id")
);

CREATE TABLE "users_procedures" (
	"user_id" BIGINT,
	"procedure_id" BIGINT,
	 PRIMARY KEY ("user_id","procedure_id"),
	 CONSTRAINT "fkeycon_users_procedures_to_users" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_users_procedures_to_procedures" FOREIGN KEY ("procedure_id") REFERENCES "procedures" ("id")
);

CREATE TABLE "appointments" (
	"id" BIGSERIAL,
	"procedure_id" BIGINT,
	"master_id" BIGINT,
	"client_id" BIGINT,
	"start_time" TIMESTAMP,
	"status" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_appointments_to_users" FOREIGN KEY ("client_id") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_appointments_to_procedures" FOREIGN KEY ("procedure_id") REFERENCES "procedures" ("id")
);
