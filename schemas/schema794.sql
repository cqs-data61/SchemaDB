DROP DATABASE IF EXISTS "schema794";
CREATE DATABASE "schema794";
USE "schema794";
CREATE TABLE "boc_menu-items" (
	"id" SERIAL,
	"menu_item_name" VARCHAR,
	"menu_item_description" VARCHAR,
	"menu_item_price" FLOAT,
	"subsection" VARCHAR,
	"subsection_description" VARCHAR,
	"item_id_api" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "boc_restaurants" (
	"restaurant_id_pk" SERIAL,
	"restaurant_name" VARCHAR,
	"restaurant_website" VARCHAR,
	"restaurant_phone" VARCHAR,
	"restaurant_hours" VARCHAR,
	"price_range" VARCHAR,
	"restaurant_id_api" BIGINT,
	"restaurant_address" VARCHAR,
	"zip" INTEGER,
	"latitude" FLOAT,
	"longitude" FLOAT,
	 PRIMARY KEY ("restaurant_id_pk")
);

CREATE TABLE "boc_rollover-sessions" (
	"rollover_pk" SERIAL,
	"placeholder" INTEGER,
	 PRIMARY KEY ("rollover_pk")
);

CREATE TABLE "boc_session-chat" (
	"session_chat_id" SERIAL,
	"message_text" VARCHAR,
	"speaker_id" INTEGER,
	"timestamp" TIMESTAMP,
	 PRIMARY KEY ("session_chat_id")
);

CREATE TABLE "boc_user-friend-jt" (
	"user_friend_pk" SERIAL,
	"requestor_id" INTEGER,
	"requestee_id" INTEGER,
	 PRIMARY KEY ("user_friend_pk")
);

CREATE TABLE "boc_orders" (
	"order_pk" SERIAL,
	"orderer_id" INTEGER,
	"order_session_id" INTEGER,
	"food_id_api" VARCHAR,
	"food_name_api" VARCHAR,
	"price" FLOAT,
	"qty" INTEGER,
	"restaurant_id_api" VARCHAR,
	"restaurant_name_api" VARCHAR,
	"currency" VARCHAR,
	 PRIMARY KEY ("order_pk")
);

CREATE TABLE "boc_sessions" (
	"session_id" SERIAL,
	"host_id" INTEGER,
	"rollover_session_id" INTEGER,
	"restaurant_name" VARCHAR,
	"restaurant_id_api" VARCHAR,
	"host_firstname" VARCHAR,
	"host_lastname" VARCHAR,
	"session_name" VARCHAR,
	"split_method" INTEGER,
	 PRIMARY KEY ("session_id")
);

CREATE TABLE "boc_users" (
	"user_id" SERIAL,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "boc_user-session-jt" (
	"id" SERIAL,
	"session_id" INTEGER,
	"user_id" INTEGER,
	"user_done_ordering" BOOLEAN,
	 PRIMARY KEY ("id")
);
