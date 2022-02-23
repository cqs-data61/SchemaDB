DROP DATABASE IF EXISTS "schema1692";
CREATE DATABASE "schema1692";
USE "schema1692";
CREATE TABLE "action_log" (
	"id" VARCHAR,
	"public_user_id" VARCHAR,
	"action_type" VARCHAR,
	"ip_address" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "admin_users" (
	"id" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"enabled" BOOLEAN,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vaccination_histories" (
	"id" VARCHAR,
	"public_user_id" VARCHAR,
	"vaccinated_at" DATE,
	"room_id" VARCHAR,
	"vaccine" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vaccine_stocks" (
	"id" VARCHAR,
	"expected_delivery_date" DATE,
	"quantity" INTEGER,
	"room_id" VARCHAR,
	"reservation_count" INTEGER,
	"vaccinated_count" INTEGER,
	"vaccine" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "public_users" (
	"id" VARCHAR,
	"login_name" VARCHAR,
	"password" VARCHAR,
	"name" VARCHAR,
	"hurigana" VARCHAR,
	"birthday" DATE,
	"address" VARCHAR,
	"telephone_number" VARCHAR,
	"email" VARCHAR,
	"sms" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "coupons" (
	"public_user_id" VARCHAR,
	"coupon" VARCHAR,
	"name" VARCHAR,
	"used" BOOLEAN,
	"used_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("public_user_id","coupon"),
	 CONSTRAINT "fkeycon_coupons_to_public_users" FOREIGN KEY ("public_user_id") REFERENCES "public_users" ("id")
);

CREATE TABLE "rooms" (
	"id" VARCHAR,
	"name" VARCHAR,
	"vaccine" VARCHAR,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cells" (
	"id" VARCHAR,
	"room_id" VARCHAR,
	"begin_time" TIMESTAMP,
	"end_time" TIMESTAMP,
	"capacity" INTEGER,
	"accepted_count" INTEGER,
	"reservation_count" INTEGER,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_cells_to_rooms" FOREIGN KEY ("room_id") REFERENCES "rooms" ("id")
);

CREATE TABLE "waiting_list" (
	"cell_id" VARCHAR,
	"public_user_id" VARCHAR,
	"created_at" TIMESTAMP,
	 PRIMARY KEY ("cell_id","public_user_id"),
	 CONSTRAINT "fkeycon_waiting_list_to_public_users" FOREIGN KEY ("public_user_id") REFERENCES "public_users" ("id"),
	 CONSTRAINT "fkeycon_waiting_list_to_cells" FOREIGN KEY ("cell_id") REFERENCES "cells" ("id")
);

CREATE TABLE "reservations" (
	"id" VARCHAR,
	"cell_id" VARCHAR,
	"public_user_id" VARCHAR,
	"coupon" VARCHAR,
	"reservation_number" VARCHAR,
	"accepted" BOOLEAN,
	"vaccinated" BOOLEAN,
	"created_at" TIMESTAMP,
	"updated_at" TIMESTAMP,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_reservations_to_cells" FOREIGN KEY ("cell_id") REFERENCES "cells" ("id"),
	 CONSTRAINT "fkeycon_reservations_to_public_users" FOREIGN KEY ("public_user_id") REFERENCES "public_users" ("id")
);
