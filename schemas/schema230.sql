DROP DATABASE IF EXISTS "schema230";
CREATE DATABASE "schema230";
USE "schema230";
CREATE TABLE "emb_studio_service" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"type_id" BIGINT,
	"doctor_id" BIGINT,
	"studio_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_studio_product" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"studio_id" BIGINT,
	"feature" VARCHAR,
	"fee" DECIMAL,
	"name" VARCHAR,
	"description" VARCHAR,
	"cover" VARCHAR,
	"stick" VARCHAR,
	"attribute" VARCHAR,
	"field_c" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_studio_collect" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"studio_id" BIGINT,
	"customer_id" BIGINT,
	"create_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_studios_photos" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"studio_id" BIGINT,
	"photo" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_studio" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"name" VARCHAR,
	"description" VARCHAR,
	"work_time" DATETIME,
	"fee" DECIMAL,
	"studio_site" VARCHAR,
	"cover" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"district" VARCHAR,
	"longitude" DECIMAL,
	"latitude" DECIMAL,
	"contact" VARCHAR,
	"phone" VARCHAR,
	"studio_phone" VARCHAR,
	"is_stick" VARCHAR,
	"tag" VARCHAR,
	"field_c" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_service_type" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"name" VARCHAR,
	"pid" BIGINT,
	"cover" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_products_photos" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"product_id" BIGINT,
	"photo" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_doctor" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"name" VARCHAR,
	"sex" VARCHAR,
	"studio_id" BIGINT,
	"description" VARCHAR,
	"work_time" DATETIME,
	"cover" VARCHAR,
	"field_a" VARCHAR,
	"field_b" VARCHAR,
	"field_c" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_customer" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"name" VARCHAR,
	"phone" VARCHAR,
	"birthday" DATETIME,
	"verified" INT,
	"sex" VARCHAR,
	"wechat" VARCHAR,
	"description" VARCHAR,
	"cover" VARCHAR,
	"longitude" DECIMAL,
	"latitude" DECIMAL,
	"create_time" DATETIME,
	"openid" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emb_appointment" (
	"id" BIGINT,
	"org_id" BIGINT,
	"org_tag" VARCHAR,
	"studio_id" BIGINT,
	"doctor_id" BIGINT,
	"customer_id" BIGINT,
	"status" VARCHAR,
	"fee" DECIMAL,
	"create_time" DATETIME,
	"appointment_time" DATETIME,
	"close_time" DATETIME,
	"phone" VARCHAR,
	"customer_name" VARCHAR,
	"field_c" VARCHAR,
	 PRIMARY KEY ("id")
);
