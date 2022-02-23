DROP DATABASE IF EXISTS "schema2521";
CREATE DATABASE "schema2521";
USE "schema2521";
CREATE TABLE "users_profilefields" (
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

CREATE TABLE "users_profiles" (
	"user_id" INT,
	"lastname" VARCHAR,
	"firstname" VARCHAR,
	 PRIMARY KEY ("user_id")
);

CREATE TABLE "users" (
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

CREATE TABLE "text_translation" (
	"id" INT,
	"language" VARCHAR,
	"translation" TEXT,
	 PRIMARY KEY ("id","language")
);

CREATE TABLE "text" (
	"id" INT,
	"category" VARCHAR,
	"message" TEXT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rights_user" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"email" VARCHAR,
	"password" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "rights_authitemchild" (
	"parent" VARCHAR,
	"child" VARCHAR,
	 PRIMARY KEY ("parent","child")
);

CREATE TABLE "rights_authitem" (
	"name" VARCHAR,
	"type" INT,
	"description" TEXT,
	"bizrule" TEXT,
	"data" TEXT,
	 PRIMARY KEY ("name")
);

CREATE TABLE "rights_authassignment" (
	"itemname" VARCHAR,
	"userid" VARCHAR,
	"bizrule" TEXT,
	"data" TEXT,
	 PRIMARY KEY ("itemname","userid")
);

CREATE TABLE "rights" (
	"itemname" VARCHAR,
	"type" INT,
	"weight" INT,
	 PRIMARY KEY ("itemname")
);
