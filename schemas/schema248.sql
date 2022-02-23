DROP DATABASE IF EXISTS "schema248";
CREATE DATABASE "schema248";
USE "schema248";
CREATE TABLE "tipos_vinos" (
	"id_vino" INTEGER,
	"categoria" VARCHAR,
	 PRIMARY KEY ("id_vino")
);

CREATE TABLE "tipos_proveedores" (
	"id_tipo_proveedor" INTEGER,
	"tipo_proveedor" VARCHAR,
	 PRIMARY KEY ("id_tipo_proveedor")
);

CREATE TABLE "productos" (
	"id_producto" INTEGER,
	"denominacion" VARCHAR,
	"pvp" INTEGER,
	"ratio" INTEGER,
	"p_neto" INTEGER,
	"id_vino" INTEGER,
	"existencias" INTEGER,
	"id_tipo_proveedor" INTEGER,
	"denominacion_origen" VARCHAR,
	 PRIMARY KEY ("id_producto"),
	 CONSTRAINT "fkeycon_productos_to_tipos_vinos" FOREIGN KEY ("id_vino") REFERENCES "tipos_vinos" ("id_vino"),
	 CONSTRAINT "fkeycon_productos_to_tipos_proveedores" FOREIGN KEY ("id_tipo_proveedor") REFERENCES "tipos_proveedores" ("id_tipo_proveedor")
);

CREATE TABLE "roles" (
	"id_rol" INTEGER,
	"rol" VARCHAR,
	 PRIMARY KEY ("id_rol")
);

CREATE TABLE "empleados" (
	"id_emp" INTEGER,
	"nombre" VARCHAR,
	"apellidos" VARCHAR,
	"nif" VARCHAR,
	"email" VARCHAR,
	"id_rol" INTEGER,
	"direccion" VARCHAR,
	 PRIMARY KEY ("id_emp"),
	 CONSTRAINT "fkeycon_empleados_to_roles" FOREIGN KEY ("id_rol") REFERENCES "roles" ("id_rol")
);

CREATE TABLE "clientes" (
	"id_clientes" INTEGER,
	"razon_social" VARCHAR,
	"cif" VARCHAR,
	"direccion" VARCHAR,
	"telefono" VARCHAR,
	"email" VARCHAR,
	 PRIMARY KEY ("id_clientes")
);

CREATE TABLE "pedidos" (
	"id_solicitud" INTEGER,
	"id_pedido" INTEGER,
	"id_clientes" INTEGER,
	"id_producto" INTEGER,
	"pvp" INTEGER,
	"direccion_entrega" VARCHAR,
	"unidades" INTEGER,
	 PRIMARY KEY ("id_solicitud"),
	 CONSTRAINT "fkeycon_pedidos_to_clientes" FOREIGN KEY ("id_clientes") REFERENCES "clientes" ("id_clientes"),
	 CONSTRAINT "fkeycon_pedidos_to_productos" FOREIGN KEY ("id_producto") REFERENCES "productos" ("id_producto")
);
