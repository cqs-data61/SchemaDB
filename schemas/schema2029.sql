DROP DATABASE IF EXISTS "schema2029";
CREATE DATABASE "schema2029";
USE "schema2029";
CREATE TABLE "license" (
	"tenant_id" BIGSERIAL,
	"email" VARCHAR,
	"business_name" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"cost" REAL,
	"paid" REAL,
	 PRIMARY KEY ("tenant_id")
);

CREATE TABLE "bookables" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_bookables_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);

CREATE TABLE "projects" (
	"id" BIGSERIAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"start_date" DATE,
	"end_date" DATE,
	"total_days" INT,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_projects_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);

CREATE TABLE "tasks" (
	"id" BIGSERIAL,
	"task_name" VARCHAR,
	"project_fk" BIGINT,
	"date_of_registration" DATE,
	"status" VARCHAR,
	"total_worked" REAL,
	"date_of_publish" TIMESTAMP,
	"hours_of_working" REAL,
	"revision" INTEGER,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_tasks_to_projects" FOREIGN KEY ("project_fk") REFERENCES "projects" ("id"),
	 CONSTRAINT "fkeycon_tasks_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"email" VARCHAR,
	"name" VARCHAR,
	"surname" VARCHAR,
	"password" VARCHAR,
	"workplace" VARCHAR,
	"expertise_area" VARCHAR,
	"actived" VARCHAR,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_users_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);

CREATE TABLE "books" (
	"id" BIGSERIAL,
	"user_fk" BIGINT,
	"bookable_fk" BIGINT,
	"start_date" TIMESTAMP,
	"end_date" TIMESTAMP,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_books_to_users" FOREIGN KEY ("user_fk") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_books_to_bookables" FOREIGN KEY ("bookable_fk") REFERENCES "bookables" ("id"),
	 CONSTRAINT "fkeycon_books_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);

CREATE TABLE "assigned" (
	"id" BIGSERIAL,
	"user_fk" BIGINT,
	"task_fk" BIGINT,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_assigned_to_tasks" FOREIGN KEY ("task_fk") REFERENCES "tasks" ("id"),
	 CONSTRAINT "fkeycon_assigned_to_users" FOREIGN KEY ("user_fk") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_assigned_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);

CREATE TABLE "roles" (
	"id" BIGSERIAL,
	"user_fk" BIGINT,
	"role" VARCHAR,
	"tenant_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_roles_to_users" FOREIGN KEY ("user_fk") REFERENCES "users" ("id"),
	 CONSTRAINT "fkeycon_roles_to_license" FOREIGN KEY ("tenant_id") REFERENCES "license" ("tenant_id")
);
