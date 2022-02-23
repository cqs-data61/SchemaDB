DROP DATABASE IF EXISTS "schema2166";
CREATE DATABASE "schema2166";
USE "schema2166";
CREATE TABLE "t_supplier" (
	"code" VARCHAR,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"address" VARCHAR,
	"tellphone" VARCHAR,
	"email" VARCHAR,
	"contacts" VARCHAR,
	"contact_phone" VARCHAR,
	"remark" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("code")
);

CREATE TABLE "t_staff" (
	"code" VARCHAR,
	"name" VARCHAR,
	"password" VARCHAR,
	"level" VARCHAR,
	"phone" VARCHAR,
	"remark" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("code")
);

CREATE TABLE "t_purchase" (
	"code" VARCHAR,
	"detail_code" VARCHAR,
	"staff_code" VARCHAR,
	"commodity_code" VARCHAR,
	"num" INT,
	"total_price" DECIMAL,
	"remark" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("code")
);

CREATE TABLE "t_commodity" (
	"code" VARCHAR,
	"name" VARCHAR,
	"price" DECIMAL,
	"supplier_code" VARCHAR,
	"introduction" VARCHAR,
	"remark" VARCHAR,
	"create_time" DATETIME,
	 PRIMARY KEY ("code")
);
