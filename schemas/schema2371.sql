DROP DATABASE IF EXISTS "schema2371";
CREATE DATABASE "schema2371";
USE "schema2371";
CREATE TABLE "sales_positions" (
	"id" BIGSERIAL,
	"product_id" BIGINT,
	"sale_id" BIGINT,
	"price" INTEGER,
	"qty" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sales" (
	"id" BIGSERIAL,
	"manager_id" BIGINT,
	"customer_id" BIGINT,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" BIGSERIAL,
	"name" TEXT,
	"price" INTEGER,
	"qty" INTEGER,
	"active" BOOLEAN,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "managers_tokens" (
	"token" TEXT,
	"manager_id" BIGINT,
	"expire" TIMESTAMP,
	"created" TIMESTAMP
);

CREATE TABLE "customers_tokens" (
	"token" TEXT,
	"customer_id" BIGINT,
	"expire" TIMESTAMP,
	"created" TIMESTAMP
);

CREATE TABLE "managers" (
	"id" BIGSERIAL,
	"name" TEXT,
	"salary" INTEGER,
	"plan" INTEGER,
	"boss_id" BIGINT,
	"departament" TEXT,
	"phone" TEXT,
	"password" TEXT,
	"is_admin" BOOLEAN,
	"active" BOOLEAN,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" BIGSERIAL,
	"name" TEXT,
	"phone" TEXT,
	"password" TEXT,
	"active" BOOLEAN,
	"created" TIMESTAMP,
	 PRIMARY KEY ("id")
);
