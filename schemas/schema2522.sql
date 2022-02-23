DROP DATABASE IF EXISTS "schema2522";
CREATE DATABASE "schema2522";
USE "schema2522";
CREATE TABLE "winequality`" (
	"wine_type" STRING,
	"fixed_acidity" NUMERIC,
	"volatile_acidity" NUMERIC,
	"citric_acid" FLOAT64,
	"residual_sugar" FLOAT64,
	"chlorides" NUMERIC,
	"free_sulfur_dioxide" FLOAT64,
	"total_sulfur_dioxide" FLOAT64,
	"density" NUMERIC,
	"ph" FLOAT64,
	"sulphates" FLOAT64,
	"alcohol" NUMERIC,
	"quality" INT64
);

CREATE TABLE "lcbowines`" (
	"wine_name" STRING,
	"link" STRING,
	"img" STRING,
	"bottle_size_ml" STRING,
	"alcohol_content" FLOAT64,
	"country" STRING,
	"winery" STRING,
	"sugar_content_gl" FLOAT64,
	"sweetness_descr" STRING,
	"style" STRING,
	"varietal" STRING,
	"price" FLOAT64,
	"category" STRING,
	"wine_desc" STRING
);
