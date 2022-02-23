DROP DATABASE IF EXISTS "schema1443";
CREATE DATABASE "schema1443";
USE "schema1443";
CREATE TABLE "reverse_tunnels" (
	"id" VARCHAR,
	"created_at" TIMESTAMP,
	"public_key" TEXT,
	"private_key" TEXT,
	"port" INTEGER,
	"ssh_port" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tunnels" (
	"id" VARCHAR,
	"created_at" TIMESTAMP,
	"public_key" TEXT,
	"private_key" TEXT,
	"port" INTEGER,
	"server_endpoint" TEXT,
	"server_port" INTEGER,
	"service_endpoint" TEXT,
	"service_port" INTEGER,
	 PRIMARY KEY ("id")
);
