DROP DATABASE IF EXISTS "schema486";
CREATE DATABASE "schema486";
USE "schema486";
CREATE TABLE "reservation_waitlist_requests" (
	"reservation_waitlist_request_id" MEDIUMINT,
	"user_id" MEDIUMINT,
	"resource_id" SMALLINT,
	"start_date" DATETIME,
	"end_date" DATETIME,
	 PRIMARY KEY ("reservation_waitlist_request_id")
);

CREATE TABLE "announcement_resources" (
	"announcementid" MEDIUMINT,
	"resource_id" SMALLINT,
	 PRIMARY KEY ("announcementid","resource_id")
);

CREATE TABLE "announcement_groups" (
	"announcementid" MEDIUMINT,
	"group_id" SMALLINT,
	 PRIMARY KEY ("announcementid","group_id")
);

CREATE TABLE "peak_times" (
	"peak_times_id" MEDIUMINT,
	"schedule_id" SMALLINT,
	"all_day" TINYINT,
	"start_time" VARCHAR,
	"end_time" VARCHAR,
	"every_day" TINYINT,
	"peak_days" VARCHAR,
	"all_year" TINYINT,
	"begin_month" TINYINT,
	"begin_day" TINYINT,
	"end_month" TINYINT,
	"end_day" TINYINT,
	 PRIMARY KEY ("peak_times_id")
);

CREATE TABLE "reservation_guests" (
	"reservation_instance_id" INT,
	"email" VARCHAR,
	"reservation_user_level" TINYINT,
	 PRIMARY KEY ("reservation_instance_id","email")
);

CREATE TABLE "custom_attribute_entities" (
	"custom_attribute_id" MEDIUMINT,
	"entity_id" MEDIUMINT,
	 PRIMARY KEY ("custom_attribute_id","entity_id")
);

CREATE TABLE "resource_type_assignment" (
	"resource_id" SMALLINT,
	"resource_type_id" MEDIUMINT,
	 PRIMARY KEY ("resource_id","resource_type_id")
);

CREATE TABLE "resource_accessories" (
	"resource_accessory_id" MEDIUMINT,
	"resource_id" SMALLINT,
	"accessory_id" SMALLINT,
	"minimum_quantity" SMALLINT,
	"maximum_quantity" SMALLINT,
	 PRIMARY KEY ("resource_accessory_id")
);

CREATE TABLE "reservation_color_rules" (
	"reservation_color_rule_id" MEDIUMINT,
	"custom_attribute_id" MEDIUMINT,
	"attribute_type" SMALLINT,
	"required_value" TEXT,
	"comparison_type" SMALLINT,
	"color" VARCHAR,
	 PRIMARY KEY ("reservation_color_rule_id")
);
