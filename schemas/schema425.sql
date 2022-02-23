DROP DATABASE IF EXISTS "schema425";
CREATE DATABASE "schema425";
USE "schema425";
CREATE TABLE "sync_log" (
	"id" INT,
	"command" VARCHAR,
	"run_time" INT,
	"updated_items" INT,
	"created_new_items" INT,
	"status" VARCHAR,
	"exception" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "subscriber" (
	"id" INT,
	"email" VARCHAR,
	"is_active" TINYINT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "settings" (
	"id" INT,
	"key" VARCHAR,
	"value" MEDIUMTEXT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order" (
	"id" INT,
	"status" VARCHAR,
	"price" FLOAT,
	"address" VARCHAR,
	"city" VARCHAR,
	"zip_code" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"notes" VARCHAR,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_item" (
	"id" INT,
	"product_id" INT,
	"quantity" INT,
	"product_price" INT,
	"order_id" INT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_order_item_order" FOREIGN KEY ("order_id") REFERENCES "order" ("id")
);

CREATE TABLE "notification" (
	"id" INT,
	"receiver_id" INT,
	"model_id" INT,
	"model_name" VARCHAR,
	"title" VARCHAR,
	"type" VARCHAR,
	"is_read" TINYINT,
	"message" MEDIUMTEXT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note" (
	"id" INT,
	"model_name" VARCHAR,
	"model_id" INT,
	"content" MEDIUMTEXT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "migration" (
	"version" VARCHAR,
	"apply_time" INT,
	 PRIMARY KEY ("version")
);

CREATE TABLE "image" (
	"id" INT,
	"original_name" VARCHAR,
	"mime_type" VARCHAR,
	"size" INT,
	"storage_type" VARCHAR,
	"storage_key" VARCHAR,
	"height" INT,
	"width" INT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "image_thumb" (
	"id" INT,
	"image_id" INT,
	"spec_key" VARCHAR,
	"storage_type" VARCHAR,
	"storage_key" VARCHAR,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_image_thumb_image" FOREIGN KEY ("image_id") REFERENCES "image" ("id")
);

CREATE TABLE "icon" (
	"id" INT,
	"name" VARCHAR,
	"code" VARCHAR,
	"group" VARCHAR,
	"type" VARCHAR,
	"is_active" TINYINT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "file" (
	"id" INT,
	"image_id" INT,
	"original_name" VARCHAR,
	"mime_type" VARCHAR,
	"storage_type" VARCHAR,
	"storage_key" VARCHAR,
	"size" INT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "note_file" (
	"id" INT,
	"file_id" INT,
	"note_id" INT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_note_file_file" FOREIGN KEY ("file_id") REFERENCES "file" ("id"),
	 CONSTRAINT "FK_note_file_note" FOREIGN KEY ("note_id") REFERENCES "note" ("id")
);

CREATE TABLE "exception" (
	"id" INT,
	"model_id" INT,
	"model_name" VARCHAR,
	"name" VARCHAR,
	"message" TEXT,
	"status" VARCHAR,
	"is_resolved" TINYINT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "email_log" (
	"id" INT,
	"attachment_id" INT,
	"subject" VARCHAR,
	"from" VARCHAR,
	"to" TEXT,
	"reply_to" VARCHAR,
	"cc" TEXT,
	"bcc" TEXT,
	"view" VARCHAR,
	"params" BLOB,
	"num_attempts" INT,
	"last_attempt_at" INT,
	"status" VARCHAR,
	"created_at" INT,
	"created_by" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "category" (
	"id" INT,
	"name" VARCHAR,
	"code" VARCHAR,
	"parent_category_id" INT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"category_id" INT,
	"image_id" INT,
	"image_url" VARCHAR,
	"name" VARCHAR,
	"manufacturer" VARCHAR,
	"code" VARCHAR,
	"company" VARCHAR,
	"quantity" INT,
	"is_on_auction" TINYINT,
	"is_active" TINYINT,
	"short_description" TEXT,
	"price" FLOAT,
	"retail_price" FLOAT,
	"selling_price" FLOAT,
	"is_used" TINYINT,
	"is_on_carousel" TINYINT,
	"sale" FLOAT,
	"description" TEXT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK_product_category" FOREIGN KEY ("category_id") REFERENCES "category" ("id"),
	 CONSTRAINT "FK_product_file" FOREIGN KEY ("image_id") REFERENCES "file" ("id")
);

CREATE TABLE "auth_rule" (
	"name" VARCHAR,
	"data" BLOB,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item" (
	"name" VARCHAR,
	"type" SMALLINT,
	"description" MEDIUMTEXT,
	"rule_name" VARCHAR,
	"data" BLOB,
	"created_at" INT,
	"updated_at" INT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "auth_item_child" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child"),
	 CONSTRAINT "auth_item_child_ibfk_2" FOREIGN KEY ("child") REFERENCES "auth_item" ("name"),
	 CONSTRAINT "auth_item_child_ibfk_1" FOREIGN KEY ("parent") REFERENCES "auth_item" ("name")
);

CREATE TABLE "auth_assignment" (
	"item_name" VARCHAR,
	"user_id" VARCHAR,
	"created_at" INT,
	 PRIMARY KEY ("item_name","user_id")
);

CREATE TABLE "address" (
	"id" INT,
	"name" VARCHAR,
	"address" VARCHAR,
	"city" VARCHAR,
	"state" VARCHAR,
	"zipcode" VARCHAR,
	"lat" DECIMAL,
	"long" DECIMAL,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profile" (
	"id" INT,
	"image_id" INT,
	"address_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"phone" VARCHAR,
	"status" VARCHAR,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_profile_image" FOREIGN KEY ("image_id") REFERENCES "image" ("id"),
	 CONSTRAINT "fk_profile_address1" FOREIGN KEY ("address_id") REFERENCES "address" ("id")
);

CREATE TABLE "user" (
	"id" INT,
	"profile_id" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	"password_hash" VARCHAR,
	"auth_key" VARCHAR,
	"password_reset_token" VARCHAR,
	"is_active" INT,
	"created_at" INT,
	"created_by" INT,
	"updated_at" INT,
	"updated_by" INT,
	"is_deleted" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_user_profile1" FOREIGN KEY ("profile_id") REFERENCES "profile" ("id")
);
