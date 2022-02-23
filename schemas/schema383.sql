DROP DATABASE IF EXISTS "schema383";
CREATE DATABASE "schema383";
USE "schema383";
CREATE TABLE "users" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"username" VARCHAR,
	"password" VARCHAR,
	"address" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "turns" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"start_time" DATETIME,
	"end_time" DATETIME,
	 PRIMARY KEY ("id")
);

CREATE TABLE "servicios" (
	"id" BIGINT,
	"create_at" DATE,
	"nombre" VARCHAR,
	"precio" DOUBLE,
	"departamento_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "roles" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "users_roles" (
	"user_id" INT,
	"role_id" INT,
	 PRIMARY KEY ("user_id","role_id"),
	 CONSTRAINT "user_role_role_fk" FOREIGN KEY ("role_id") REFERENCES "roles" ("id"),
	 CONSTRAINT "user_role_user_fk" FOREIGN KEY ("user_id") REFERENCES "users" ("id")
);

CREATE TABLE "propietario" (
	"id" BIGINT,
	"apellido" VARCHAR,
	"create_at" DATE,
	"email" VARCHAR,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "productos" (
	"id" BIGINT,
	"create_at" DATE,
	"nombre" VARCHAR,
	"precio" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "product_types" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "products" (
	"id" INT,
	"price" DOUBLE,
	"name" VARCHAR,
	"product_type_id" INT,
	"code" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "product_product_type_fk" FOREIGN KEY ("product_type_id") REFERENCES "product_types" ("id")
);

CREATE TABLE "product_topping" (
	"main_dish_id" INT,
	"topping_id" INT,
	 PRIMARY KEY ("main_dish_id","topping_id")
);

CREATE TABLE "payment_types" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	"code" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "order_types" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "orders" (
	"id" INT,
	"order_type_id" INT,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "order_order_type_fk" FOREIGN KEY ("order_type_id") REFERENCES "order_types" ("id")
);

CREATE TABLE "order_items" (
	"id" INT,
	"order_id" INT,
	"product_id" INT,
	"count" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mantenimientos" (
	"id" BIGINT,
	"tipo" VARCHAR,
	"nombre" VARCHAR,
	"precio" DOUBLE,
	"proveedor" VARCHAR,
	"edificio_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "mantenimiento_prueba" (
	"id" BIGINT,
	"nombre" VARCHAR,
	"precio" DOUBLE,
	"edificio_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "inquilino" (
	"id" BIGINT,
	"apellido" VARCHAR,
	"create_at" DATE,
	"email" VARCHAR,
	"nombre" VARCHAR,
	"tipo" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "facturas_item" (
	"id" BIGINT,
	"cantidad" INT,
	"producto_id" BIGINT,
	"factura_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "facturas" (
	"id" BIGINT,
	"create_at" DATE,
	"descripcion" VARCHAR,
	"observacion" VARCHAR,
	"inquilino_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "expensas_item" (
	"id" BIGINT,
	"cantidad" INT,
	"mantenimiento_id" BIGINT,
	"servicio_id" BIGINT,
	"expensa_id" BIGINT,
	"cobrado" BIT,
	"enfactura" BIT,
	"precio" DOUBLE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "expensas" (
	"id" BIGINT,
	"create_at" DATE,
	"descripcion" VARCHAR,
	"observacion" VARCHAR,
	"departamento_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "edificios" (
	"id" BIGINT,
	"nombre" VARCHAR,
	"direccion_id" BIGINT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "direccion" (
	"id" BIGINT,
	"calle" VARCHAR,
	"numero" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departamentos" (
	"id" INT,
	"cantidad_habitacion" INT,
	"nombre" VARCHAR,
	"edificio_id" INT,
	"departamento_estados_id" INT,
	"inquilino_id" INT,
	"propietario_id" INT,
	"patente" VARCHAR,
	"caballos_fuerza" VARCHAR,
	"kilometros" INT,
	"modelo" VARCHAR,
	"traccion" VARCHAR,
	"tipo" VARCHAR,
	"marca" VARCHAR,
	"fecha" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "departamento_estados" (
	"id" BIGINT,
	"descripcion" VARCHAR,
	"nombre" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "clients" (
	"id" INT,
	"name" VARCHAR,
	"lastname" VARCHAR,
	"dni" INT,
	"phone" VARCHAR,
	"email" VARCHAR,
	"address" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cash_status" (
	"id" INT,
	"name" VARCHAR,
	"description" VARCHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cashes" (
	"id" INT,
	"turn_id" INT,
	"user_id" INT,
	"cash_status_id" INT,
	"start_money" DOUBLE,
	"end_money" DOUBLE,
	"start_date" DATETIME,
	"end_date" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fk_cashes_cash_status" FOREIGN KEY ("cash_status_id") REFERENCES "cash_status" ("id")
);

CREATE TABLE "sales" (
	"id" INT,
	"cash_id" INT,
	"order_id" INT,
	"client_id" INT,
	"payment_type_id" INT,
	"date" DATE,
	"payment_value" DOUBLE,
	"returned_value" DOUBLE,
	"total" DOUBLE,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "sale_order_fk" FOREIGN KEY ("order_id") REFERENCES "orders" ("id"),
	 CONSTRAINT "sale_client_fk" FOREIGN KEY ("client_id") REFERENCES "clients" ("id"),
	 CONSTRAINT "sale_payment_type_fk" FOREIGN KEY ("payment_type_id") REFERENCES "payment_types" ("id"),
	 CONSTRAINT "sale_chash_fk" FOREIGN KEY ("cash_id") REFERENCES "cashes" ("id")
);

CREATE TABLE "authorities" (
	"id" BIGINT,
	"authority" VARCHAR,
	"user_id" BIGINT,
	 PRIMARY KEY ("id")
);
