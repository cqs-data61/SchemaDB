DROP DATABASE IF EXISTS "schema587";
CREATE DATABASE "schema587";
USE "schema587";
CREATE TABLE "store_info" (
	"biz_license_no" VARCHAR,
	"store_name" VARCHAR,
	"store_tel_num" VARCHAR,
	"register_date" VARCHAR,
	"holiday_list" VARCHAR,
	"biz_type" VARCHAR,
	"biz_name" VARCHAR,
	"repr_name" VARCHAR,
	"repr_mobile_number" VARCHAR,
	"repr_id" VARCHAR,
	"address" VARCHAR,
	"detail_address" VARCHAR,
	"store_id" VARCHAR,
	"status" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("biz_license_no")
);

CREATE TABLE "reservation_info" (
	"reservation_id" VARCHAR,
	"reservation_order_name" VARCHAR,
	"reservation_name" VARCHAR,
	"phone_number" VARCHAR,
	"reservation_date" VARCHAR,
	"reservation_time" VARCHAR,
	"request_memo" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("reservation_id")
);

CREATE TABLE "store_member" (
	"member_id" VARCHAR,
	"name" VARCHAR,
	"social_no" VARCHAR,
	"gender" VARCHAR,
	"address" VARCHAR,
	"grade_type" VARCHAR,
	"created" TIMESTAMP,
	"updated" TIMESTAMP,
	 PRIMARY KEY ("member_id")
);
