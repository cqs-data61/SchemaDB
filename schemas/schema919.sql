DROP DATABASE IF EXISTS "schema919";
CREATE DATABASE "schema919";
USE "schema919";
CREATE TABLE "users" (
	"idusers" INT,
	"email" VARCHAR,
	"name" VARCHAR,
	"last_name" VARCHAR,
	"country" VARCHAR,
	"phone" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("idusers")
);

CREATE TABLE "task_table" (
	"idtask" INT,
	"name_task" VARCHAR,
	"date_public" DATETIME,
	"date_final" DATETIME,
	"status" INT,
	"users_idusers" INT,
	 PRIMARY KEY ("idtask"),
	 CONSTRAINT "fkeycon_task_table_to_users" FOREIGN KEY ("users_idusers") REFERENCES "users" ("idusers")
);
