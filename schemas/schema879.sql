DROP DATABASE IF EXISTS "schema879";
CREATE DATABASE "schema879";
USE "schema879";
CREATE TABLE "version_table" (
	"id" INT,
	"title" VARCHAR,
	"features" LONGTEXT,
	"code" INT,
	"enabled" TINYINT
);

CREATE TABLE "user_followers" (
	"user_id" INT,
	"follower_id" INT
);

CREATE TABLE "tags_table" (
	"id" INT,
	"name" VARCHAR,
	"search" INT
);

CREATE TABLE "support_table" (
	"id" INT,
	"email" VARCHAR,
	"subject" VARCHAR,
	"message" LONGTEXT,
	"created" DATETIME
);

CREATE TABLE "stickers_table" (
	"id" INT,
	"media_id" INT,
	"pack_id" INT,
	"emojis" LONGTEXT,
	"size" INT,
	"position" INT
);

CREATE TABLE "slide_table" (
	"id" INT,
	"pack_id" INT,
	"category_id" INT,
	"media_id" INT,
	"title" VARCHAR,
	"url" VARCHAR,
	"type" VARCHAR,
	"position" INT
);

CREATE TABLE "settings_table" (
	"id" INT,
	"media_id" INT,
	"appname" VARCHAR,
	"appdescription" LONGTEXT,
	"googleplay" LONGTEXT,
	"privacypolicy" LONGTEXT,
	"firebasekey" VARCHAR,
	"rewardedadmobid" VARCHAR,
	"banneradmobid" VARCHAR,
	"bannerfacebookid" VARCHAR,
	"nativebannerfacebookid" VARCHAR,
	"bannertype" VARCHAR,
	"nativeadmobid" VARCHAR,
	"nativefacebookid" VARCHAR,
	"nativeitem" INT,
	"nativetype" VARCHAR,
	"interstitialadmobid" VARCHAR,
	"interstitialfacebookid" VARCHAR,
	"interstitialtype" VARCHAR,
	"interstitialclick" INT,
	"publisherid" VARCHAR,
	"appid" VARCHAR
);

CREATE TABLE "rate_table" (
	"id" INT,
	"pack_id" INT,
	"user_id" INT,
	"value" INT,
	"review" VARCHAR,
	"created" DATETIME
);

CREATE TABLE "packs_tags_table" (
	"pack_id" INT,
	"tag_id" INT
);

CREATE TABLE "packs_table" (
	"id" INT,
	"media_id" INT,
	"user_id" INT,
	"name" VARCHAR,
	"publisher" VARCHAR,
	"publisheremail" VARCHAR,
	"publisherwebsite" VARCHAR,
	"privacypolicywebsite" VARCHAR,
	"licenseagreementwebsite" VARCHAR,
	"tags" LONGTEXT,
	"size" INT,
	"enabled" TINYINT,
	"review" TINYINT,
	"premium" TINYINT,
	"downloads" INT,
	"created" DATETIME
);

CREATE TABLE "packs_categories_table" (
	"pack_id" INT,
	"category_id" INT
);

CREATE TABLE "media_table" (
	"id" INT,
	"titre" VARCHAR,
	"url" VARCHAR,
	"type" VARCHAR,
	"extension" VARCHAR,
	"date" DATETIME,
	"enabled" TINYINT
);

CREATE TABLE "medias_gallerys_table" (
	"gallery_id" INT,
	"media_id" INT
);

CREATE TABLE "gallery_table" (
	"id" INT,
	"titre" VARCHAR
);

CREATE TABLE "fos_user_table" (
	"id" INT,
	"username" VARCHAR,
	"username_canonical" VARCHAR,
	"email" VARCHAR,
	"email_canonical" VARCHAR,
	"enabled" TINYINT,
	"salt" VARCHAR,
	"password" VARCHAR,
	"last_login" DATETIME,
	"locked" TINYINT,
	"expired" TINYINT,
	"expires_at" DATETIME,
	"confirmation_token" VARCHAR,
	"password_requested_at" DATETIME,
	"roles" LONGTEXT,
	"credentials_expired" TINYINT,
	"credentials_expire_at" DATETIME,
	"name" VARCHAR,
	"facebook" VARCHAR,
	"instagram" VARCHAR,
	"twitter" VARCHAR,
	"emailo" VARCHAR,
	"type" VARCHAR,
	"token" LONGTEXT,
	"image" LONGTEXT,
	"trusted" TINYINT
);

CREATE TABLE "device_table" (
	"id" INT,
	"token" LONGTEXT
);

CREATE TABLE "category_table" (
	"id" INT,
	"media_id" INT,
	"title" VARCHAR,
	"position" INT
);
