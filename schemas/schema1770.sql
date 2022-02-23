DROP DATABASE IF EXISTS "schema1770";
CREATE DATABASE "schema1770";
USE "schema1770";
CREATE TABLE "works" (
	"id" INT,
	"name" VARCHAR,
	"age" VARCHAR,
	"work" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "wallet_requests" (
	"id" INT,
	"alias_id" VARCHAR,
	"request_from" VARCHAR,
	"from_id" INT,
	"from_desc" VARCHAR,
	"type" ENUM,
	"amount" DOUBLE,
	"send_by" VARCHAR,
	"send_desc" VARCHAR,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "wallet_passbooks" (
	"id" INT,
	"user_id" INT,
	"amount" INT,
	"status" ENUM,
	"via" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_wallet" (
	"id" INT,
	"user_id" INT,
	"transaction_id" INT,
	"transaction_alias" VARCHAR,
	"transaction_desc" VARCHAR,
	"type" ENUM,
	"amount" DOUBLE,
	"open_balance" DOUBLE,
	"close_balance" DOUBLE,
	"payment_mode" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_request_ratings" (
	"id" INT,
	"request_id" INT,
	"user_id" INT,
	"provider_id" INT,
	"user_rating" INT,
	"provider_rating" INT,
	"user_comment" VARCHAR,
	"provider_comment" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_request_payments" (
	"id" INT,
	"request_id" INT,
	"user_id" INT,
	"provider_id" INT,
	"fleet_id" INT,
	"promocode_id" INT,
	"payment_id" VARCHAR,
	"payment_mode" VARCHAR,
	"fixed" DOUBLE,
	"distance" DOUBLE,
	"minute" DOUBLE,
	"hour" DOUBLE,
	"commision" DOUBLE,
	"commision_per" DOUBLE,
	"fleet" DOUBLE,
	"fleet_per" DOUBLE,
	"discount" DOUBLE,
	"discount_per" DOUBLE,
	"tax" DOUBLE,
	"tax_per" DOUBLE,
	"wallet" DOUBLE,
	"is_partial" TINYINT,
	"cash" DOUBLE,
	"card" DOUBLE,
	"online" DOUBLE,
	"surge" DOUBLE,
	"toll_charge" DOUBLE,
	"round_of" DOUBLE,
	"peak_amount" DOUBLE,
	"peak_comm_amount" DOUBLE,
	"total_waiting_time" INT,
	"waiting_amount" DOUBLE,
	"waiting_comm_amount" DOUBLE,
	"tips" DOUBLE,
	"total" DOUBLE,
	"payable" DOUBLE,
	"provider_commission" DOUBLE,
	"provider_pay" DOUBLE,
	"per_delivery_cost" DOUBLE,
	"no_of_items" INT,
	"items_delivery_cost" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_request_lost_items" (
	"id" INT,
	"request_id" INT,
	"parent_id" INT,
	"user_id" INT,
	"lost_item_name" VARCHAR,
	"comments" VARCHAR,
	"comments_by" ENUM,
	"status" ENUM,
	"is_admin" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_request_disputes" (
	"id" INT,
	"request_id" INT,
	"dispute_type" ENUM,
	"user_id" INT,
	"provider_id" INT,
	"dispute_name" VARCHAR,
	"dispute_title" VARCHAR,
	"comments" VARCHAR,
	"refund_amount" DOUBLE,
	"status" ENUM,
	"is_admin" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_request_delivery_details" (
	"id" INT,
	"user_id" INT,
	"user_request_id" INT,
	"item_to_deliver" VARCHAR,
	"delivery_address" VARCHAR,
	"receiver_name" VARCHAR,
	"receiver_mobile" VARCHAR,
	"any_instructions" VARCHAR,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "user_requests" (
	"id" INT,
	"booking_id" VARCHAR,
	"user_id" INT,
	"braintree_nonce" VARCHAR,
	"provider_id" INT,
	"current_provider_id" INT,
	"service_type_id" INT,
	"promocode_id" INT,
	"rental_hours" INT,
	"status" ENUM,
	"cancelled_by" ENUM,
	"cancel_reason" VARCHAR,
	"payment_mode" ENUM,
	"paid" TINYINT,
	"is_track" ENUM,
	"distance" DOUBLE,
	"travel_time" VARCHAR,
	"unit" ENUM,
	"otp" VARCHAR,
	"s_address" VARCHAR,
	"s_latitude" DOUBLE,
	"s_longitude" DOUBLE,
	"d_address" VARCHAR,
	"d_latitude" DOUBLE,
	"d_longitude" DOUBLE,
	"track_distance" DOUBLE,
	"track_latitude" DOUBLE,
	"track_longitude" DOUBLE,
	"destination_log" LONGTEXT,
	"is_drop_location" TINYINT,
	"is_instant_ride" TINYINT,
	"is_dispute" TINYINT,
	"assigned_at" TIMESTAMP,
	"schedule_at" TIMESTAMP,
	"started_at" TIMESTAMP,
	"finished_at" TIMESTAMP,
	"is_scheduled" ENUM,
	"user_rated" TINYINT,
	"provider_rated" TINYINT,
	"use_wallet" TINYINT,
	"surge" TINYINT,
	"route_key" LONGTEXT,
	"nonce" VARCHAR,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "users" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"payment_mode" ENUM,
	"user_type" ENUM,
	"email" VARCHAR,
	"gender" ENUM,
	"country_code" VARCHAR,
	"mobile" VARCHAR,
	"password" VARCHAR,
	"picture" VARCHAR,
	"device_token" VARCHAR,
	"device_id" VARCHAR,
	"device_type" ENUM,
	"login_by" ENUM,
	"social_unique_id" VARCHAR,
	"latitude" DOUBLE,
	"longitude" DOUBLE,
	"stripe_cust_id" VARCHAR,
	"wallet_balance" DOUBLE,
	"rating" DECIMAL,
	"otp" MEDIUMINT,
	"language" VARCHAR,
	"qrcode_url" VARCHAR,
	"referral_unique_id" VARCHAR,
	"referal_count" MEDIUMINT,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "settings" (
	"id" INT,
	"key" VARCHAR,
	"value" TEXT
);

CREATE TABLE "service_types" (
	"id" INT,
	"name" VARCHAR,
	"provider_name" VARCHAR,
	"image" VARCHAR,
	"marker" VARCHAR,
	"capacity" INT,
	"fixed" INT,
	"price" INT,
	"minute" INT,
	"hour" INT,
	"distance" INT,
	"calculator" ENUM,
	"description" VARCHAR,
	"waiting_free_mins" INT,
	"waiting_min_charge" DOUBLE,
	"per_delivery_cost" DOUBLE,
	"status" INT,
	"type" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "service_peak_hours" (
	"id" INT,
	"service_type_id" INT,
	"peak_hours_id" INT,
	"min_price" DOUBLE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "role_has_permissions" (
	"permission_id" INT,
	"role_id" INT
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"guard_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "request_waiting_time" (
	"id" INT,
	"request_id" INT,
	"started_at" TIMESTAMP,
	"ended_at" TIMESTAMP,
	"waiting_mins" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "request_filters" (
	"id" INT,
	"request_id" INT,
	"provider_id" INT,
	"status" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "referral_histroy" (
	"id" INT,
	"referrer_id" INT,
	"type" TINYINT,
	"referral_id" INT,
	"referral_data" LONGTEXT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "referral_earnings" (
	"id" INT,
	"referrer_id" INT,
	"type" TINYINT,
	"amount" DOUBLE,
	"count" MEDIUMINT,
	"referral_histroy_id" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "reasons" (
	"id" INT,
	"type" ENUM,
	"reason" TEXT,
	"status" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "push_subscriptions" (
	"id" INT,
	"guard" VARCHAR,
	"admin_id" INT,
	"endpoint" VARCHAR,
	"public_key" VARCHAR,
	"auth_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "provider_wallet" (
	"id" INT,
	"provider_id" INT,
	"transaction_id" INT,
	"transaction_alias" VARCHAR,
	"transaction_desc" VARCHAR,
	"type" ENUM,
	"amount" DOUBLE,
	"open_balance" DOUBLE,
	"close_balance" DOUBLE,
	"payment_mode" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "provider_services" (
	"id" INT,
	"provider_id" INT,
	"service_type_id" INT,
	"status" ENUM,
	"service_number" VARCHAR,
	"service_model" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "provider_profiles" (
	"id" INT,
	"provider_id" INT,
	"language" VARCHAR,
	"address" VARCHAR,
	"address_secondary" VARCHAR,
	"city" VARCHAR,
	"country" VARCHAR,
	"postal_code" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "provider_documents" (
	"id" INT,
	"provider_id" INT,
	"document_id" VARCHAR,
	"url" VARCHAR,
	"unique_id" VARCHAR,
	"status" ENUM,
	"expires_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "provider_devices" (
	"id" INT,
	"provider_id" INT,
	"udid" VARCHAR,
	"token" VARCHAR,
	"sns_arn" VARCHAR,
	"type" ENUM,
	"jwt_token" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "provider_cards" (
	"id" INT,
	"user_id" INT,
	"last_four" VARCHAR,
	"card_id" VARCHAR,
	"brand" VARCHAR,
	"is_default" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "providers" (
	"id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"gender" ENUM,
	"country_code" VARCHAR,
	"mobile" VARCHAR,
	"password" VARCHAR,
	"avatar" VARCHAR,
	"rating" DECIMAL,
	"status" ENUM,
	"fleet" INT,
	"latitude" DOUBLE,
	"longitude" DOUBLE,
	"stripe_acc_id" VARCHAR,
	"stripe_cust_id" VARCHAR,
	"paypal_email" VARCHAR,
	"login_by" ENUM,
	"social_unique_id" VARCHAR,
	"otp" MEDIUMINT,
	"wallet_balance" DOUBLE,
	"referral_unique_id" VARCHAR,
	"qrcode_url" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "promocode_usages" (
	"id" INT,
	"user_id" INT,
	"promocode_id" INT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "promocode_passbooks" (
	"id" INT,
	"user_id" INT,
	"promocode_id" INT,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "promocodes" (
	"id" INT,
	"promo_code" VARCHAR,
	"percentage" DOUBLE,
	"max_amount" DOUBLE,
	"promo_description" VARCHAR,
	"expiration" DATETIME,
	"status" ENUM,
	"deleted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "permissions" (
	"id" INT,
	"name" VARCHAR,
	"display_name" VARCHAR,
	"guard_name" VARCHAR,
	"group_name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "peak_hours" (
	"id" INT,
	"start_time" TIME,
	"end_time" TIME,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payu_payments" (
	"id" INT,
	"account" VARCHAR,
	"payable_id" INT,
	"payable_type" VARCHAR,
	"txnid" VARCHAR,
	"mihpayid" VARCHAR,
	"firstname" VARCHAR,
	"lastname" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"amount" DOUBLE,
	"discount" DOUBLE,
	"net_amount_debit" DOUBLE,
	"data" TEXT,
	"status" VARCHAR,
	"unmappedstatus" VARCHAR,
	"mode" VARCHAR,
	"bank_ref_num" VARCHAR,
	"bankcode" VARCHAR,
	"cardnum" VARCHAR,
	"name_on_card" VARCHAR,
	"issuing_bank" VARCHAR,
	"card_type" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "payment_logs" (
	"id" INT,
	"is_wallet" INT,
	"user_type" VARCHAR,
	"payment_mode" VARCHAR,
	"user_id" INT,
	"amount" DOUBLE,
	"transaction_code" VARCHAR,
	"transaction_id" VARCHAR,
	"response" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "oauth_refresh_tokens" (
	"id" VARCHAR,
	"access_token_id" VARCHAR,
	"revoked" TINYINT,
	"expires_at" DATETIME
);

CREATE TABLE "oauth_personal_access_clients" (
	"id" INT,
	"client_id" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_clients" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"secret" VARCHAR,
	"redirect" TEXT,
	"personal_access_client" TINYINT,
	"password_client" TINYINT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "oauth_auth_codes" (
	"id" VARCHAR,
	"user_id" INT,
	"client_id" INT,
	"scopes" TEXT,
	"revoked" TINYINT,
	"expires_at" DATETIME
);

CREATE TABLE "oauth_access_tokens" (
	"id" VARCHAR,
	"user_id" INT,
	"client_id" INT,
	"name" VARCHAR,
	"scopes" TEXT,
	"revoked" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	"expires_at" DATETIME
);

CREATE TABLE "notifications" (
	"id" INT,
	"notify_type" ENUM,
	"image" VARCHAR,
	"description" VARCHAR,
	"expiry_date" TIMESTAMP,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "model_has_roles" (
	"role_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT
);

CREATE TABLE "model_has_permissions" (
	"permission_id" INT,
	"model_type" VARCHAR,
	"model_id" BIGINT
);

CREATE TABLE "migrations" (
	"id" INT,
	"migration" VARCHAR,
	"batch" INT
);

CREATE TABLE "ltm_translations" (
	"id" INT,
	"status" INT,
	"locale" VARCHAR,
	"group" VARCHAR,
	"key" VARCHAR,
	"value" TEXT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "fleet_wallet" (
	"id" INT,
	"fleet_id" INT,
	"transaction_id" INT,
	"transaction_alias" VARCHAR,
	"transaction_desc" VARCHAR,
	"type" ENUM,
	"amount" DOUBLE,
	"open_balance" DOUBLE,
	"close_balance" DOUBLE,
	"payment_mode" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "fleet_password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "fleet_cards" (
	"id" INT,
	"user_id" INT,
	"last_four" VARCHAR,
	"card_id" VARCHAR,
	"brand" VARCHAR,
	"is_default" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "fleets" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	"company" VARCHAR,
	"mobile" VARCHAR,
	"logo" VARCHAR,
	"remember_token" VARCHAR,
	"commission" DOUBLE,
	"wallet_balance" DOUBLE,
	"stripe_cust_id" VARCHAR,
	"language" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "favourite_locations" (
	"id" INT,
	"user_id" INT,
	"address" VARCHAR,
	"latitude" DOUBLE,
	"longitude" DOUBLE,
	"type" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "eventcontacts" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"mobile" VARCHAR,
	"location" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "documents" (
	"id" INT,
	"name" VARCHAR,
	"type" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "disputes" (
	"id" INT,
	"dispute_type" ENUM,
	"dispute_name" VARCHAR,
	"status" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "dispatcher_password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "dispatchers" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"mobile" VARCHAR,
	"language" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "custom_pushes" (
	"id" INT,
	"send_to" ENUM,
	"condition" ENUM,
	"condition_data" VARCHAR,
	"message" VARCHAR,
	"sent_to" INT,
	"schedule_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "chats" (
	"id" INT,
	"request_id" INT,
	"user_id" INT,
	"provider_id" INT,
	"message" TEXT,
	"type" ENUM,
	"delivered" TINYINT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "cards" (
	"id" INT,
	"user_id" INT,
	"last_four" VARCHAR,
	"card_id" VARCHAR,
	"brand" VARCHAR,
	"is_default" INT,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "advertisements" (
	"id" INT,
	"title" VARCHAR,
	"description" VARCHAR,
	"status" ENUM,
	"link" VARCHAR,
	"image" VARCHAR,
	"from_date" DATE,
	"to_date" DATE,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admin_wallet" (
	"id" INT,
	"transaction_id" INT,
	"transaction_alias" VARCHAR,
	"transaction_desc" VARCHAR,
	"transaction_type" INT,
	"type" ENUM,
	"amount" DOUBLE,
	"open_balance" DOUBLE,
	"close_balance" DOUBLE,
	"payment_mode" ENUM,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "admins" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"mobile" VARCHAR,
	"password" VARCHAR,
	"picture" VARCHAR,
	"language" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);

CREATE TABLE "account_password_resets" (
	"email" VARCHAR,
	"token" VARCHAR,
	"created_at" TIMESTAMP
);

CREATE TABLE "accounts" (
	"id" INT,
	"name" VARCHAR,
	"email" VARCHAR,
	"mobile" VARCHAR,
	"language" VARCHAR,
	"password" VARCHAR,
	"remember_token" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP
);
