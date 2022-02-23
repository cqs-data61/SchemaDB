DROP DATABASE IF EXISTS "schema2336";
CREATE DATABASE "schema2336";
USE "schema2336";
CREATE TABLE "sale_positions" (
	"id" BIGSERIAL,
	"sale_id" BIGINT,
	"product_id" BIGINT,
	"name" TEXT,
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

CREATE TABLE "customers_tokens" (
	"token" TEXT,
	"customer_id" BIGINT,
	"expire" TIMESTAMP,
	"created" TIMESTAMP
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

CREATE TABLE "managers" (
	"id" BIGSERIAL,
	"name" TEXT,
	"login" TEXT,
	"password" TEXT,
	"salary" INTEGER,
	"plan" INTEGER,
	"boss_id" BIGINT,
	"department" TEXT,
	"active" BOOLEAN,
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
