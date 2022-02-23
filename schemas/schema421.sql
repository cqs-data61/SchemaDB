DROP DATABASE IF EXISTS "schema421";
CREATE DATABASE "schema421";
USE "schema421";
CREATE TABLE "kvm_tasks" (
	"task_id" INTEGER,
	"user_id" INTEGER,
	"date" DATETIME,
	"date_gmt" DATETIME,
	"task_node" NVARCHAR,
	"task_event" NVARCHAR,
	"task_ping" NVARCHAR,
	"task_pong" NVARCHAR,
	 PRIMARY KEY ("task_id")
);

CREATE TABLE "kvm_hosts" (
	"kvm_id" INTEGER,
	"user_id" INTEGER,
	"date" DATETIME,
	"date_gmt" DATETIME,
	"kvm_cost" INTEGER,
	"kvm_rate" INTEGER,
	"kvm_last" INTEGER,
	"kvm_data" TEXT,
	 PRIMARY KEY ("kvm_id")
);

CREATE TABLE "user" (
	"user_id" INTEGER,
	"user_slug" NVARCHAR,
	"user_charge" INTEGER,
	"date_registered" DATETIME,
	"date_registered_gmt" DATETIME,
	"date_authorized" DATETIME,
	"date_authorized_gmt" DATETIME,
	"login" NVARCHAR,
	"password" NVARCHAR,
	"password_hash" NVARCHAR,
	"display_name" NVARCHAR,
	"email_address" NVARCHAR,
	"website_url" NVARCHAR,
	"is" NVARCHAR,
	 PRIMARY KEY ("user_id")
);
