DROP DATABASE IF EXISTS "schema564";
CREATE DATABASE "schema564";
USE "schema564";
CREATE TABLE "users" (
	"id" INTEGER,
	"facebook_agent_id" CHARACTER VARYING,
	"avatar_url" CHARACTER VARYING,
	"age" INTEGER,
	"email" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"name" CHARACTER VARYING,
	"gender" CHARACTER,
	"verify_email_nonce" CHARACTER VARYING,
	"reset_password_nonce" CHARACTER VARYING,
	"last_login_time" DATETIME,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"stripe_id" CHARACTER VARYING,
	"email_verified" BOOLEAN,
	"email_verified_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" INTEGER,
	"session_id" CHARACTER VARYING,
	"user_id" INTEGER,
	"created_at" DATETIME,
	"login_time" DATETIME,
	"refresh_token" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "sessions_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "requests" (
	"id" INTEGER,
	"client_id" INTEGER,
	"picture_url" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "requests_client_id_foreign" FOREIGN KEY ("client_id") REFERENCES "users" ("id")
);

CREATE TABLE "pms" (
	"id" INTEGER,
	"stripe_id" CHARACTER VARYING,
	"user_id" INTEGER,
	"funding" CHARACTER VARYING,
	"fingerprint" CHARACTER VARYING,
	"last_four" CHARACTER VARYING,
	"exp_month" INTEGER,
	"exp_year" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"country" CHARACTER VARYING,
	"brand" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "pms_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "payments" (
	"id" INTEGER,
	"stripe_id" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"pm_id" INTEGER,
	"amount" INTEGER,
	"currency" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "payments_pm_id_foreign" FOREIGN KEY ("pm_id") REFERENCES "pms" ("id")
);

CREATE TABLE "default_pm" (
	"id" INTEGER,
	"user_id" INTEGER,
	"default_pm_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "default_pm_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "default_pm_default_pm_id_foreign" FOREIGN KEY ("default_pm_id") REFERENCES "pms" ("id")
);

CREATE TABLE "orders" (
	"id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orders_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "addresses" (
	"id" INTEGER,
	"user_id" INTEGER,
	"line_one" CHARACTER VARYING,
	"line_two" CHARACTER VARYING,
	"city" CHARACTER VARYING,
	"province" CHARACTER VARYING,
	"zip" INTEGER,
	"country" CHARACTER VARYING,
	"lat" REAL,
	"lng" REAL,
	"formatted" TEXT,
	"recipient_phone" CHARACTER VARYING,
	"recipient_name" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "addresses_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "default_address" (
	"id" INTEGER,
	"address_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "default_address_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id"),
	 CONSTRAINT "default_address_address_id_foreign" FOREIGN KEY ("address_id") REFERENCES "addresses" ("id")
);

CREATE TABLE "tasks" (
	"id" INTEGER,
	"name" TEXT,
	"removed" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "staffs" (
	"id" INTEGER,
	"email" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "segments" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "physiques" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"segment_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "physiques_segment_id_foreign" FOREIGN KEY ("segment_id") REFERENCES "segments" ("id")
);

CREATE TABLE "measurements" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"physique_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "measurements_physiques_id_fk" FOREIGN KEY ("physique_id") REFERENCES "physiques" ("id")
);

CREATE TABLE "sizes" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"measurement_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "sizes_measurement_id_foreign" FOREIGN KEY ("measurement_id") REFERENCES "measurements" ("id")
);

