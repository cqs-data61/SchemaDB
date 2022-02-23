DROP DATABASE IF EXISTS "schema2173";
CREATE DATABASE "schema2173";
USE "schema2173";
CREATE TABLE "guacamole_entity" (
	"entity_id" INT,
	"name" VARCHAR,
	"type" ENUM,
	 PRIMARY KEY ("entity_id")
);

CREATE TABLE "guacamole_system_permission" (
	"entity_id" INT,
	"permission" ENUM,
	 PRIMARY KEY ("entity_id","permission"),
	 CONSTRAINT "guacamole_system_permission_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id")
);

CREATE TABLE "guacamole_user_group" (
	"user_group_id" INT,
	"entity_id" INT,
	"disabled" BOOLEAN,
	 PRIMARY KEY ("user_group_id"),
	 CONSTRAINT "guacamole_user_group_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id")
);

CREATE TABLE "guacamole_user_group_permission" (
	"entity_id" INT,
	"affected_user_group_id" INT,
	"permission" ENUM,
	 PRIMARY KEY ("entity_id","affected_user_group_id","permission"),
	 CONSTRAINT "guacamole_user_group_permission_affected_user_group" FOREIGN KEY ("affected_user_group_id") REFERENCES "guacamole_user_group" ("user_group_id"),
	 CONSTRAINT "guacamole_user_group_permission_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id")
);

CREATE TABLE "guacamole_user_group_attribute" (
	"user_group_id" INT,
	"attribute_name" VARCHAR,
	"attribute_value" VARCHAR,
	 PRIMARY KEY ("user_group_id","attribute_name"),
	 CONSTRAINT "guacamole_user_group_attribute_ibfk_1" FOREIGN KEY ("user_group_id") REFERENCES "guacamole_user_group" ("user_group_id")
);

CREATE TABLE "guacamole_user_group_member" (
	"user_group_id" INT,
	"member_entity_id" INT,
	 PRIMARY KEY ("user_group_id","member_entity_id"),
	 CONSTRAINT "guacamole_user_group_member_parent_id" FOREIGN KEY ("user_group_id") REFERENCES "guacamole_user_group" ("user_group_id"),
	 CONSTRAINT "guacamole_user_group_member_entity_id" FOREIGN KEY ("member_entity_id") REFERENCES "guacamole_entity" ("entity_id")
);

CREATE TABLE "guacamole_user" (
	"user_id" INT,
	"entity_id" INT,
	"password_hash" BINARY,
	"password_salt" BINARY,
	"password_date" DATETIME,
	"disabled" BOOLEAN,
	"expired" BOOLEAN,
	"access_window_start" TIME,
	"access_window_end" TIME,
	"valid_from" DATE,
	"valid_until" DATE,
	"timezone" VARCHAR,
	"full_name" VARCHAR,
	"email_address" VARCHAR,
	"organization" VARCHAR,
	"organizational_role" VARCHAR,
	 PRIMARY KEY ("user_id"),
	 CONSTRAINT "guacamole_user_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id")
);

CREATE TABLE "guacamole_user_password_history" (
	"password_history_id" INT,
	"user_id" INT,
	"password_hash" BINARY,
	"password_salt" BINARY,
	"password_date" DATETIME,
	 PRIMARY KEY ("password_history_id"),
	 CONSTRAINT "guacamole_user_password_history_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "guacamole_user" ("user_id")
);

CREATE TABLE "guacamole_user_history" (
	"history_id" INT,
	"user_id" INT,
	"username" VARCHAR,
	"remote_host" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "guacamole_user_history_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "guacamole_user" ("user_id")
);

CREATE TABLE "guacamole_user_permission" (
	"entity_id" INT,
	"affected_user_id" INT,
	"permission" ENUM,
	 PRIMARY KEY ("entity_id","affected_user_id","permission"),
	 CONSTRAINT "guacamole_user_permission_ibfk_1" FOREIGN KEY ("affected_user_id") REFERENCES "guacamole_user" ("user_id"),
	 CONSTRAINT "guacamole_user_permission_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id")
);

CREATE TABLE "guacamole_user_attribute" (
	"user_id" INT,
	"attribute_name" VARCHAR,
	"attribute_value" VARCHAR,
	 PRIMARY KEY ("user_id","attribute_name"),
	 CONSTRAINT "guacamole_user_attribute_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "guacamole_user" ("user_id")
);

CREATE TABLE "guacamole_connection_group" (
	"connection_group_id" INT,
	"parent_id" INT,
	"connection_group_name" VARCHAR,
	"type" ENUM,
	"max_connections" INT,
	"max_connections_per_user" INT,
	"enable_session_affinity" BOOLEAN,
	 PRIMARY KEY ("connection_group_id"),
	 CONSTRAINT "guacamole_connection_group_ibfk_1" FOREIGN KEY ("parent_id") REFERENCES "guacamole_connection_group" ("connection_group_id")
);

CREATE TABLE "guacamole_connection_group_permission" (
	"entity_id" INT,
	"connection_group_id" INT,
	"permission" ENUM,
	 PRIMARY KEY ("entity_id","connection_group_id","permission"),
	 CONSTRAINT "guacamole_connection_group_permission_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id"),
	 CONSTRAINT "guacamole_connection_group_permission_ibfk_1" FOREIGN KEY ("connection_group_id") REFERENCES "guacamole_connection_group" ("connection_group_id")
);

