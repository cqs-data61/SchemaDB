DROP DATABASE IF EXISTS "schema2128";
CREATE DATABASE "schema2128";
USE "schema2128";
CREATE TABLE "users" (
	"id" BIGINT,
	"name" VARCHAR,
	"email" VARCHAR,
	"email_verified_at" TIMESTAMP,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "rent_details" (
	"id" BIGINT,
	"product_id" BIGINT,
	"qty" INT,
	"daily" DOUBLE,
	"rent_id" BIGINT,
	"return_qty" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "rents" (
	"id" BIGINT,
	"id_client" BIGINT,
	"devolution_date" DATE,
	"total_daily" DOUBLE,
	"status" VARCHAR,
	"address" VARCHAR,
	"hour" VARCHAR,
	"validation" VARCHAR,
	"total_price" DOUBLE,
	"rent_date" DATE,
	"previous_paid" DOUBLE,
	"authorized_workers" LONGTEXT,
	"delivery_value" DOUBLE,
	"desconto" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "products" (
	"id" BIGINT,
	"name" VARCHAR,
	"units" INT,
	"qty_stock" INT,
	"price_cost" DOUBLE,
	"daily_value" DOUBLE,
	"thumb" VARCHAR,
	"is_rent" INT,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "failed_jobs" (
	"id" BIGINT,
	"connection" TEXT,
	"queue" TEXT,
	"payload" LONGTEXT,
	"exception" LONGTEXT,
	"failed_at" TIMESTAMP
);

CREATE TABLE "equip_out" (
	"id" BIGINT,
	"rent_id" BIGINT,
	"client_id" BIGINT,
	"product_id" BIGINT,
	"date" DATE,
	"qty" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "equip_in" (
	"id" BIGINT,
	"rent_id" BIGINT,
	"client_id" BIGINT,
	"product_id" BIGINT,
	"date" DATE,
	"qty" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "clients" (
	"id" BIGINT,
	"nome" VARCHAR,
	"endereco" VARCHAR,
	"bairro" VARCHAR,
	"cidade" VARCHAR,
	"estado" VARCHAR,
	"email" VARCHAR,
	"tel_cel" VARCHAR,
	"tel_comercio" VARCHAR,
	"tel_fixo" VARCHAR,
	"cpf" VARCHAR,
	"observacoes" LONGTEXT,
	"nome_empresa" VARCHAR,
	"cnpj" VARCHAR,
	"endereco_empresa" VARCHAR,
	"email_empresa" VARCHAR,
	"bairro_empresa" VARCHAR,
	"cidade_empresa" VARCHAR,
	"estado_empresa" VARCHAR,
	"formas_pagamento" VARCHAR,
	"img_contrato" VARCHAR,
	"contrato_social" VARCHAR,
	"junta_comercial" VARCHAR,
	"termo" VARCHAR,
	"aprovado" TINYINT,
	"tipo_cadastro" VARCHAR,
	"status" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "cash_flow" (
	"id" BIGINT,
	"date" DATE,
	"rent_id" BIGINT,
	"total_price" DOUBLE,
	"paid" DOUBLE,
	"total_paid" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
