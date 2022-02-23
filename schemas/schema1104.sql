DROP DATABASE IF EXISTS "schema1104";
CREATE DATABASE "schema1104";
USE "schema1104";
CREATE TABLE "remote_server" (
	"id" INT,
	"remote_server_alias" VARCHAR,
	"remote_ip" VARCHAR,
	"public_key" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scm" (
	"id" INT,
	"scm_info_alias" VARCHAR,
	"scm_alias" VARCHAR,
	"repository_ssh_url" VARCHAR,
	"is_private" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "scm_info" (
	"id" INT,
	"scm_type" VARCHAR,
	"scm_info_alias" VARCHAR,
	"username" VARCHAR,
	"personal_access_token" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ssh_config" (
	"id" INT,
	"host" VARCHAR,
	"host_name" VARCHAR,
	"identity_file_name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "deploy_history" (
	"id" INT,
	"deploy_stage" VARCHAR,
	"deploy_state" VARCHAR,
	"scenario_name" VARCHAR,
	"build_target" VARCHAR,
	"deploy_from" VARCHAR,
	"deploy_to" VARCHAR,
	"execution_date" DATETIME,
	 PRIMARY KEY ("id")
);
