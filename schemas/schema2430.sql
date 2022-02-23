DROP DATABASE IF EXISTS "schema2430";
CREATE DATABASE "schema2430";
USE "schema2430";
CREATE TABLE "withdraw" (
	"wid" INT,
	"shop_balance" FLOAT,
	"withdraw_amt" FLOAT,
	"total_balance" FLOAT,
	"withdraw_mode" VARCHAR,
	"paypal_id" VARCHAR,
	"stripe_id" VARCHAR,
	"payumoney" VARCHAR,
	"bank_acc_no" VARCHAR,
	"bank_info" VARCHAR,
	"ifsc_code" VARCHAR,
	"user_id" INT,
	"withdraw_status" VARCHAR
);

CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"provider" VARCHAR,
	"provider_id" VARCHAR,
	"gender" VARCHAR,
	"phone" VARCHAR,
	"photo" VARCHAR,
	"admin" INT,
	"wallet" FLOAT,
	"confirmation" INT,
	"confirm_key" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "testimonials" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"image" VARCHAR
);

CREATE TABLE "tbl_private_message" (
	"pid" INT,
	"sender" VARCHAR,
	"receiver" VARCHAR,
	"message" TEXT,
	"send_by" VARCHAR,
	"read_status" INT,
	"submitted" DATETIME
);

CREATE TABLE "subservices" (
	"subid" INT,
	"subname" VARCHAR,
	"service" VARCHAR,
	"subimage" VARCHAR
);

CREATE TABLE "skills" (
	"id" INT,
	"skill" VARCHAR,
	"delete_status" VARCHAR
);

CREATE TABLE "shop_gallery" (
	"id" INT,
	"image" VARCHAR,
	"user_id" INT,
	"shop_id" INT
);

CREATE TABLE "shop" (
	"id" INT,
	"shop_name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"pin_code" VARCHAR,
	"country" VARCHAR,
	"state" VARCHAR,
	"shop_phone_no" VARCHAR,
	"description" TEXT,
	"shop_date" VARCHAR,
	"start_time" VARCHAR,
	"end_time" VARCHAR,
	"cover_photo" VARCHAR,
	"profile_photo" VARCHAR,
	"shop_document" VARCHAR,
	"seller_email" VARCHAR,
	"user_id" INT,
	"featured" VARCHAR,
	"status" VARCHAR,
	"admin_email_status" VARCHAR,
	"booking_opening_days" VARCHAR,
	"booking_per_hour" VARCHAR,
	"tax_percent" FLOAT
);

CREATE TABLE "settings" (
	"id" INT,
	"site_name" VARCHAR,
	"site_desc" TEXT,
	"site_keyword" TEXT,
	"site_ads_space" TEXT,
	"site_facebook" VARCHAR,
	"site_twitter" VARCHAR,
	"site_gplus" VARCHAR,
	"site_pinterest" VARCHAR,
	"site_instagram" VARCHAR,
	"site_currency" VARCHAR,
	"site_logo" VARCHAR,
	"site_favicon" VARCHAR,
	"site_banner" VARCHAR,
	"site_copyright" VARCHAR,
	"commission_mode" VARCHAR,
	"commission_from" VARCHAR,
	"commission_amt" FLOAT,
	"paypal_id" VARCHAR,
	"paypal_url" VARCHAR,
	"stripe_mode" VARCHAR,
	"test_publish_key" VARCHAR,
	"test_secret_key" VARCHAR,
	"live_publish_key" VARCHAR,
	"live_secret_key" VARCHAR,
	"payu_mode" VARCHAR,
	"merchant_key" VARCHAR,
	"salt_id" VARCHAR,
	"message_per_page" INT,
	"withdraw_amt" FLOAT,
	"withdraw_option" VARCHAR,
	"payment_option" VARCHAR,
	"social_login_option" VARCHAR,
	"approve_requests" VARCHAR,
	"min_skills" VARCHAR,
	"max_skills" VARCHAR,
	"featured_gig_price" FLOAT,
	"featured_days" INT,
	"processing_fee" FLOAT,
	"google_map_key" VARCHAR,
	"site_address" VARCHAR
);

CREATE TABLE "services" (
	"id" INT,
	"name" VARCHAR,
	"image" VARCHAR,
	"status" INT
);

CREATE TABLE "seller_services" (
	"id" INT,
	"service_id" INT,
	"subservice_id" INT,
	"price" INT,
	"time" VARCHAR,
	"user_id" INT,
	"shop_id" INT,
	"description" VARCHAR
);

CREATE TABLE "review" (
	"rid" INT,
	"gid" INT,
	"order_id" INT,
	"buyer_id" INT,
	"seller_id" INT,
	"rate" INT,
	"star_rate" INT,
	"comment" TEXT
);

CREATE TABLE "revenues" (
	"rwid" INT,
	"user_id" INT,
	"revenues_token" VARCHAR,
	"total_amount" INT,
	"revenues_type" VARCHAR,
	"revenues_status" VARCHAR
);

CREATE TABLE "request_proposal" (
	"prp_id" INT,
	"gid" INT,
	"req_user_id" INT,
	"prop_user_id" INT,
	"bid_price" INT,
	"bid_email" VARCHAR,
	"desc_proposal" TEXT,
	"proposal_estimate" VARCHAR,
	"bid_date" DATE,
	"award" INT
);

CREATE TABLE "request_file" (
	"rf_id" INT,
	"token_key" VARCHAR,
	"file_name" VARCHAR
);