CREATE TABLE "screens" (
	"id" INTEGER,
	"name" TEXT,
	"removed" BOOLEAN,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INTEGER,
	"title" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rights" (
	"id" INTEGER,
	"action" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "permissions" (
	"id" INTEGER,
	"role_id" INTEGER,
	"right_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "permissions_role_id_foreign" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "permissions_right_id_foreign" FOREIGN KEY ("right_id") REFERENCES "rights" ("id")
);

CREATE TABLE "quotations" (
	"id" INTEGER,
	"user_id" INTEGER,
	"delivery_cost" INTEGER,
	"from_lat" REAL,
	"from_lng" REAL,
	"from_phone" CHARACTER VARYING,
	"from_name" CHARACTER VARYING,
	"from_line_one" CHARACTER VARYING,
	"from_line_two" CHARACTER VARYING,
	"from_formatted" CHARACTER VARYING,
	"to_lat" REAL,
	"to_lng" REAL,
	"to_line_one" CHARACTER VARYING,
	"to_line_two" CHARACTER VARYING,
	"to_formatted" CHARACTER VARYING,
	"to_phone" CHARACTER VARYING,
	"to_name" CHARACTER VARYING,
	"delivery_type" CHARACTER VARYING,
	"schedule_at" INTEGER,
	"weight" INTEGER,
	"height" INTEGER,
	"length" INTEGER,
	"width" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "plans" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"stripe_id" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"price" REAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscriptions" (
	"id" INTEGER,
	"stripe_id" CHARACTER VARYING,
	"user_id" INTEGER,
	"plan_id" INTEGER,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"pm_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "subscriptions_pm_id_foreign" FOREIGN KEY ("pm_id") REFERENCES "pms" ("id"),
	 CONSTRAINT "subscriptions_plan_id_foreign" FOREIGN KEY ("plan_id") REFERENCES "plans" ("id"),
	 CONSTRAINT "subscriptions_user_id_foreign" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "packlisttypes" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"kg" INTEGER,
	"dimension" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "email_templates" (
	"id" INTEGER,
	"key" CHARACTER VARYING,
	"from_email" CHARACTER VARYING,
	"sendgrid_template_id" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "bag_types" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"picture_url" CHARACTER VARYING,
	"height" INTEGER,
	"width" INTEGER,
	"length" INTEGER,
	"weight" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "aspects" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"aspect_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tags_category_id_foreign" FOREIGN KEY ("aspect_id") REFERENCES "aspects" ("id")
);

CREATE TABLE "tag_text" (
	"id" INTEGER,
	"tag_id" INTEGER,
	"language" CHARACTER VARYING,
	"is_default" BOOLEAN,
	"name" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tag_text_tag_id_foreign" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id")
);

CREATE TABLE "tag_ontology" (
	"id" INTEGER,
	"ancestor_id" INTEGER,
	"descendent_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "tag_ontology_descendent_id_foreign" FOREIGN KEY ("descendent_id") REFERENCES "tags" ("id"),
	 CONSTRAINT "tag_ontology_ancestor_id_foreign" FOREIGN KEY ("ancestor_id") REFERENCES "tags" ("id")
);

CREATE TABLE "inventories" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"brand" CHARACTER VARYING,
	"gender" CHARACTER,
	"size" INTEGER,
	"description" CHARACTER VARYING,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"seller_id" INTEGER,
	"picture_url" CHARACTER VARYING,
	"price" REAL,
	"sold" BOOLEAN,
	"brand_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "inventories_brand_id_foreign" FOREIGN KEY ("brand_id") REFERENCES "tags" ("id"),
	 CONSTRAINT "inventories_seller_id_foreign" FOREIGN KEY ("seller_id") REFERENCES "users" ("id")
);

CREATE TABLE "inventory_text" (
	"id" INTEGER,
	"inventory_id" INTEGER,
	"language" CHARACTER VARYING,
	"is_default" BOOLEAN,
	"name" CHARACTER VARYING,
	"description" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "product_text_inventory_id_foreign" FOREIGN KEY ("inventory_id") REFERENCES "inventories" ("id")
);

CREATE TABLE "inventory_tag" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"inventory_id" INTEGER,
	"tag_id" INTEGER,
	"rating" REAL,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "inventory_tag_inventory_id_foreign" FOREIGN KEY ("inventory_id") REFERENCES "inventories" ("id"),
	 CONSTRAINT "inventory_tag_tag_id_foreign" FOREIGN KEY ("tag_id") REFERENCES "tags" ("id")
);

CREATE TABLE "inventory_size" (
	"id" INTEGER,
	"inventory_id" INTEGER,
	"size_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "inventory_size_inventory_id_foreign" FOREIGN KEY ("inventory_id") REFERENCES "inventories" ("id"),
	 CONSTRAINT "inventory_size_size_id_foreign" FOREIGN KEY ("size_id") REFERENCES "sizes" ("id")
);

CREATE TABLE "inventory_order" (
	"id" INTEGER,
	"inventory_id" INTEGER,
	"order_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "inventory_order_order_id_foreign" FOREIGN KEY ("order_id") REFERENCES "orders" ("id"),
	 CONSTRAINT "inventory_order_inventory_id_foreign" FOREIGN KEY ("inventory_id") REFERENCES "inventories" ("id")
);

CREATE TABLE "image_inventory" (
	"id" INTEGER,
	"inventory_id" INTEGER,
	"item_order" INTEGER,
	"url" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "image_inventory_inventory_id_foreign" FOREIGN KEY ("inventory_id") REFERENCES "inventories" ("id")
);

CREATE TABLE "apps" (
	"id" INTEGER,
	"key" CHARACTER VARYING,
	"name" CHARACTER VARYING,
	"lat" REAL,
	"lng" REAL,
	"created_at" DATETIME,
	"updated_at" DATETIME,
	"line_one" CHARACTER VARYING,
	"line_two" CHARACTER VARYING,
	"city" CHARACTER VARYING,
	"province" CHARACTER VARYING,
	"zip" INTEGER,
	"country" CHARACTER VARYING,
	"recipient_name" CHARACTER VARYING,
	"recipient_phone" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);
