DROP DATABASE IF EXISTS "schema1667";
CREATE DATABASE "schema1667";
USE "schema1667";
CREATE TABLE "us_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "uk_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "switzerland_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "new_zealand_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "japan_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "indonesia_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "euro_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "china_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "canada_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);

CREATE TABLE "australia_economics_data_raw" (
	"category" VARCHAR,
	"indicator" VARCHAR,
	"last" FLOAT,
	"previous" FLOAT,
	"injection_timestamp" TIMESTAMP
);