CREATE TABLE "guacamole_connection_group_attribute" (
	"connection_group_id" INT,
	"attribute_name" VARCHAR,
	"attribute_value" VARCHAR,
	 PRIMARY KEY ("connection_group_id","attribute_name"),
	 CONSTRAINT "guacamole_connection_group_attribute_ibfk_1" FOREIGN KEY ("connection_group_id") REFERENCES "guacamole_connection_group" ("connection_group_id")
);

CREATE TABLE "guacamole_connection" (
	"connection_id" INT,
	"connection_name" VARCHAR,
	"parent_id" INT,
	"protocol" VARCHAR,
	"proxy_port" INTEGER,
	"proxy_hostname" VARCHAR,
	"proxy_encryption_method" ENUM,
	"max_connections" INT,
	"max_connections_per_user" INT,
	"connection_weight" INT,
	"failover_only" BOOLEAN,
	 PRIMARY KEY ("connection_id"),
	 CONSTRAINT "guacamole_connection_ibfk_1" FOREIGN KEY ("parent_id") REFERENCES "guacamole_connection_group" ("connection_group_id")
);

CREATE TABLE "guacamole_connection_permission" (
	"entity_id" INT,
	"connection_id" INT,
	"permission" ENUM,
	 PRIMARY KEY ("entity_id","connection_id","permission"),
	 CONSTRAINT "guacamole_connection_permission_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id"),
	 CONSTRAINT "guacamole_connection_permission_ibfk_1" FOREIGN KEY ("connection_id") REFERENCES "guacamole_connection" ("connection_id")
);

CREATE TABLE "guacamole_connection_attribute" (
	"connection_id" INT,
	"attribute_name" VARCHAR,
	"attribute_value" VARCHAR,
	 PRIMARY KEY ("connection_id","attribute_name"),
	 CONSTRAINT "guacamole_connection_attribute_ibfk_1" FOREIGN KEY ("connection_id") REFERENCES "guacamole_connection" ("connection_id")
);

CREATE TABLE "guacamole_connection_parameter" (
	"connection_id" INT,
	"parameter_name" VARCHAR,
	"parameter_value" VARCHAR,
	 PRIMARY KEY ("connection_id","parameter_name"),
	 CONSTRAINT "guacamole_connection_parameter_ibfk_1" FOREIGN KEY ("connection_id") REFERENCES "guacamole_connection" ("connection_id")
);

CREATE TABLE "guacamole_sharing_profile" (
	"sharing_profile_id" INT,
	"sharing_profile_name" VARCHAR,
	"primary_connection_id" INT,
	 PRIMARY KEY ("sharing_profile_id"),
	 CONSTRAINT "guacamole_sharing_profile_ibfk_1" FOREIGN KEY ("primary_connection_id") REFERENCES "guacamole_connection" ("connection_id")
);

CREATE TABLE "guacamole_connection_history" (
	"history_id" INT,
	"user_id" INT,
	"username" VARCHAR,
	"remote_host" VARCHAR,
	"connection_id" INT,
	"connection_name" VARCHAR,
	"sharing_profile_id" INT,
	"sharing_profile_name" VARCHAR,
	"start_date" DATETIME,
	"end_date" DATETIME,
	 PRIMARY KEY ("history_id"),
	 CONSTRAINT "guacamole_connection_history_ibfk_1" FOREIGN KEY ("user_id") REFERENCES "guacamole_user" ("user_id"),
	 CONSTRAINT "guacamole_connection_history_ibfk_3" FOREIGN KEY ("sharing_profile_id") REFERENCES "guacamole_sharing_profile" ("sharing_profile_id"),
	 CONSTRAINT "guacamole_connection_history_ibfk_2" FOREIGN KEY ("connection_id") REFERENCES "guacamole_connection" ("connection_id")
);

CREATE TABLE "guacamole_sharing_profile_permission" (
	"entity_id" INTEGER,
	"sharing_profile_id" INTEGER,
	"permission" ENUM,
	 PRIMARY KEY ("entity_id","sharing_profile_id","permission"),
	 CONSTRAINT "guacamole_sharing_profile_permission_entity" FOREIGN KEY ("entity_id") REFERENCES "guacamole_entity" ("entity_id"),
	 CONSTRAINT "guacamole_sharing_profile_permission_ibfk_1" FOREIGN KEY ("sharing_profile_id") REFERENCES "guacamole_sharing_profile" ("sharing_profile_id")
);

CREATE TABLE "guacamole_sharing_profile_attribute" (
	"sharing_profile_id" INT,
	"attribute_name" VARCHAR,
	"attribute_value" VARCHAR,
	 PRIMARY KEY ("sharing_profile_id","attribute_name"),
	 CONSTRAINT "guacamole_sharing_profile_attribute_ibfk_1" FOREIGN KEY ("sharing_profile_id") REFERENCES "guacamole_sharing_profile" ("sharing_profile_id")
);

CREATE TABLE "guacamole_sharing_profile_parameter" (
	"sharing_profile_id" INTEGER,
	"parameter_name" VARCHAR,
	"parameter_value" VARCHAR,
	 PRIMARY KEY ("sharing_profile_id","parameter_name"),
	 CONSTRAINT "guacamole_sharing_profile_parameter_ibfk_1" FOREIGN KEY ("sharing_profile_id") REFERENCES "guacamole_sharing_profile" ("sharing_profile_id")
);
