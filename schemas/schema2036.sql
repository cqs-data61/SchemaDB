DROP DATABASE IF EXISTS "schema2036";
CREATE DATABASE "schema2036";
USE "schema2036";
CREATE TABLE "whr2016" (
	"id" INT,
	"country" VARCHAR,
	"score" NUMERIC,
	"overall rank" INT,
	"gdp per capita" NUMERIC,
	"social support" NUMERIC,
	"healthy life expectancy" NUMERIC,
	"freedom to make life choices" NUMERIC,
	"generosity" NUMERIC,
	"trust" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "whr2017" (
	"id" INT,
	"country" VARCHAR,
	"score" NUMERIC,
	"overall rank" INT,
	"gdp per capita" NUMERIC,
	"social support" NUMERIC,
	"healthy life expectancy" NUMERIC,
	"freedom to make life choices" NUMERIC,
	"generosity" NUMERIC,
	"trust" NUMERIC,
	"residual" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "whr2018" (
	"id" INT,
	"country" VARCHAR,
	"score" NUMERIC,
	"overall rank" INT,
	"gdp per capita" NUMERIC,
	"social support" NUMERIC,
	"healthy life expectancy" NUMERIC,
	"freedom to make life choices" NUMERIC,
	"generosity" NUMERIC,
	"perceptions of corruption" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "whr2019" (
	"id" INT,
	"country" VARCHAR,
	"score" NUMERIC,
	"overall rank" INT,
	"gdp per capita" NUMERIC,
	"social support" NUMERIC,
	"healthy life expectancy" NUMERIC,
	"freedom to make life choices" NUMERIC,
	"generosity" NUMERIC,
	"perceptions of corruption" NUMERIC,
	 PRIMARY KEY ("id")
);

CREATE TABLE "whr2020" (
	"id" INT,
	"country" VARCHAR,
	"score" NUMERIC,
	"overall rank" INT,
	"gdp per capita" NUMERIC,
	"social support" NUMERIC,
	"healthy life expectancy" NUMERIC,
	"freedom to make life choices" NUMERIC,
	"generosity" NUMERIC,
	"perceptions of corruption" NUMERIC,
	 PRIMARY KEY ("id")
);
