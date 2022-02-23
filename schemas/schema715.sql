DROP DATABASE IF EXISTS "schema715";
CREATE DATABASE "schema715";
USE "schema715";
CREATE TABLE "vehiculo_tipo" (
	"id" INT,
	"tipo" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vehiculo_marca" (
	"id" INT,
	"marca" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "vehiculo" (
	"id" INT,
	"vehiculo_tipo_id" INT,
	"vehiculo_marca_id" INT,
	"patente" CHAR,
	"propietario_id" INT,
	"mercosur" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usuarios" (
	"id" INT,
	"persona_id" INT,
	"usuario" TEXT,
	"pass" TEXT,
	"l_catastro" BOOL,
	"l_comercio" BOOL,
	"l_formularios" BOOL,
	"l_gobierno" BOOL,
	"l_hacienda" BOOL,
	"opcion" BOOL,
	"l_oprivadas" BOOL,
	"l_opublicas" BOOL,
	"l_persona" BOOL,
	"l_accionsocial" BOOL,
	"l_transito" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "usr_log" (
	"id" INT,
	"fecha_hora" TEXT,
	"user_id" INT,
	"token" CHAR,
	"equipo" CHAR,
	"sesion" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "transito_inspector" (
	"id" INT,
	"persona_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "titular_catastro" (
	"id" INT,
	"cat_id" INT,
	"per_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "tablas_externas" (
	"id" INT,
	"actividad" CHAR,
	"cuentas" CHAR,
	"historial" CHAR,
	"muertos" CHAR,
	"personas" CHAR,
	"tipo" CHAR,
	"variables" CHAR,
	"vencimientos" CHAR,
	"zona" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "sql_log" (
	"id" INT,
	"_user_id" INT,
	"_sql" TEXT,
	"_con" CHAR,
	"_date" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "seccion" (
	"id" INT,
	"descripcion" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "responsable_iva" (
	"id" INT,
	"descripcion" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "responsable_expediente" (
	"id" INT,
	"opr_id" INT,
	"per_id" INT,
	"principal" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "provincias" (
	"nombre" CHAR,
	"id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "proveedor" (
	"id" INT,
	"per_id" INT,
	"actividad_id" INT,
	"responsable_iva_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "prov_actividad" (
	"id" INT,
	"actividad" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profesional_titulo" (
	"id" INT,
	"descripcion" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "profesional" (
	"id" INT,
	"per_id" BIGINT,
	"matricula" CHAR,
	"titulo_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "persona" (
	"id" INT,
	"razon" CHAR,
	"cuil" BIGINT,
	"email" CHAR,
	"telefono" BIGINT,
	"difunto" BOOL,
	"fisica" BOOL,
	"ruta_defuncion" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "per_domicilio" (
	"id" INT,
	"per_id" INT,
	"calle" CHAR,
	"altura" INT,
	"piso" INT,
	"dpto" CHAR,
	"localidad_id" INT,
	"principal" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "per_documento" (
	"id" INT,
	"per_id" INT,
	"fecha" DATE,
	"descripcion" CHAR,
	"ruta" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "ordenanza" (
	"id" INT,
	"codigo" INT,
	"fecha" CHAR,
	"concepto" CHAR,
	"ruta_copia" CHAR,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "opu_nota_pedido" (
	"id" INT,
	"proveedor_id" INT,
	"numpedido" INT,
	"fecha" DATE,
	"descripcion" CHAR,
	"destino" CHAR,
	"responsable_id" INT,
	"autoriza_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "oprivadas" (
	"id" INT,
	"profesional_id" BIGINT,
	"user_id" INT,
	"expediente" BIGINT,
	"recibe" CHAR,
	"tarea" CHAR,
	"tarea2" CHAR,
	"inicio_obra" DATE,
	"fin_obra" DATE,
	"temporal" BOOL,
	"visado" BOOL,
	"observaciones" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "opr_pago" (
	"id" INT,
	"opr_id" INT,
	"tipo_deuda" CHAR,
	"cuota" INT,
	"deuda" DECIMAL,
	"vence" DATE,
	"fecha_pago" DATE,
	"pago" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "opr_documento" (
	"id" INT,
	"opr_id" INT,
	"fecha" DATE,
	"descripcion" CHAR,
	"ruta" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "opciones" (
	"id" INT,
	"opcion" CHAR,
	"valor" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "numtostr_dict" (
	"id" INT,
	"num" SMALLINT,
	"str" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "multas_historial" (
	"id" INT,
	"fecha_boleta" DATE,
	"observaciones" TEXT,
	"vehiculo_id" INT,
	"ubicacion" CHAR,
	"conductor_id" INT,
	"inspector_id" INT,
	"boleta" INT,
	"articulo_id" INT,
	"pago" BOOL,
	"fecha_pago" DATE,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "multas_articulo" (
	"id" INT,
	"descripcion" CHAR,
	"articulo" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "localidades" (
	"id" INT,
	"cp" CHAR,
	"nombre" CHAR,
	"provincia_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_contrato" (
	"id" INT,
	"proveedor_id" INT,
	"inicio" CHAR,
	"dias" INT,
	"monto" DECIMAL,
	"detalle" CHAR,
	"autoridad1" INT,
	"autoridad2" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_combustible_tipo" (
	"id" INT,
	"descripcion" CHAR,
	"por_litro" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_combustible_ticket" (
	"id" INT,
	"proveedor_id" INT,
	"responsable_id" INT,
	"fecha" DATE,
	"ticket" BIGINT,
	"total" DECIMAL,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_combustible_responsable" (
	"id" INT,
	"receptor_id" INT,
	"persona_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_combustible_receptor" (
	"id" INT,
	"cuenta" BIGINT,
	"categoria_id" INT,
	"marca" CHAR,
	"mercosur" BOOL,
	"dominio" CHAR,
	"modelo" INT,
	"alta" DATE,
	"baja" DATE,
	"observaciones" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_combustible_items" (
	"id" INT,
	"ticket_id" INT,
	"tipo_item_id" INT,
	"litros" INT,
	"monto" DECIMAL,
	"unidades" INT,
	"user_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_combustible_categoria_receptor" (
	"id" INT,
	"detalle" CHAR,
	"vehiculo" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "hac_adelanto" (
	"id" INT,
	"monto" DECIMAL,
	"fecha" DATE,
	"persona_id" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "empleado" (
	"id" INT,
	"per_id" INT,
	"alta" CHAR,
	"baja" CHAR,
	"jerarquia" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emp_vacaciones" (
	"id" INT,
	"empleado_id" INT,
	"tipo" CHAR,
	"inicio" DATE,
	"final" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emp_horario" (
	"id" INT,
	"empleado_id" INT,
	"ingreso" DATE,
	"horas" INT,
	"dia_semana" INT,
	 PRIMARY KEY ("id")
);

CREATE TABLE "emp_asistencia" (
	"id" INT,
	"empleado_id" INT,
	"ingreso" DATE,
	"egreso" DATE,
	 PRIMARY KEY ("id")
);

CREATE TABLE "catastro" (
	"id" INT,
	"user_id" INT,
	"opr_id" INT,
	"zona" DECIMAL,
	"circ" DECIMAL,
	"secc" DECIMAL,
	"manz" DECIMAL,
	"parc" DECIMAL,
	"lote" DECIMAL,
	"barrio" CHAR,
	"uso" CHAR,
	"cuenta" INT,
	"archivado" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cat_superficie" (
	"id" INT,
	"catastro_id" INT,
	"proyecto" DECIMAL,
	"relevamiento" DECIMAL,
	"terreno" DECIMAL,
	"existente" DECIMAL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cat_servicio" (
	"id" INT,
	"catastro_id" INT,
	"descripcion" CHAR,
	"activo" BOOL,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cat_frente" (
	"id" INT,
	"catastro_id" INT,
	"calle" CHAR,
	"altura" INT,
	"metros" DECIMAL,
	"ubicacion" BOOLEAN,
	 PRIMARY KEY ("id")
);

CREATE TABLE "cat_documento" (
	"id" INT,
	"catastro_id" INT,
	"fecha" DATE,
	"descripcion" CHAR,
	"ruta" CHAR,
	 PRIMARY KEY ("id")
);

CREATE TABLE "actas" (
	"id" INT,
	"fecha" DATE,
	"acta" INT,
	"libro" INT,
	"copia" CHAR,
	"nota" CHAR,
	"per_id" BIGINT,
	"opr_id" INT,
	"cat_id" INT,
	"com_id" INT,
	"opu_id" INT,
	 PRIMARY KEY ("id")
);
