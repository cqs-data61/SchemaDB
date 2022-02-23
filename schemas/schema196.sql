DROP DATABASE IF EXISTS "schema196";
CREATE DATABASE "schema196";
USE "schema196";
CREATE TABLE "formapago" (
	"idformapago" INT,
	"efectivo" TINYINT,
	"banco" VARCHAR,
	"nom_titular" VARCHAR,
	"num_cuenta" VARCHAR,
	"num_tarjeta" VARCHAR,
	"fecha_ven" TIMESTAMP,
	"nip" VARCHAR,
	 PRIMARY KEY ("idformapago")
);

CREATE TABLE "proveedor" (
	"idproveedor" INT,
	"nombre_pro" VARCHAR,
	"telefono_pro" VARCHAR,
	"correo_pro" VARCHAR,
	"status_prov" TINYINT,
	 PRIMARY KEY ("idproveedor")
);

CREATE TABLE "ingreso" (
	"idingreso" INT,
	"idproveedor" INT,
	"fecha_ingreso" TIMESTAMP,
	"tipo_comprobante" VARCHAR,
	"serie_comprobante" VARCHAR,
	"numero_comprobante" VARCHAR,
	"total" FLOAT,
	 PRIMARY KEY ("idingreso"),
	 CONSTRAINT "idproveedor" FOREIGN KEY ("idproveedor") REFERENCES "proveedor" ("idproveedor")
);

CREATE TABLE "categorias" (
	"idcategorias" INT,
	"nombre_cat" VARCHAR,
	"descripcion_cat" MEDIUMTEXT,
	"status_cat" TINYINT,
	 PRIMARY KEY ("idcategorias")
);

CREATE TABLE "producto" (
	"idproducto" INT,
	"idcategorias" INT,
	"img_producto" VARCHAR,
	"nom_producto" VARCHAR,
	"precio_salida" FLOAT,
	"descripcion" MEDIUMTEXT,
	"marca" VARCHAR,
	"existencia" INT,
	"status_prod" TINYINT,
	 PRIMARY KEY ("idproducto"),
	 CONSTRAINT "idcategorias" FOREIGN KEY ("idcategorias") REFERENCES "categorias" ("idcategorias")
);

CREATE TABLE "detalle_ingreso" (
	"iddetalle_ingreso" INT,
	"idingreso_fk" INT,
	"idproducto_fk" INT,
	"cantidad_pro" INT,
	"precio_in" FLOAT,
	 PRIMARY KEY ("iddetalle_ingreso"),
	 CONSTRAINT "idproducto_fk" FOREIGN KEY ("idproducto_fk") REFERENCES "producto" ("idproducto"),
	 CONSTRAINT "idingreso_fk" FOREIGN KEY ("idingreso_fk") REFERENCES "ingreso" ("idingreso")
);

CREATE TABLE "usuario" (
	"idusuario" INT,
	"nombre" VARCHAR,
	"apellidos" VARCHAR,
	"correo_usuario" VARCHAR,
	"contrasena" VARCHAR,
	"calle_num" VARCHAR,
	"colonia" VARCHAR,
	"codigo_postal" VARCHAR,
	"ciudad" VARCHAR,
	"estado" VARCHAR,
	"referencias" MEDIUMTEXT,
	"fecha_reg_usu" TIMESTAMP,
	"status_user" TINYINT,
	 PRIMARY KEY ("idusuario")
);

CREATE TABLE "venta" (
	"idventa" INT,
	"idusuario" INT,
	"total" FLOAT,
	"idformapago" INT,
	"fecha_venta" TIMESTAMP,
	 PRIMARY KEY ("idventa"),
	 CONSTRAINT "idusuario" FOREIGN KEY ("idusuario") REFERENCES "usuario" ("idusuario"),
	 CONSTRAINT "idformapago" FOREIGN KEY ("idformapago") REFERENCES "formapago" ("idformapago")
);

CREATE TABLE "detalle_venta" (
	"iddetalle_venta" INT,
	"idventa" INT,
	"idproducto" INT,
	"cantidad" INT,
	"subtotal" FLOAT,
	 PRIMARY KEY ("iddetalle_venta"),
	 CONSTRAINT "idproducto" FOREIGN KEY ("idproducto") REFERENCES "producto" ("idproducto"),
	 CONSTRAINT "idventa" FOREIGN KEY ("idventa") REFERENCES "venta" ("idventa")
);

CREATE TABLE "sessions" (
	"session_id" CHAR,
	"atime" TIMESTAMP,
	"data" TEXT
);

CREATE TABLE "admin" (
	"nombre_admin" VARCHAR,
	"apellidos_admin" VARCHAR,
	"num_cuenta" VARCHAR,
	"nombre_banco" VARCHAR,
	"tipo_tarjeta_admin" VARCHAR,
	"num_tarjeta" VARCHAR,
	"telefono_admin" VARCHAR,
	"correo_admin" VARCHAR,
	"password" VARCHAR,
	"privilege" INTEGER,
	"user_hash" VARCHAR,
	"change_pwd" INTEGER,
	"status_admin" INTEGER,
	"created" TIMESTAMP,
	 PRIMARY KEY ("nombre_admin")
);

CREATE TABLE "logs" (
	"id_log" INTEGER,
	"nombre_admin" VARCHAR,
	"ip" VARCHAR,
	"access" TIMESTAMP,
	 CONSTRAINT "fkeycon_logs_to_admin" FOREIGN KEY ("nombre_admin") REFERENCES "admin" ("nombre_admin")
);
