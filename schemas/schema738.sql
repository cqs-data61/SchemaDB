DROP DATABASE IF EXISTS "schema738";
CREATE DATABASE "schema738";
USE "schema738";
CREATE TABLE "predict" (
	"weifactor1" NUMERIC,
	"weifactor2" NUMERIC,
	"weifactor3" NUMERIC,
	"weifactor4" NUMERIC,
	"weifactor5" NUMERIC,
	"weifactor6" NUMERIC
);

CREATE TABLE "impfactor" (
	"factor1" VARCHAR,
	"factor2" VARCHAR,
	"factor3" VARCHAR,
	"factor4" VARCHAR,
	"factor5" VARCHAR
);

CREATE TABLE "rawdata" (
	"age" NUMERIC,
	"sex" NUMERIC,
	"cp" NUMERIC,
	"trestbps" NUMERIC,
	"chol" NUMERIC,
	"fbs" NUMERIC,
	"restecg" NUMERIC,
	"thalach" NUMERIC,
	"exang" NUMERIC,
	"oldpeak" NUMERIC,
	"slope" NUMERIC,
	"ca" NUMERIC,
	"thal" NUMERIC,
	"target" NUMERIC
);
