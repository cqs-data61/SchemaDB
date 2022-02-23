DROP DATABASE IF EXISTS "schema2230";
CREATE DATABASE "schema2230";
USE "schema2230";
CREATE TABLE "t_enum_order_state" (
	"id" INT,
	"state" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_product" (
	"id" MEDIUMINT,
	"name" VARCHAR,
	"price" VARCHAR,
	"product_type" VARCHAR,
	"description" VARCHAR,
	"weight" INT,
	"shipping_type" VARCHAR,
	"delivery_directory" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "t_user" (
	"public" INT,
	"login" VARCHAR,
	"password" VARCHAR,
	"description" VARCHAR,
	"allow_download" INT,
	"nb_pictures_by_page" INT,
	"nb_products_min" INT,
	"long_description" VARCHAR,
	"section_display_mode" INT,
	"section_info_description" VARCHAR,
	"display_picture_names" INT,
	"free_download_dir" VARCHAR,
	 PRIMARY KEY ("login")
);

CREATE TABLE "t_order" (
	"id" MEDIUMINT,
	"username" VARCHAR,
	"useremail" VARCHAR,
	"date" DATETIME,
	"price" DECIMAL,
	"status" INT,
	"downloadfile" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_order_state" FOREIGN KEY ("status") REFERENCES "t_enum_order_state" ("id"),
	 CONSTRAINT "fk_order_user" FOREIGN KEY ("username") REFERENCES "t_user" ("login")
);

CREATE TABLE "ta_user_product" (
	"username" VARCHAR,
	"productid" MEDIUMINT,
	 PRIMARY KEY ("username","productid"),
	 CONSTRAINT "fku" FOREIGN KEY ("username") REFERENCES "t_user" ("login"),
	 CONSTRAINT "fkp" FOREIGN KEY ("productid") REFERENCES "t_product" ("id")
);

CREATE TABLE "t_conf" (
	"password_enable" INT
);
