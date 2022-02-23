DROP DATABASE IF EXISTS "schema1988";
CREATE DATABASE "schema1988";
USE "schema1988";
CREATE TABLE "options" (
	"option_pk" INT,
	"option_id" VARCHAR,
	"category" ENUM,
	"manufacturer" VARCHAR,
	"name" VARCHAR,
	"price" DECIMAL,
	 PRIMARY KEY ("option_pk")
);

CREATE TABLE "tires" (
	"tire_pk" INT,
	"tire_id" VARCHAR,
	"tire_size" VARCHAR,
	"manufacturer" VARCHAR,
	"price" DECIMAL,
	"warranty_miles" INT,
	 PRIMARY KEY ("tire_pk")
);

CREATE TABLE "engines" (
	"engine_pk" INT,
	"engine_id" VARCHAR,
	"size_in_liters" DECIMAL,
	"name" VARCHAR,
	"fuel_type" ENUM,
	"mpg_city" DECIMAL,
	"mpg_hwy" DECIMAL,
	"has_start_stop" BOOLEAN,
	"description" VARCHAR,
	"price" DECIMAL,
	 PRIMARY KEY ("engine_pk")
);

CREATE TABLE "colors" (
	"color_pk" INT,
	"color_id" VARCHAR,
	"color" VARCHAR,
	"price" DECIMAL,
	"is_exterior" BOOLEAN,
	 PRIMARY KEY ("color_pk")
);

CREATE TABLE "models" (
	"model_pk" INT,
	"model_id" ENUM,
	"trim_level" VARCHAR,
	"num_doors" INT,
	"wheel_size" INT,
	"base_price" DECIMAL,
	 PRIMARY KEY ("model_pk")
);

CREATE TABLE "images" (
	"image_pk" INT,
	"model_fk" INT,
	"image_id" VARCHAR,
	"width" INT,
	"height" INT,
	"mime_type" ENUM,
	"name" VARCHAR,
	"data" MEDIUMBLOB,
	 PRIMARY KEY ("image_pk"),
	 CONSTRAINT "fkeycon_images_to_models" FOREIGN KEY ("model_fk") REFERENCES "models" ("model_pk")
);

CREATE TABLE "customers" (
	"customer_pk" INT,
	"customer_id" VARCHAR,
	"first_name" VARCHAR,
	"last_name" VARCHAR,
	"phone" VARCHAR,
	 PRIMARY KEY ("customer_pk")
);

CREATE TABLE "orders" (
	"order_pk" INT,
	"customer_fk" INT,
	"color_fk" INT,
	"engine_fk" INT,
	"tire_fk" INT,
	"model_fk" INT,
	"price" DECIMAL,
	 PRIMARY KEY ("order_pk"),
	 CONSTRAINT "fkeycon_orders_to_tires" FOREIGN KEY ("tire_fk") REFERENCES "tires" ("tire_pk"),
	 CONSTRAINT "fkeycon_orders_to_colors" FOREIGN KEY ("color_fk") REFERENCES "colors" ("color_pk"),
	 CONSTRAINT "fkeycon_orders_to_engines" FOREIGN KEY ("engine_fk") REFERENCES "engines" ("engine_pk"),
	 CONSTRAINT "fkeycon_orders_to_customers" FOREIGN KEY ("customer_fk") REFERENCES "customers" ("customer_pk"),
	 CONSTRAINT "fkeycon_orders_to_models" FOREIGN KEY ("model_fk") REFERENCES "models" ("model_pk")
);

CREATE TABLE "order_options" (
	"option_fk" INT,
	"order_fk" INT,
	 CONSTRAINT "fkeycon_order_options_to_orders" FOREIGN KEY ("order_fk") REFERENCES "orders" ("order_pk"),
	 CONSTRAINT "fkeycon_order_options_to_options" FOREIGN KEY ("option_fk") REFERENCES "options" ("option_pk")
);
