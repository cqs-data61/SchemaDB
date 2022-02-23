DROP DATABASE IF EXISTS "schema1109";
CREATE DATABASE "schema1109";
USE "schema1109";
CREATE TABLE "user_device" (
	"device_id" VARCHAR,
	"user" VARCHAR,
	"device_type" VARCHAR,
	"bz" VARCHAR
);

CREATE TABLE "user" (
	"openid" VARCHAR,
	"nickname" VARCHAR,
	"sex" INT,
	"language" VARCHAR,
	"country" VARCHAR,
	"province" VARCHAR,
	"city" VARCHAR,
	"headimgurl" VARCHAR,
	"subscribe_time" DATETIME,
	"remark" VARCHAR,
	"groupid" INT,
	"tagid_list" VARCHAR,
	"subscribe" INT,
	"device_id" VARCHAR,
	 PRIMARY KEY ("openid")
);

CREATE TABLE "switchdevice" (
	"device_id" VARCHAR,
	"device_type" VARCHAR,
	"onoffstatus" TINYINT,
	"data" VARCHAR,
	"create_time" DATETIME,
	"asy_error_code" INT,
	 PRIMARY KEY ("device_id")
);
