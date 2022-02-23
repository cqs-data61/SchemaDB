DROP DATABASE IF EXISTS "schema1551";
CREATE DATABASE "schema1551";
USE "schema1551";
CREATE TABLE "persistent_logins" (
	"username" VARCHAR,
	"series" VARCHAR,
	"token" VARCHAR,
	"last_used" TIMESTAMP,
	 PRIMARY KEY ("series")
);

CREATE TABLE "user_invitation" (
	"token" VARCHAR,
	"email" VARCHAR,
	"message" TEXT,
	"expired_at" TIMESTAMP,
	"accepted" BOOLEAN,
	"accepted_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("token")
);

CREATE TABLE "user" (
	"id" BIGSERIAL,
	"login_id" VARCHAR,
	"login_password" VARCHAR,
	"name_first" VARCHAR,
	"name_last" VARCHAR,
	"nickname" VARCHAR,
	"email" VARCHAR,
	"description" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "user_role" (
	"user_id" INT8,
	"role" VARCHAR,
	 PRIMARY KEY ("user_id","role"),
	 CONSTRAINT "FKhjx9nk20h4mo745tdqj8t8n9d" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "password_reset_token" (
	"token" VARCHAR,
	"user_id" INT8,
	"email" VARCHAR,
	"expired_at" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("token"),
	 CONSTRAINT "FKjthxr8d7rmlunj1uv3lt1xvl5" FOREIGN KEY ("user_id") REFERENCES "user" ("id")
);

CREATE TABLE "tag" (
	"id" BIGSERIAL,
	"language" VARCHAR,
	"name" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "media" (
	"id" VARCHAR,
	"mime_type" VARCHAR,
	"original_name" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "post" (
	"id" BIGSERIAL,
	"code" VARCHAR,
	"language" VARCHAR,
	"status" VARCHAR,
	"date" TIMESTAMP,
	"title" VARCHAR,
	"body" TEXT,
	"cover_id" VARCHAR,
	"author_id" INT8,
	"drafted_id" INT8,
	"drafted_code" VARCHAR,
	"seo_title" VARCHAR,
	"seo_description" TEXT,
	"seo_keywords" TEXT,
	"views" INT8,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKlv86dv65vxnbyndhwdp9evbn5" FOREIGN KEY ("author_id") REFERENCES "user" ("id"),
	 CONSTRAINT "FKmnd7c5s0tpi8fsbtrcv3v1w75" FOREIGN KEY ("drafted_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FKnx17yhqhh2l6dphgxr04fno6p" FOREIGN KEY ("cover_id") REFERENCES "media" ("id")
);

CREATE TABLE "post_tag" (
	"post_id" INT8,
	"tag_id" INT8,
	 PRIMARY KEY ("post_id","tag_id"),
	 CONSTRAINT "FKonr178imgjksqflate1o6ybim" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FK8d78naxn3frlhbqyiurgbtg3v" FOREIGN KEY ("tag_id") REFERENCES "tag" ("id")
);

CREATE TABLE "post_related_post" (
	"post_id" INT8,
	"related_id" INT8,
	 PRIMARY KEY ("related_id","post_id"),
	 CONSTRAINT "FKthyi9hidjpq5vmcamwaj2ap2" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FK8h4kulpvd11c5l4bdn3wfbtie" FOREIGN KEY ("related_id") REFERENCES "post" ("id")
);

CREATE TABLE "post_media" (
	"post_id" INT8,
	"media_id" VARCHAR,
	"index" INT4,
	 PRIMARY KEY ("post_id","index"),
	 CONSTRAINT "FK7dbnkkaarh7suxjlkwn5sh4a7" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FKbt9h1jh7mqdrodqmy8potin0s" FOREIGN KEY ("media_id") REFERENCES "media" ("id")
);

CREATE TABLE "popular_post" (
	"id" BIGSERIAL,
	"post_id" INT8,
	"language" VARCHAR,
	"type" VARCHAR,
	"rank" INT4,
	"views" INT8,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKkk18uxlago62ssjyxk9p3wn4r" FOREIGN KEY ("post_id") REFERENCES "post" ("id")
);

CREATE TABLE "page" (
	"id" INT8,
	"parent_id" INT8,
	"lft" INT4,
	"rgt" INT4,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK71xxvk6cocuigt994gx2yyohk" FOREIGN KEY ("id") REFERENCES "post" ("id"),
	 CONSTRAINT "FK483vwi7bfr4pl0bf57g4abei7" FOREIGN KEY ("parent_id") REFERENCES "page" ("id")
);

CREATE TABLE "comment" (
	"id" BIGSERIAL,
	"post_id" INT8,
	"author_id" INT8,
	"author_name" VARCHAR,
	"date" TIMESTAMP,
	"content" TEXT,
	"approved" BOOLEAN,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKgxbwgh8hcc6k5f2q9vkmjvdps" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FKg229tmp8ip9shg6ydifpc2mk6" FOREIGN KEY ("author_id") REFERENCES "user" ("id")
);

CREATE TABLE "article" (
	"id" INT8,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK2v5gc16vlmfc3b7v9mug9p0nh" FOREIGN KEY ("id") REFERENCES "post" ("id")
);

CREATE TABLE "custom_field" (
	"id" BIGSERIAL,
	"idx" INT4,
	"code" VARCHAR,
	"language" VARCHAR,
	"name" VARCHAR,
	"field_type" VARCHAR,
	"description" TEXT,
	"default_value" VARCHAR,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "custom_field_option" (
	"custom_field_id" INT8,
	"idx" INT4,
	"language" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("custom_field_id","idx"),
	 CONSTRAINT "FKjquafa57imfqsl50qxqm29txr" FOREIGN KEY ("custom_field_id") REFERENCES "custom_field" ("id")
);

CREATE TABLE "custom_field_value" (
	"id" BIGSERIAL,
	"custom_field_id" INT8,
	"post_id" INT8,
	"string_value" VARCHAR,
	"text_value" TEXT,
	"number_value" INT8,
	"date_value" DATE,
	"datetime_value" TIMESTAMP,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK814q6mnv98jdn8ubh5fkyy3sc" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FK68g6fssy3gjj4jovfso18uysm" FOREIGN KEY ("custom_field_id") REFERENCES "custom_field" ("id")
);

CREATE TABLE "category" (
	"id" BIGSERIAL,
	"parent_id" INT8,
	"code" VARCHAR,
	"language" VARCHAR,
	"name" VARCHAR,
	"description" TEXT,
	"lft" INT4,
	"rgt" INT4,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKpqbj33aij72uwx8rwt086hvq2" FOREIGN KEY ("parent_id") REFERENCES "category" ("id")
);

CREATE TABLE "post_category" (
	"post_id" INT8,
	"category_id" INT8,
	 PRIMARY KEY ("post_id","category_id"),
	 CONSTRAINT "FKciko9vgftyon175wslea5d88k" FOREIGN KEY ("post_id") REFERENCES "post" ("id"),
	 CONSTRAINT "FKq63x31lf6aykdrgi3llnc171y" FOREIGN KEY ("category_id") REFERENCES "category" ("id")
);

CREATE TABLE "navigation_item" (
	"id" BIGSERIAL,
	"parent_id" INT8,
	"page_id" INT8,
	"category_id" INT8,
	"language" VARCHAR,
	"type" VARCHAR,
	"sort" INT4,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FK72p6vy4stfruklu8mggg6qt3s" FOREIGN KEY ("category_id") REFERENCES "category" ("id"),
	 CONSTRAINT "FKo9pj7oh5oc36ia8f9flji199u" FOREIGN KEY ("parent_id") REFERENCES "navigation_item" ("id"),
	 CONSTRAINT "FKq2bloyhyl745v0ao2kjfjieyf" FOREIGN KEY ("page_id") REFERENCES "page" ("id")
);

CREATE TABLE "blog" (
	"id" BIGSERIAL,
	"code" VARCHAR,
	"default_language" VARCHAR,
	"ga_tracking_id" VARCHAR,
	"ga_profile_id" VARCHAR,
	"ga_custom_dimension_index" INT4,
	"ga_service_account_id" VARCHAR,
	"ga_service_account_p12_file_name" VARCHAR,
	"ga_service_account_p12_file_content" OID,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "blog_language" (
	"id" BIGSERIAL,
	"blog_id" INT8,
	"language" VARCHAR,
	"title" TEXT,
	"created_at" TIMESTAMP,
	"created_by" VARCHAR,
	"updated_at" TIMESTAMP,
	"updated_by" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "FKm26flfhreaktwyf5x7niter6u" FOREIGN KEY ("blog_id") REFERENCES "blog" ("id")
);
