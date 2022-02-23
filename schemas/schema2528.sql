DROP DATABASE IF EXISTS "schema2528";
CREATE DATABASE "schema2528";
USE "schema2528";
CREATE TABLE "report_4" (
	"rpt4_client_code" VARCHAR,
	"rpt4_group" VARCHAR,
	"rpt4_article" VARCHAR,
	"rpt4_description" VARCHAR,
	"rpt4_avg_sales" VARCHAR,
	"rpt4_avg_sales_units" VARCHAR,
	"rpt4_month_sales_units" VARCHAR,
	"rpt4_seller_code" VARCHAR,
	"rpt4_seller" VARCHAR,
	"rpt4_date" DATE
);

CREATE TABLE "report_3" (
	"rpt3_client_code" VARCHAR,
	"rpt3_group" VARCHAR,
	"rpt3_brand" VARCHAR,
	"rpt3_avg_sales" VARCHAR,
	"rpt3_month_sales" VARCHAR,
	"rpt3_scope_perc" VARCHAR,
	"rpt3_seller_code" VARCHAR,
	"rpt3_seller" VARCHAR,
	"rpt3_seller_active" VARCHAR,
	"rpt3_date" DATE
);

CREATE TABLE "report_2" (
	"rpt2_group" VARCHAR,
	"rpt2_abc" VARCHAR,
	"rpt2_avg_sales_weekly" VARCHAR,
	"rpt2_first_week" VARCHAR,
	"rpt2_scope" VARCHAR,
	"rpt2_seller_code" VARCHAR,
	"rpt2_seller" VARCHAR,
	"rpt2_seller_active" VARCHAR,
	"rpt2_date" DATE
);

CREATE TABLE "report_1" (
	"rpt1_group" VARCHAR,
	"rpt1_avg_sales" VARCHAR,
	"rpt1_last_month" VARCHAR,
	"rpt1_scope" VARCHAR,
	"rpt1_sales" VARCHAR,
	"rpt1_seller_code" VARCHAR,
	"rpt1_seller" VARCHAR,
	"rpt1_date" DATE
);

CREATE TABLE "oic_vendedor" (
	"vendedor" VARCHAR,
	"nombre" VARCHAR,
	"e_mail" VARCHAR,
	"activo" VARCHAR,
	"u_supervisor" VARCHAR,
	"u_localidad" VARCHAR,
	"u_rol" VARCHAR
);

CREATE TABLE "habiles" (
	"hbl_id" INT,
	"hbl_date" DATE,
	"hbl_holidays" LONGTEXT,
	"hbl_days" VARCHAR,
	"hbl_habiles_5" DATE,
	 PRIMARY KEY ("hbl_id")
);

CREATE TABLE "clients" (
	"cli_id" INT,
	"cli_name" VARCHAR,
	 PRIMARY KEY ("cli_id")
);

CREATE TABLE "users" (
	"usr_id" INT,
	"usr_name" VARCHAR,
	"usr_last_name" VARCHAR,
	"usr_email" VARCHAR,
	"usr_rol" VARCHAR,
	"usr_status" VARCHAR,
	"cli_id" INT,
	 PRIMARY KEY ("usr_id"),
	 CONSTRAINT "users_ibfk_1" FOREIGN KEY ("cli_id") REFERENCES "clients" ("cli_id")
);

CREATE TABLE "cliente_oic" (
	"cliente" VARCHAR,
	"razon_social" VARCHAR,
	"provincia" VARCHAR,
	"canton" VARCHAR,
	"distrito" VARCHAR,
	"direccion" VARCHAR,
	"zona" VARCHAR,
	"codigo_vendedor" VARCHAR,
	"representante_ventas" VARCHAR,
	"sector_despacho" VARCHAR,
	"condicion_pago" INT
);

CREATE TABLE "base_oic2" (
	"cliente" VARCHAR,
	"nombre" VARCHAR,
	"vendedor" VARCHAR,
	"vennom" VARCHAR,
	"u_segmento" VARCHAR,
	"u_region_vta" VARCHAR,
	"u_agrupacion" VARCHAR,
	"ruta" VARCHAR,
	"zona" VARCHAR,
	"provincia" VARCHAR,
	"canton" VARCHAR,
	"distrito" VARCHAR,
	"pedido" VARCHAR,
	"moneda_factura" VARCHAR,
	"tipo_cambio" DECIMAL,
	"articulo" VARCHAR,
	"descripcion" VARCHAR,
	"clasificacion_1" VARCHAR,
	"clasificacion_1_des" VARCHAR,
	"clasificacion_2" VARCHAR,
	"clasificacion_2_des" VARCHAR,
	"clasificacion_3" VARCHAR,
	"clasificacion_3_des" VARCHAR,
	"clasificacion_4" VARCHAR,
	"clasificacion_4_des" VARCHAR,
	"clasificacion_5" VARCHAR,
	"clasificacion_5_des" VARCHAR,
	"fecha" DATETIME,
	"cantidad" DECIMAL,
	"vtas" DECIMAL,
	"margen" DECIMAL,
	"costo" DECIMAL
);
