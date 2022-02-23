DROP DATABASE IF EXISTS "schema1240";
CREATE DATABASE "schema1240";
USE "schema1240";
CREATE TABLE "net_users" (
	"net_user_id" VARCHAR,
	"password" VARCHAR,
	"deleted_time" TIMESTAMP,
	"created_time" TIMESTAMP,
	"updated_time" TIMESTAMP,
	 PRIMARY KEY ("net_user_id")
);

CREATE TABLE "application_metas" (
	"application_meta_id" VARCHAR,
	"deleted_time" TIMESTAMP,
	"created_time" TIMESTAMP,
	 PRIMARY KEY ("application_meta_id","created_time")
);
