DROP DATABASE IF EXISTS "schema2265";
CREATE DATABASE "schema2265";
USE "schema2265";
CREATE TABLE "toppings" (
	"id" INT,
	"vegetarian" TINYINT,
	"name" VARCHAR,
	"price" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product" (
	"id" INT,
	"price" FLOAT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pizza_toppings" (
	"id" BIGINT,
	"pizza_id" BIGINT,
	"toppings_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "pizza" (
	"id" INT,
	"product_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders_products" (
	"id" BIGINT,
	"orders_id" BIGINT,
	"product_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "drink" (
	"id" INT,
	"product_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_site" (
	"id" INT,
	"domain" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_session" (
	"session_key" VARCHAR,
	"session_data" LONGTEXT,
	"expire_date" DATETIME,
	 PRIMARY KEY ("session_key")
);

CREATE TABLE "django_migrations" (
	"id" BIGINT,
	"app" VARCHAR,
	"name" VARCHAR,
	"applied" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_content_type" (
	"id" INT,
	"app_label" VARCHAR,
	"model" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "dessert" (
	"id" INT,
	"product_id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user" (
	"id" INT,
	"password" VARCHAR,
	"last_login" DATETIME,
	"is_superuser" TINYINT,
	"username" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"email" VARCHAR,
	"is_staff" TINYINT,
	"is_active" TINYINT,
	"date_joined" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "django_admin_log" (
	"id" INT,
	"action_time" DATETIME,
	"object_id" LONGTEXT,
	"object_repr" VARCHAR,
	"action_flag" SMALLINT,
	"change_message" LONGTEXT,
	"content_type_id" INT,
	"user_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "django_admin_log_user_id_c564eba6_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "auth_permission" (
	"id" INT,
	"name" VARCHAR,
	"content_type_id" INT,
	"codename" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_user_permissions" (
	"id" BIGINT,
	"user_id" INT,
	"permission_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id"),
	 CONSTRAINT "auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id")
);

CREATE TABLE "auth_group" (
	"id" INT,
	"name" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "auth_user_groups" (
	"id" BIGINT,
	"user_id" INT,
	"group_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_user_groups_group_id_97559544_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id"),
	 CONSTRAINT "auth_user_groups_user_id_6a12ed8b_fk_auth_user_id" FOREIGN KEY ("user_id") REFERENCES "auth_user" ("id")
);

CREATE TABLE "auth_group_permissions" (
	"id" BIGINT,
	"group_id" INT,
	"permission_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id")
);

CREATE TABLE "area" (
	"id" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "delivery_person" (
	"id" INT,
	"name" VARCHAR,
	"area_id" INT,
	"availibility" TINYINT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "delivery_person_ibfk_2" FOREIGN KEY ("area_id") REFERENCES "area" ("id")
);

CREATE TABLE "customer" (
	"id" INT,
	"area_id" INT,
	"address" VARCHAR,
	"name" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "customer_ibfk_1" FOREIGN KEY ("area_id") REFERENCES "area" ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"customer_id" INT,
	"status" VARCHAR,
	"order_time" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "orders_ibfk_1" FOREIGN KEY ("customer_id") REFERENCES "customer" ("id")
);
