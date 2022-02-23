DROP DATABASE IF EXISTS "schema1617";
CREATE DATABASE "schema1617";
USE "schema1617";
CREATE TABLE "secret_keys" (
	"secret_key_id" VARCHAR,
	"secret_key_usage" VARCHAR,
	"secret_key_value" VARCHAR,
	 PRIMARY KEY ("secret_key_id")
);

CREATE TABLE "order_details" (
	"order_detail_id" VARCHAR,
	"order_detail_status" INT,
	"order_detail_amount" INT,
	"order_detail_mc_name" VARCHAR,
	"order_detail_mc_phone" VARCHAR,
	"order_detail_mc_email" VARCHAR,
	"order_detail_ec_name" VARCHAR,
	"order_detail_ec_phone" VARCHAR,
	"order_detail_ec_email" VARCHAR,
	"order_detail_for_testing" INT,
	"order_detail_visible_on_web" INT,
	"order_detail_certificate" VARCHAR,
	"fk_order_id_for_odd" VARCHAR,
	 PRIMARY KEY ("order_detail_id")
);

CREATE TABLE "members" (
	"member_id" VARCHAR,
	"member_registered_date" DATETIME,
	"member_status" INT,
	"member_account" VARCHAR,
	"member_password" VARCHAR,
	"member_nickname" VARCHAR,
	"member_name" VARCHAR,
	"member_phone" VARCHAR,
	"member_avatar_url" VARCHAR,
	"member_ec_name" VARCHAR,
	"member_ec_phone" VARCHAR,
	"member_ec_email" VARCHAR,
	"member_session" VARCHAR,
	"member_signin_time" DATETIME,
	"member_signin_timeout" DATETIME,
	"member_for_testing" INT,
	"member_visible_on_web" INT,
	 PRIMARY KEY ("member_id")
);

CREATE TABLE "orders" (
	"order_id" VARCHAR,
	"order_status" INT,
	"order_date" DATETIME,
	"order_total_consumption" INT,
	"order_total_discount" INT,
	"order_mc_name" VARCHAR,
	"order_mc_phone" VARCHAR,
	"order_mc_email" VARCHAR,
	"order_ec_name" VARCHAR,
	"order_ec_phone" VARCHAR,
	"order_ec_email" VARCHAR,
	"order_for_testing" INT,
	"order_visible_on_web" INT,
	"fk_member_id_for_od" VARCHAR,
	 PRIMARY KEY ("order_id"),
	 CONSTRAINT "FK_MEMBER_ID_for_OD" FOREIGN KEY ("fk_member_id_for_od") REFERENCES "members" ("member_id")
);

CREATE TABLE "edm_list" (
	"edm_id" VARCHAR,
	"edm_registered_date" DATETIME,
	"edm_status" INT,
	"edm_address" VARCHAR,
	 PRIMARY KEY ("edm_id")
);

CREATE TABLE "departure_location" (
	"location_id" VARCHAR,
	"location_name" VARCHAR,
	"location_lng" VARCHAR,
	"location_lat" VARCHAR,
	"location_description" VARCHAR,
	"location_visible_on_web" INT,
	 PRIMARY KEY ("location_id")
);

CREATE TABLE "category" (
	"category_id" VARCHAR,
	"category_name" VARCHAR,
	"category_visible_on_web" INT,
	 PRIMARY KEY ("category_id")
);

CREATE TABLE "projects" (
	"project_id" VARCHAR,
	"project_status" INT,
	"project_name" VARCHAR,
	"project_avatar_url" VARCHAR,
	"project_carousel_url" VARCHAR,
	"project_original_price_per_person" INT,
	"project_min_num_of_people" INT,
	"project_max_num_of_people" INT,
	"project_summary" VARCHAR,
	"project_descripition" VARCHAR,
	"project_visible_on_web" INT,
	"project_for_testing" INT,
	"fk_category_id_for_pj" VARCHAR,
	"fk_location_id_for_pj" VARCHAR,
	 PRIMARY KEY ("project_id"),
	 CONSTRAINT "FK_LOCATION_ID_for_PJ" FOREIGN KEY ("fk_location_id_for_pj") REFERENCES "departure_location" ("location_id"),
	 CONSTRAINT "FK_CATEGORY_ID_for_PJ" FOREIGN KEY ("fk_category_id_for_pj") REFERENCES "category" ("category_id")
);

CREATE TABLE "booking" (
	"booking_id" VARCHAR,
	"booking_date" DATE,
	"booking_num_of_people" INT,
	"booking_visible_on_web" INT,
	"fk_project_id_for_bk" VARCHAR,
	"fk_order_detail_id_for_bk" VARCHAR,
	 PRIMARY KEY ("booking_id")
);

CREATE TABLE "admin" (
	"admin_id" VARCHAR,
	"admin_status" INT,
	"admin_level" INT,
	"admin_account" VARCHAR,
	"admin_password" VARCHAR,
	"admin_name" VARCHAR,
	"admin_avatar_url" VARCHAR,
	"admin_identifier" VARCHAR,
	"admin_session" VARCHAR,
	"admin_signin_time" DATETIME,
	"admin_signin_timeout" DATETIME,
	 PRIMARY KEY ("admin_id")
);
