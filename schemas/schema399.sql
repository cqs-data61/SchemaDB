DROP DATABASE IF EXISTS "schema399";
CREATE DATABASE "schema399";
USE "schema399";
CREATE TABLE "sync_generations" (
	"id" BIGSERIAL,
	"start_datetime" TIMESTAMP,
	"processed_datetime" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "repositories" (
	"id" BIGSERIAL,
	"last_change_datetime" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "servers" (
	"id" SERIAL,
	"server_type" SMALLINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "server_sync_log" (
	"sync_datetime" TIMESTAMP,
	"id_sync_generations" BIGINT,
	"id_servers" INTEGER,
	 PRIMARY KEY ("id_sync_generations","id_servers"),
	 CONSTRAINT "SERVERS_fk" FOREIGN KEY ("id_servers") REFERENCES "servers" ("id"),
	 CONSTRAINT "SYNC_GENERATIONS_fk" FOREIGN KEY ("id_sync_generations") REFERENCES "sync_generations" ("id")
);

CREATE TABLE "users" (
	"id" BIGSERIAL,
	"hash" CHARACTER,
	"is_invitation" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_repositories" (
	"id_users" BIGINT,
	"id_repositories" BIGINT,
	 PRIMARY KEY ("id_users","id_repositories"),
	 CONSTRAINT "REPOSITORIES_fk" FOREIGN KEY ("id_repositories") REFERENCES "repositories" ("id"),
	 CONSTRAINT "USERS_fk" FOREIGN KEY ("id_users") REFERENCES "users" ("id")
);

CREATE TABLE "databases" (
	"id" BIGSERIAL,
	"id_servers" INTEGER,
	"id_users" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "SERVERS_fk" FOREIGN KEY ("id_servers") REFERENCES "servers" ("id"),
	 CONSTRAINT "USERS_fk" FOREIGN KEY ("id_users") REFERENCES "users" ("id")
);

CREATE TABLE "repository_sync_log" (
	"add_datetime" TIMESTAMP,
	"id_repositories" BIGINT,
	"id_databases" BIGINT,
	"id_sync_generations" BIGINT,
	"id_users" BIGINT,
	 PRIMARY KEY ("add_datetime","id_repositories","id_databases"),
	 CONSTRAINT "SYNC_GENERATIONS_fk" FOREIGN KEY ("id_sync_generations") REFERENCES "sync_generations" ("id"),
	 CONSTRAINT "REPOSITORIES_fk" FOREIGN KEY ("id_repositories") REFERENCES "repositories" ("id"),
	 CONSTRAINT "DATABASES_fk" FOREIGN KEY ("id_databases") REFERENCES "databases" ("id"),
	 CONSTRAINT "USERS_fk" FOREIGN KEY ("id_users") REFERENCES "users" ("id")
);

CREATE TABLE "database_repositories" (
	"id_databases" BIGINT,
	"id_repositories" BIGINT,
	 PRIMARY KEY ("id_databases","id_repositories"),
	 CONSTRAINT "DATABASES_fk" FOREIGN KEY ("id_databases") REFERENCES "databases" ("id"),
	 CONSTRAINT "REPOSITORIES_fk" FOREIGN KEY ("id_repositories") REFERENCES "repositories" ("id")
);
