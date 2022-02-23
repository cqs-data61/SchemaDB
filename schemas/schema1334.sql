DROP DATABASE IF EXISTS "schema1334";
CREATE DATABASE "schema1334";
USE "schema1334";
CREATE TABLE "users_to_topics" (
	"id" SERIAL,
	"user_id" TEXT,
	"topic_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collections_to_topics" (
	"id" SERIAL,
	"collection_id" TEXT,
	"topic_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "topics" (
	"id" TEXT,
	"created_at" DATETIME,
	"label" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "messages" (
	"id" TEXT,
	"created_at" DATETIME,
	"content" TEXT,
	"link_id" TEXT,
	"user_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "news_links" (
	"id" SERIAL,
	"created_at" DATETIME,
	"title" TEXT,
	"url" TEXT,
	"reading_time" INTEGER,
	"image_filename" TEXT,
	"via_type" TEXT,
	"via_link_id" TEXT,
	"via_collection_id" TEXT,
	"is_read" BOOLEAN,
	"is_removed" BOOLEAN,
	"user_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "followed_collections" (
	"id" SERIAL,
	"created_at" DATETIME,
	"user_id" TEXT,
	"collection_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "links_to_collections" (
	"id" SERIAL,
	"link_id" TEXT,
	"collection_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "links" (
	"id" TEXT,
	"created_at" DATETIME,
	"title" TEXT,
	"url" TEXT,
	"url_feeds" LONGTEXT,
	"is_hidden" BOOLEAN,
	"reading_time" INTEGER,
	"image_filename" TEXT,
	"fetched_at" DATETIME,
	"fetched_code" INTEGER,
	"fetched_error" TEXT,
	"user_id" TEXT,
	"feed_entry_id" TEXT,
	"feed_published_at" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "collections" (
	"id" TEXT,
	"created_at" DATETIME,
	"name" TEXT,
	"description" TEXT,
	"type" TEXT,
	"is_public" BOOLEAN,
	"user_id" TEXT,
	"feed_url" TEXT,
	"feed_site_url" TEXT,
	"feed_fetched_code" INTEGER,
	"feed_fetched_at" DATETIME,
	"feed_fetched_error" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "importations" (
	"id" SERIAL,
	"created_at" DATETIME,
	"type" TEXT,
	"status" TEXT,
	"options" LONGTEXT,
	"error" TEXT,
	"user_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sessions" (
	"id" TEXT,
	"created_at" DATETIME,
	"confirmed_password_at" DATETIME,
	"name" TEXT,
	"ip" TEXT,
	"user_id" TEXT,
	"token" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "feature_flags" (
	"id" SERIAL,
	"created_at" DATETIME,
	"type" TEXT,
	"user_id" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users" (
	"id" TEXT,
	"created_at" DATETIME,
	"email" TEXT,
	"username" TEXT,
	"password_hash" TEXT,
	"locale" TEXT,
	"avatar_filename" TEXT,
	"csrf" TEXT,
	"news_preferences" LONGTEXT,
	"validated_at" DATETIME,
	"validation_token" TEXT,
	"subscription_account_id" TEXT,
	"subscription_expired_at" DATETIME,
	"pocket_request_token" TEXT,
	"pocket_access_token" TEXT,
	"pocket_username" TEXT,
	"pocket_error" INTEGER,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tokens" (
	"token" TEXT,
	"created_at" DATETIME,
	"expired_at" DATETIME,
	"invalidated_at" DATETIME,
	 PRIMARY KEY ("token")
);

CREATE TABLE "jobs" (
	"id" SERIAL,
	"name" TEXT,
	"created_at" DATETIME,
	"handler" LONGTEXT,
	"perform_at" DATETIME,
	"frequency" TEXT,
	"queue" TEXT,
	"locked_at" DATETIME,
	"number_attempts" INTEGER,
	"last_error" TEXT,
	"failed_at" DATETIME,
	 PRIMARY KEY ("id")
);
