DROP DATABASE IF EXISTS "schema1289";
CREATE DATABASE "schema1289";
USE "schema1289";
CREATE TABLE "tbl_profiles_fields" (
	"id" INT,
	"varname" VARCHAR,
	"title" VARCHAR,
	"field_type" VARCHAR,
	"field_size" VARCHAR,
	"field_size_min" VARCHAR,
	"required" INT,
	"match" VARCHAR,
	"range" VARCHAR,
	"error_message" VARCHAR,
	"other_validator" VARCHAR,
	"default" VARCHAR,
	"widget" VARCHAR,
	"widgetparams" VARCHAR,
	"position" INT,
	"visible" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tbl_profiles" (
	"user_id" INT,
	"lastname" VARCHAR,
	"firstname" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "tbl_users" (
	"id" INT,
	"username" VARCHAR,
	"password" VARCHAR,
	"email" VARCHAR,
	"activkey" VARCHAR,
	"create_at" TIMESTAMP,
	"lastvisit_at" TIMESTAMP,
	"superuser" INT,
	"status" INT,
	 PRIMARY KEY ("id")
);
