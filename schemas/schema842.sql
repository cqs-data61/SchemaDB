DROP DATABASE IF EXISTS "schema842";
CREATE DATABASE "schema842";
USE "schema842";
CREATE TABLE "studentgroup" (
	"fid" INTEGER,
	"dbid" INTEGER
);

CREATE TABLE "django_session" (
	"session_key" CHARACTER VARYING,
	"session_data" TEXT,
	"expire_date" DATETIME,
	 PRIMARY KEY ("session_key")
);

CREATE TABLE "django_migrations" (
	"id" INTEGER,
	"app" CHARACTER VARYING,
	"name" CHARACTER VARYING,
	"applied" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_content_type" (
	"id" INTEGER,
	"app_label" CHARACTER VARYING,
	"model" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_permission" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"content_type_id" INTEGER,
	"codename" CHARACTER VARYING,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id")
);

CREATE TABLE "dbmusers" (
	"id" INTEGER,
	"role" INTEGER,
	"email" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"verified" BOOLEAN,
	"token" TEXT,
	"lastlogin" DATETIME,
	"token_expire" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "courses" (
	"fid" INTEGER,
	"coursename" CHARACTER VARYING,
	"info" TEXT,
	"courseid" INTEGER,
	"schema" TEXT,
	"active" BOOLEAN,
	"databases" INTEGER,
	 PRIMARY KEY ("courseid"),
	 CONSTRAINT "courses_id_fkey" FOREIGN KEY ("fid") REFERENCES "dbmusers" ("id")
);

CREATE TABLE "tas" (
	"courseid" INTEGER,
	"studentid" INTEGER,
	"taid" INTEGER,
	 PRIMARY KEY ("courseid","studentid"),
	 CONSTRAINT "tas_role_fkey" FOREIGN KEY ("studentid") REFERENCES "dbmusers" ("id"),
	 CONSTRAINT "tas_courseid_fkey" FOREIGN KEY ("courseid") REFERENCES "courses" ("courseid")
);

CREATE TABLE "studentdatabases" (
	"databasename" TEXT,
	"course" INTEGER,
	"username" CHARACTER VARYING,
	"password" CHARACTER VARYING,
	"fid" INTEGER,
	"dbid" INTEGER,
	"groupid" INTEGER,
	 CONSTRAINT "studentdatabases_fid_fkey" FOREIGN KEY ("fid") REFERENCES "dbmusers" ("id"),
	 CONSTRAINT "studentdatabases_course_fkey" FOREIGN KEY ("course") REFERENCES "courses" ("courseid")
);

CREATE TABLE "schemas" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	"course" INTEGER,
	"sql" TEXT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "schemas_course_fkey" FOREIGN KEY ("course") REFERENCES "courses" ("courseid")
);

CREATE TABLE "auth_user" (
	"id" INTEGER,
	"password" CHARACTER VARYING,
	"last_login" DATETIME,
	"is_superuser" BOOLEAN,
	"username" CHARACTER VARYING,
	"first_name" CHARACTER VARYING,
	"last_name" CHARACTER VARYING,
	"email" CHARACTER VARYING,
	"is_staff" BOOLEAN,
	"is_active" BOOLEAN,
	"date_joined" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_admin_log" (
	"id" INTEGER,
	"action_time" DATETIME,
	"object_id" TEXT,
	"object_repr" CHARACTER VARYING,
	"action_flag" SMALLINT,
	"change_message" TEXT,
	"content_type_id" INTEGER,
	"user_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id")
);

CREATE TABLE "auth_user_user_permissions" (
	"id" INTEGER,
	"user_id" INTEGER,
	"permission_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id")
);

CREATE TABLE "auth_group" (
	"id" INTEGER,
	"name" CHARACTER VARYING,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_groups" (
	"id" INTEGER,
	"user_id" INTEGER,
	"group_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "auth_group_permissions" (
	"id" INTEGER,
	"group_id" INTEGER,
	"permission_id" INTEGER,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id")
);
