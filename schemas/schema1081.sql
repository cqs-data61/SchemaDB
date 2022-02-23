DROP DATABASE IF EXISTS "schema1081";
CREATE DATABASE "schema1081";
USE "schema1081";
CREATE TABLE "cloudinary_resource" (
	"id" VARCHAR,
	"created_at" DATETIME,
	"format" VARCHAR,
	"resource_type" VARCHAR,
	"size" BIGINT,
	"url" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "youtuber" (
	"id" BIGINT,
	"email" VARCHAR,
	"name" VARCHAR,
	"channel_id" VARCHAR,
	"description" VARCHAR,
	"profile_picture" VARCHAR,
	"published_at" DATETIME,
	"subscriber_count" BIGINT,
	"video_count" BIGINT,
	"view_count" BIGINT,
	"update_date" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "role" (
	"id" BIGINT,
	"authority" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user" (
	"id" BIGINT,
	"email" VARCHAR,
	"name" VARCHAR,
	"created_date" DATETIME,
	"password" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "company" (
	"id" BIGINT,
	"workers_count" INT,
	"logo" VARCHAR,
	"company_creation_date" DATETIME,
	"description" VARCHAR,
	"income_last_year" DECIMAL,
	"phone" VARCHAR,
	"status" VARCHAR,
	"status_modify_date" DATETIME,
	"town" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_company_to_cloudinary_resource" FOREIGN KEY ("logo") REFERENCES "cloudinary_resource" ("id"),
	 CONSTRAINT "fkeycon_company_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "subscription" (
	"youtuber_id" BIGINT,
	"company_id" BIGINT,
	"is_blocked" BIT,
	"subscription_date" DATETIME,
	 PRIMARY KEY ("company_id","youtuber_id"),
	 CONSTRAINT "fkeycon_subscription_to_company" FOREIGN KEY ("company_id") REFERENCES "company" ("id"),
	 CONSTRAINT "fkeycon_subscription_to_youtuber" FOREIGN KEY ("youtuber_id") REFERENCES "youtuber" ("id")
);

CREATE TABLE "youtuber_rating" (
	"youtuber_id" BIGINT,
	"company_id" BIGINT,
	"creation_date" DATETIME,
	"rating" TINYINT,
	 PRIMARY KEY ("company_id","youtuber_id"),
	 CONSTRAINT "fkeycon_youtuber_rating_to_company" FOREIGN KEY ("company_id") REFERENCES "company" ("id"),
	 CONSTRAINT "fkeycon_youtuber_rating_to_youtuber" FOREIGN KEY ("youtuber_id") REFERENCES "youtuber" ("id")
);

CREATE TABLE "ad" (
	"id" BIGINT,
	"creation_date" DATETIME,
	"is_blocked" BIT,
	"min_subscribers" BIGINT,
	"min_videos" BIGINT,
	"min_views" BIGINT,
	"reward" DECIMAL,
	"short_description" VARCHAR,
	"title" VARCHAR,
	"valid_to" DATETIME,
	"creator_id" BIGINT,
	"picture_id" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_ad_to_company" FOREIGN KEY ("creator_id") REFERENCES "company" ("id"),
	 CONSTRAINT "fkeycon_ad_to_cloudinary_resource" FOREIGN KEY ("picture_id") REFERENCES "cloudinary_resource" ("id")
);

CREATE TABLE "ad_rating" (
	"youtuber_id" BIGINT,
	"ad_id" BIGINT,
	"creation_date" DATETIME,
	"rating" TINYINT,
	 PRIMARY KEY ("ad_id","youtuber_id"),
	 CONSTRAINT "fkeycon_ad_rating_to_ad" FOREIGN KEY ("ad_id") REFERENCES "ad" ("id"),
	 CONSTRAINT "fkeycon_ad_rating_to_youtuber" FOREIGN KEY ("youtuber_id") REFERENCES "youtuber" ("id")
);

CREATE TABLE "ad_application" (
	"youtuber_id" BIGINT,
	"ad_id" BIGINT,
	"application_date" DATETIME,
	"description" VARCHAR,
	"mail_sent" BIT,
	"type" VARCHAR,
	 PRIMARY KEY ("ad_id","youtuber_id"),
	 CONSTRAINT "fkeycon_ad_application_to_ad" FOREIGN KEY ("ad_id") REFERENCES "ad" ("id"),
	 CONSTRAINT "fkeycon_ad_application_to_youtuber" FOREIGN KEY ("youtuber_id") REFERENCES "youtuber" ("id")
);

CREATE TABLE "characteristic" (
	"id" BIGINT,
	"name" VARCHAR,
	"value" VARCHAR,
	"ad_id" BIGINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_characteristic_to_ad" FOREIGN KEY ("ad_id") REFERENCES "ad" ("id")
);

CREATE TABLE "user_role" (
	"user_id" BIGINT,
	"role_id" BIGINT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "fkeycon_user_role_to_role" FOREIGN KEY ("role_id") REFERENCES "role" ("id"),
	 CONSTRAINT "fkeycon_user_role_to_user" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);
