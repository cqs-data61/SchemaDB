DROP DATABASE IF EXISTS "schema478";
CREATE DATABASE "schema478";
USE "schema478";
CREATE TABLE "most_recent_postcode_user_pageviews_by_year" (
	"sk_mrpupy" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "most_recent_postcode_user_pageviews_by_month" (
	"sk_mrpupm" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "most_recent_postcode_user_pageviews_by_hour" (
	"sk_mrpuph" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "most_recent_postcode_user_pageviews_by_day" (
	"sk_mrpupd" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "most_recent_postcode_user_pageviews" (
	"sk_mrpup" TEXT,
	"id" INTEGER,
	"pageview_dt" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "all_time_postcode_user_pageviews_by_year" (
	"sk_atpupy" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "all_time_postcode_user_pageviews_by_month" (
	"sk_atpupm" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "all_time_postcode_user_pageviews_by_hour" (
	"sk_atpuph" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "all_time_postcode_user_pageviews_by_day" (
	"sk_atpupd" TEXT,
	"id" INTEGER,
	"pageview_hour" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "all_time_postcode_user_pageviews" (
	"sk_atpup" TEXT,
	"id" INTEGER,
	"pageview_dt" TIMESTAMP,
	"postcode" CHARACTER VARYING,
	"url" TEXT,
	"total_pageviews" BIGINT
);

CREATE TABLE "users_snapshot" (
	"id" INTEGER,
	"postcode" CHARACTER VARYING,
	"dbt_scd_id" TEXT,
	"dbt_updated_at" TIMESTAMP,
	"dbt_valid_from" TIMESTAMP,
	"dbt_valid_to" TIMESTAMP
);

CREATE TABLE "pageviews" (
	"user_id" INTEGER,
	"timestamp" TIMESTAMP,
	"url" TEXT
);

CREATE TABLE "users_extract" (
	"id" INT,
	"postcode" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pageviews_extract" (
	"user_id" INT,
	"timestamp" TIMESTAMP,
	"url" TEXT
);
