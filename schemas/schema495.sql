DROP DATABASE IF EXISTS "schema495";
CREATE DATABASE "schema495";
USE "schema495";
CREATE TABLE "claim" (
	"claim_id" INT,
	"amount_claimed" DOUBLE,
	"amount_settled" DOUBLE,
	"benefit_id" INT,
	"claim_status" VARCHAR,
	"member_id" INT,
	"policy_id" INT,
	"provider_id" INT,
	"description" VARCHAR
);

CREATE TABLE "provider_policy" (
	"provider_id" INT,
	"provider_name" VARCHAR,
	"provider_address" VARCHAR,
	"policy_id" INT,
	"location" VARCHAR
);

CREATE TABLE "benefits" (
	"benefit_id" INT,
	"benefit_name" VARCHAR
);