CREATE TABLE "rating" (
	"rid" INT,
	"rating" VARCHAR,
	"email" VARCHAR,
	"rshop_id" INT,
	"comment" TEXT
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "pages" (
	"page_id" INT,
	"page_title" VARCHAR,
	"page_desc" TEXT
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "languages" (
	"id" INT,
	"name" VARCHAR,
	"symbol" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "gig_order" (
	"id" INT,
	"gid" INT,
	"gig_user_id" INT,
	"user_id" INT,
	"reference_id" INT,
	"token" VARCHAR,
	"paypal_token" VARCHAR,
	"coupon_id" INT,
	"coupon_code" VARCHAR,
	"coupon_by" INT,
	"coupon_user" VARCHAR,
	"coupon_commission" FLOAT,
	"price" INT,
	"processing_fee" VARCHAR,
	"seller_price" FLOAT,
	"admin_price" FLOAT,
	"affiliate_price" FLOAT,
	"affiliate_id" INT,
	"amount_by" VARCHAR,
	"type" VARCHAR,
	"ex_text" VARCHAR,
	"payment_type" VARCHAR,
	"additional_info" TEXT,
	"payment_date" DATE,
	"awaiting" INT,
	"payment_level" INT,
	"withdraw" VARCHAR,
	"withdraw_token" VARCHAR,
	"upcoming_payment" INT,
	"status" VARCHAR
);

CREATE TABLE "gig_images" (
	"id" INT,
	"token" VARCHAR,
	"image" VARCHAR
);

CREATE TABLE "gigs" (
	"gid" INT,
	"token" VARCHAR,
	"user_id" INT,
	"giger_id" INT,
	"subject" TEXT,
	"request_slug" VARCHAR,
	"featured_image" VARCHAR,
	"request_skills" VARCHAR,
	"price" INT,
	"category" INT,
	"subcategory" INT,
	"category_type" VARCHAR,
	"description" TEXT,
	"instruction" TEXT,
	"budget_type" VARCHAR,
	"submit_date" DATE,
	"featured" INT,
	"payment_type" VARCHAR,
	"feature_price" INT,
	"feature_start_date" DATE,
	"feature_end_date" DATE,
	"reference_id" INT,
	"payment_date" VARCHAR,
	"additional_info" TEXT,
	"tags" VARCHAR,
	"complete_days" INT,
	"preferred_location" TEXT,
	"video_url" VARCHAR,
	"gig_type" VARCHAR,
	"job_type" VARCHAR,
	"maximum_qty" INT,
	"extra_text1" VARCHAR,
	"extra_price1" INT,
	"extra_text2" VARCHAR,
	"extra_price2" INT,
	"extra_text3" VARCHAR,
	"extra_price3" INT,
	"fixed_price" VARCHAR,
	"hour_price" VARCHAR,
	"minimum_budget" INT,
	"maximum_budget" INT,
	"fixed_minimum" INT,
	"fixed_maximum" INT,
	"hour_minimum" INT,
	"hour_maximum" INT,
	"local_ship_price" INT,
	"local_ship_place" VARCHAR,
	"world_ship_price" INT,
	"view_count" INT,
	"delete_status" VARCHAR,
	"request_status" INT,
	"bid_status" INT,
	"sent_mail" INT,
	"status" INT
);

CREATE TABLE "dispute" (
	"dispute_id" INT,
	"booking_id" INT,
	"booking_date" DATE,
	"dispute_date" DATE,
	"customer_name" VARCHAR,
	"customer_id" INT,
	"vendor_name" VARCHAR,
	"vendor_id" INT,
	"payment" FLOAT,
	"subject" VARCHAR,
	"message" TEXT,
	"status" VARCHAR
);

CREATE TABLE "conversations" (
	"id" INT,
	"gig_id" VARCHAR,
	"sender" INT,
	"receiver" INT,
	"message" TEXT,
	"read_write_status" INT,
	"date_submitted" DATETIME,
	"file" VARCHAR,
	"report" INT
);

CREATE TABLE "contact_vendor" (
	"id" INT,
	"name" VARCHAR,
	"phone_no" VARCHAR,
	"email" VARCHAR,
	"message" TEXT,
	"vendor_id" INT
);

CREATE TABLE "chat_message" (
	"id" INT,
	"gid" INT,
	"order_id" INT,
	"msg_type" VARCHAR,
	"buyer_id" INT,
	"seller_id" INT,
	"message" TEXT,
	"submit_date" DATETIME,
	"file" VARCHAR,
	"got_problem" VARCHAR,
	"complete_work" VARCHAR,
	"submission" VARCHAR,
	"problem_reason" VARCHAR,
	"mutual_cancel" VARCHAR
);

CREATE TABLE "booking" (
	"book_id" INT,
	"token" VARCHAR,
	"stripe_token" VARCHAR,
	"payu_token" VARCHAR,
	"paypal_token" VARCHAR,
	"services_id" VARCHAR,
	"booking_date" DATE,
	"booking_time" VARCHAR,
	"user_email" VARCHAR,
	"booking_address" TEXT,
	"booking_city" VARCHAR,
	"booking_pincode" VARCHAR,
	"booking_note" TEXT,
	"user_id" INT,
	"amount_by" VARCHAR,
	"subtotal_amt" FLOAT,
	"total_amt" FLOAT,
	"tax_amt" FLOAT,
	"admin_commission" FLOAT,
	"payment_mode" VARCHAR,
	"status" VARCHAR,
	"reject" VARCHAR,
	"service_complete" INT,
	"shop_id" INT,
	"currency" VARCHAR,
	"curr_date" DATE
);

CREATE TABLE "blog" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"image" VARCHAR,
	"post_date" VARCHAR
);

CREATE TABLE "available_balance" (
	"aid" INT,
	"user_id" INT,
	"amount" FLOAT
);
