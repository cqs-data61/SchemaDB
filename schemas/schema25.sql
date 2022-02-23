DROP DATABASE IF EXISTS "schema25";
CREATE DATABASE "schema25";
USE "schema25";
CREATE TABLE "photos_votes" (
	"photo_id" INT,
	"vote_id" INT
);

CREATE TABLE "galleries_votes" (
	"gallery_id" INT,
	"vote_id" INT
);

CREATE TABLE "commtents_votes" (
	"comments_id" INT,
	"vote_id" INT
);

CREATE TABLE "blogs_votes" (
	"blog_id" INT,
	"vote_id" INT
);

CREATE TABLE "votes" (
	"id" INT,
	"user_id" INT,
	"blog_votes" INT,
	"comment_votes" INT,
	"gallery_votes" INT,
	"photo_votes" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "comments" (
	"id" INT,
	"user_id" INT,
	"blog_id" INT,
	"body" TEXT,
	"good" INT,
	"bad" INT,
	"sum" INT,
	"median" FLOAT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tags" (
	"id" INT,
	"name" VARCHAR,
	"blog_count" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blogs_tags" (
	"blog_id" INT,
	"tag_id" INT
);

CREATE TABLE "blogs" (
	"id" INT,
	"user_id" INT,
	"title" VARCHAR,
	"body" TEXT,
	"storage_id" INT,
	"good" INT,
	"bad" INT,
	"sum" INT,
	"median" FLOAT,
	"time_stamp" DATETIME,
	"expiry" DATE,
	"comment_count" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "galleries" (
	"id" INT,
	"user_id" INT,
	"photo_id" INT,
	"title" VARCHAR,
	"good" INT,
	"bad" INT,
	"sum" INT,
	"median" FLOAT,
	"date_stamp" DATE,
	"photo_count" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "photos" (
	"id" INT,
	"gallery_id" INT,
	"user_id" INT,
	"is_creator" TINYINT,
	"title" VARCHAR,
	"original_id" INT,
	"marked_id" INT,
	"thumbnail_id" INT,
	"good" INT,
	"bad" INT,
	"sum" INT,
	"median" FLOAT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "uploads" (
	"id" INT,
	"user_id" INT,
	"type_id" INT,
	"storage_id" INT,
	"title" VARCHAR,
	"date_stamp" DATE,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "types" (
	"id" INT,
	"name" VARCHAR,
	"mime_type" VARCHAR,
	"file_extension" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "storages" (
	"id" INT,
	"name" VARCHAR,
	"extension" VARCHAR,
	"size" VARCHAR,
	"type" VARCHAR,
	"folder" VARCHAR,
	"uuid" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "smsprotocols" (
	"id" INT,
	"contactprotocol_id" INT,
	"profile_id" INT,
	"msgid" VARCHAR,
	"phone" VARCHAR,
	"report" VARCHAR,
	"costs" FLOAT,
	"status" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contactprotocols" (
	"id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"report" VARCHAR,
	"profiles_selected" INT,
	"profiles_delivered" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "contactpeople" (
	"id" INT,
	"profile_id" INT,
	"footer_phone" TINYINT,
	"contactlist_email" TINYINT,
	"contactlist_phone" TINYINT,
	"contact_recipient" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "books" (
	"id" INT,
	"title" VARCHAR,
	"description" TEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sheets" (
	"id" INT,
	"book_id" INT,
	"musicsheet_id" INT,
	"page" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "publishers" (
	"id" INT,
	"name" VARCHAR,
	"details" TEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "arrangers_musicsheets" (
	"arranger_id" INT,
	"musicsheet_id" INT
);

CREATE TABLE "composers_musicsheets" (
	"composer_id" INT,
	"musicsheet_id" INT
);

CREATE TABLE "musicsheets" (
	"id" INT,
	"title" VARCHAR,
	"details" TEXT,
	"publisher_id" INT,
	"archives" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tracks" (
	"id" INT,
	"event_id" INT,
	"musicsheet_id" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "locations" (
	"id" INT,
	"name" VARCHAR,
	"longitude" DOUBLE,
	"latitude" DOUBLE,
	"radius" DOUBLE,
	"show_on_map" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "customers" (
	"id" INT,
	"name" VARCHAR,
	"street" VARCHAR,
	"postal_code" VARCHAR,
	"town" VARCHAR,
	"akm_flat_rate" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "resources" (
	"id" INT,
	"name" VARCHAR,
	"is_location" TINYINT,
	"info" TEXT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events_resources" (
	"event_id" INT,
	"resource_id" INT
);

CREATE TABLE "modes" (
	"id" INT,
	"name" VARCHAR,
	"is_public" TINYINT,
	"set_availability" TINYINT,
	"set_track" TINYINT,
	"expiry" INT,
	"is_important" TINYINT,
	"quota_default" TINYINT,
	"location_default" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "events_groups" (
	"event_id" INT,
	"group_id" INT
);

CREATE TABLE "events" (
	"id" INT,
	"mode_id" INT,
	"user_id" INT,
	"customer_id" INT,
	"location_id" INT,
	"official_start" DATETIME,
	"show_official_start" TINYINT,
	"start" DATETIME,
	"stop" DATETIME,
	"name" VARCHAR,
	"info" TEXT,
	"expiry" INT,
	"availabilities_checked" TINYINT,
	"tracks_checked" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "availabilities" (
	"id" INT,
	"membership_id" INT,
	"event_id" INT,
	"is_available" TINYINT,
	"was_available" TINYINT,
	"info" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "groups_memberships" (
	"group_id" INT,
	"membership_id" INT
);

CREATE TABLE "groups" (
	"id" INT,
	"privileg_id" INT,
	"storage_id" INT,
	"kind_id" INT,
	"name" VARCHAR,
	"info" TEXT,
	"show_members" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "kinds" (
	"id" INT,
	"name" VARCHAR,
	"is_public" TINYINT,
	"is_official" TINYINT,
	"show_officials" TINYINT,
	"show_in_availability_list" TINYINT,
	"show_contact" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "states" (
	"id" INT,
	"name" VARCHAR,
	"description" TEXT,
	"is_member" TINYINT,
	"is_available" TINYINT,
	"set_availability" TINYINT,
	"show_public" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "memberships" (
	"id" INT,
	"profile_id" INT,
	"state_id" INT,
	"calendar_link" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "salutations" (
	"id" INT,
	"name" VARCHAR,
	"article" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profiles" (
	"id" INT,
	"user_id" INT,
	"storage_id" INT,
	"salutation_id" INT,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"birthday" DATE,
	"phone_private" VARCHAR,
	"phone_mobile" VARCHAR,
	"phone_office" VARCHAR,
	"phone_mobile_opt" VARCHAR,
	"email_opt" VARCHAR,
	"postal_code" VARCHAR,
	"street" VARCHAR,
	"show_name" TINYINT,
	"show_photo" TINYINT,
	"is_composer" TINYINT,
	"is_arranger" TINYINT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profiles_titles" (
	"profile_id" INT,
	"title_id" INT
);

CREATE TABLE "titles" (
	"id" INT,
	"name" VARCHAR,
	"acronym" VARCHAR,
	"placement" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "privilegs" (
	"id" INT,
	"name" VARCHAR,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "privilegs_users" (
	"privileg_id" INT,
	"user_id" INT
);

CREATE TABLE "users" (
	"id" INT,
	"email" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"ticket" VARCHAR,
	"ticket_created" DATETIME,
	"blog_count" INT,
	"comment_count" INT,
	"event_count" INT,
	"gallery_count" INT,
	"photo_count" INT,
	"upload_count" INT,
	"created" DATETIME,
	"modified" DATETIME,
	 PRIMARY KEY ("id")
);
