DROP DATABASE IF EXISTS "schema1796";
CREATE DATABASE "schema1796";
USE "schema1796";
CREATE TABLE "producto" (
	"pto_id" INT,
	"pto_nombre" VARCHAR,
	"pto_precio" DECIMAL,
	"pto_iva" DECIMAL,
	 PRIMARY KEY ("pto_id")
);

CREATE TABLE "cliente" (
	"cte_id" INT,
	"cte_documento" VARCHAR,
	"cte_direccion" VARCHAR,
	"cte_nombre_completo" VARCHAR,
	 PRIMARY KEY ("cte_id")
);

CREATE TABLE "pedido" (
	"pdo_id" INT,
	"pdo_cliente_id" INT,
	"pdo_valor" DECIMAL,
	"pdo_iva" DECIMAL,
	"pdo_domicilio" DECIMAL,
	"pdo_estado" VARCHAR,
	"pdo_fecha_pedido" DATE,
	 PRIMARY KEY ("pdo_id")
);

CREATE TABLE "detalle" (
	"dte_id" INT,
	"dte_producto_id" INT,
	"dte_pedido_id" INT,
	"dte_valor_unitario" DECIMAL,
	"dte_total" DECIMAL,
	"dte_cantidad" INT,
	 PRIMARY KEY ("dte_id"),
	 CONSTRAINT "detalle_ibfk_3" FOREIGN KEY ("dte_pedido_id") REFERENCES "pedido" ("pdo_id"),
	 CONSTRAINT "detalle_ibfk_2" FOREIGN KEY ("dte_producto_id") REFERENCES "producto" ("pto_id")
);
