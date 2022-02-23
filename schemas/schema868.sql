DROP DATABASE IF EXISTS "schema868";
CREATE DATABASE "schema868";
USE "schema868";
CREATE TABLE "system_dict" (
	"uuid" CHAR,
	"parent_uuid" CHAR,
	"tenant_uuid" CHAR,
	"code" VARCHAR,
	"type" TINYINT,
	"name" VARCHAR,
	"value" VARCHAR,
	"sequence" TINYINT,
	"extend_field" LONGTEXT,
	"description" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"remark" LONGTEXT,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "system_dict_FK" FOREIGN KEY ("parent_uuid") REFERENCES "system_dict" ("uuid")
);

CREATE TABLE "wx_user_info" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"open_id" VARCHAR,
	"union_id" VARCHAR,
	"avatar_url" VARCHAR,
	"nickname" VARCHAR,
	"gender" TINYINT,
	"mobile" VARCHAR,
	"country" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"language" VARCHAR,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "user" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"name" VARCHAR,
	"gender" TINYINT,
	"mobile" VARCHAR,
	"wx_uuid" CHAR,
	"channel" TINYINT,
	"state" TINYINT,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "tenant" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"name" VARCHAR,
	"legal_person" VARCHAR,
	"contactor" VARCHAR,
	"contactor_mobile" VARCHAR,
	"deleted" BIT,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "system_log" (
	"id" BIGINT,
	"tenant_uuid" CHAR,
	"account_uuid" CHAR,
	"account_name" VARCHAR,
	"account_type" TINYINT,
	"level" TINYINT,
	"target" TINYINT,
	"type" TINYINT,
	"linked" CHAR,
	"ip" VARCHAR,
	"content" TEXT,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "system_http_log" (
	"id" BIGINT,
	"tenant_uuid" CHAR,
	"module" TINYINT,
	"path" VARCHAR,
	"headers" TEXT,
	"parameter_map" TEXT,
	"method" VARCHAR,
	"duration" BIGINT,
	"time" DATETIME,
	"status" INT,
	"request_body" MEDIUMTEXT,
	"response_body" MEDIUMTEXT,
	"ip" VARCHAR,
	"created_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "route" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"path" VARCHAR,
	"account_type" TINYINT,
	"type" TINYINT,
	"permissions" LONGTEXT,
	"caption" VARCHAR,
	"description" VARCHAR,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "room_price" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"room_uuid" CHAR,
	"type" TINYINT,
	"price" DECIMAL,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "room" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"order_item_uuid" CHAR,
	"apartment_uuid" CHAR,
	"type_uuid" CHAR,
	"floor_number" VARCHAR,
	"unit_number" VARCHAR,
	"number" VARCHAR,
	"price" DECIMAL,
	"prices" LONGTEXT,
	"state" TINYINT,
	"sale_times" INT,
	"income" DECIMAL,
	"deleted" BIT,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "role" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"account_type" TINYINT,
	"code" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "role_route" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"role_uuid" CHAR,
	"route_uuid" CHAR,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "role_route_FK_1" FOREIGN KEY ("route_uuid") REFERENCES "route" ("uuid"),
	 CONSTRAINT "role_route_FK" FOREIGN KEY ("role_uuid") REFERENCES "role" ("uuid")
);

CREATE TABLE "account_role" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"account_uuid" CHAR,
	"role_uuid" CHAR,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "account_role_FK" FOREIGN KEY ("role_uuid") REFERENCES "role" ("uuid")
);

CREATE TABLE "resource" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"type" TINYINT,
	"file_type" TINYINT,
	"file_size" BIGINT,
	"file_name" VARCHAR,
	"owner_type" TINYINT,
	"owner_uuid" CHAR,
	"visit_path" VARCHAR,
	"remark" VARCHAR,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "product" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"name" VARCHAR,
	"price" DECIMAL,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "order" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"apartment_uuid" CHAR,
	"user_uuid" CHAR,
	"number" CHAR,
	"biz_number" VARCHAR,
	"channel" TINYINT,
	"original_price" DECIMAL,
	"paid_price" DECIMAL,
	"deposit" DECIMAL,
	"deposit_state" TINYINT,
	"deposit_deduction" DECIMAL,
	"state" TINYINT,
	"type" TINYINT,
	"user_type" TINYINT,
	"account_type" TINYINT,
	"main_name" VARCHAR,
	"main_mobile" VARCHAR,
	"paid_at" DATETIME,
	"canceled_at" DATETIME,
	"finished_at" DATETIME,
	"commented_at" DATETIME,
	"operator_uuid" CHAR,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"created_time_at" TIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "order_product" (
	"uuid" CHAR,
	"order_uuid" CHAR,
	"tenant_uuid" CHAR,
	"product_uuid" CHAR,
	"product_name" VARCHAR,
	"product_price" DECIMAL,
	"product_count" TINYINT,
	"total_price" DECIMAL,
	"paid_by_deposit" BIT,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "order_product_FK_1" FOREIGN KEY ("product_uuid") REFERENCES "product" ("uuid"),
	 CONSTRAINT "order_product_FK" FOREIGN KEY ("order_uuid") REFERENCES "order" ("uuid")
);

CREATE TABLE "order_item" (
	"uuid" CHAR,
	"order_uuid" CHAR,
	"tenant_uuid" CHAR,
	"apartment_uuid" CHAR,
	"room_uuid" CHAR,
	"name" VARCHAR,
	"mobile" VARCHAR,
	"price_type" TINYINT,
	"original_price" DECIMAL,
	"paid_price" DECIMAL,
	"state" TINYINT,
	"lodging_type" TINYINT,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"created_time_at" TIME,
	"updated_at" DATETIME,
	"live_at" DATETIME,
	"leave_at" DATETIME,
	 PRIMARY KEY ("uuid"),
	 CONSTRAINT "order_item_FK" FOREIGN KEY ("order_uuid") REFERENCES "order" ("uuid")
);

CREATE TABLE "daily_statistics" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"channel" TINYINT,
	"original_price" DECIMAL,
	"paid_price" DECIMAL,
	"deposit" DECIMAL,
	"deposit_refunded" DECIMAL,
	"deposit_deduction" DECIMAL,
	"product_income" DECIMAL,
	"sale_times" INT,
	"statistics_date" DATE,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "comm_province" (
	"code" CHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "comm_city" (
	"code" CHAR,
	"name" VARCHAR,
	"province_code" CHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "comm_area" (
	"code" CHAR,
	"name" VARCHAR,
	"city_code" CHAR,
	 PRIMARY KEY ("code")
);

CREATE TABLE "apartment" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"name" VARCHAR,
	"short_name" VARCHAR,
	"area_code" CHAR,
	"address" VARCHAR,
	"longitude" DOUBLE,
	"latitude" DOUBLE,
	"geohash4" CHAR,
	"contactor" VARCHAR,
	"contactor_mobile" VARCHAR,
	"state" TINYINT,
	"sale_times" INT,
	"income" DECIMAL,
	"deleted" BIT,
	"remark" LONGTEXT,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);

CREATE TABLE "account" (
	"uuid" CHAR,
	"tenant_uuid" CHAR,
	"user_uuid" CHAR,
	"account" VARCHAR,
	"type" TINYINT,
	"salt" VARCHAR,
	"password" VARCHAR,
	"state" TINYINT,
	"device" VARCHAR,
	"user_agent" TEXT,
	"remark" LONGTEXT,
	"last_login_at" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("uuid")
);
