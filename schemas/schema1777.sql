DROP DATABASE IF EXISTS "schema1777";
CREATE DATABASE "schema1777";
USE "schema1777";
CREATE TABLE "pasajero" (
	"pasaporte" VARCHAR,
	"nombre" VARCHAR,
	"apellidos" VARCHAR,
	"sexo" VARCHAR,
	"fecha_nacimiento" DATE,
	"correo" VARCHAR,
	"pais_origen" VARCHAR,
	"localidad_origen" VARCHAR,
	"provincia_origen" VARCHAR,
	"procedencia" VARCHAR,
	"direccion" VARCHAR,
	"telefono" VARCHAR,
	"discapacidad" INTEGER,
	"profesion" VARCHAR,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("pasaporte")
);

CREATE TABLE "terminal" (
	"id_terminal" SMALLINT,
	"superficie" VARCHAR,
	"control_seguridad" VARCHAR,
	 PRIMARY KEY ("id_terminal")
);

CREATE TABLE "puerta_embarque" (
	"id_terminal" SMALLINT,
	"numpuertaembarque" VARCHAR,
	 PRIMARY KEY ("id_terminal","numpuertaembarque"),
	 CONSTRAINT "FK_PUERTA" FOREIGN KEY ("id_terminal") REFERENCES "terminal" ("id_terminal")
);

CREATE TABLE "propietario" (
	"id_propietario" VARCHAR,
	"telefono" VARCHAR,
	 PRIMARY KEY ("id_propietario")
);

CREATE TABLE "departamento" (
	"id_departamento" SMALLINT,
	"nombre" VARCHAR,
	"direccion" VARCHAR,
	"presupuesto" VARCHAR,
	"id_propietario" VARCHAR,
	 PRIMARY KEY ("id_departamento"),
	 CONSTRAINT "FK_DEP" FOREIGN KEY ("id_propietario") REFERENCES "propietario" ("id_propietario")
);

CREATE TABLE "seguridad" (
	"id_seguridad" SMALLINT,
	"uniformes" VARCHAR,
	"unidadescaninas" SMALLINT,
	 PRIMARY KEY ("id_seguridad"),
	 CONSTRAINT "FK_SEGURIDAD_K" FOREIGN KEY ("id_seguridad") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "seguridad_gestiona_terminal" (
	"id_seguridad" SMALLINT,
	"id_terminal" SMALLINT,
	 PRIMARY KEY ("id_seguridad","id_terminal"),
	 CONSTRAINT "FKID_TERMINAL" FOREIGN KEY ("id_terminal") REFERENCES "terminal" ("id_terminal"),
	 CONSTRAINT "FKID_SEGURIDAD" FOREIGN KEY ("id_seguridad") REFERENCES "seguridad" ("id_seguridad")
);

CREATE TABLE "tecnico" (
	"id_tecnico" SMALLINT,
	"numvehiculos" SMALLINT,
	 PRIMARY KEY ("id_tecnico"),
	 CONSTRAINT "FK_TECNICO" FOREIGN KEY ("id_tecnico") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "vehiculo" (
	"matricula" VARCHAR,
	"marca" VARCHAR,
	"modelo" VARCHAR,
	"id_departamento" SMALLINT,
	 PRIMARY KEY ("matricula"),
	 CONSTRAINT "FK_VEHICULO" FOREIGN KEY ("id_departamento") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "transporte_carga" (
	"matricula" VARCHAR,
	"pesomaximo" VARCHAR,
	 PRIMARY KEY ("matricula"),
	 CONSTRAINT "FK_TRANSCARGA" FOREIGN KEY ("matricula") REFERENCES "vehiculo" ("matricula")
);

CREATE TABLE "transporte_personas" (
	"matricula" VARCHAR,
	"capacidad" VARCHAR,
	 PRIMARY KEY ("matricula"),
	 CONSTRAINT "FK_TRANSPERSONAS" FOREIGN KEY ("matricula") REFERENCES "vehiculo" ("matricula")
);

CREATE TABLE "transporte_personal" (
	"matricula" VARCHAR,
	"capacidad" VARCHAR,
	 PRIMARY KEY ("matricula"),
	 CONSTRAINT "FK_TRANSPERSONAL" FOREIGN KEY ("matricula") REFERENCES "vehiculo" ("matricula")
);

CREATE TABLE "followme" (
	"matricula" VARCHAR,
	"comunicacion_tcontrol" VARCHAR,
	 PRIMARY KEY ("matricula"),
	 CONSTRAINT "FK_FOLLOWME" FOREIGN KEY ("matricula") REFERENCES "vehiculo" ("matricula")
);

CREATE TABLE "controlaereo" (
	"id_controlaereo" SMALLINT,
	"comunicacion_torre" VARCHAR,
	 PRIMARY KEY ("id_controlaereo"),
	 CONSTRAINT "FK_CONTROLAEREO" FOREIGN KEY ("id_controlaereo") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "torrecontrol" (
	"id_torrecontrol" CHAR,
	"telefono" VARCHAR,
	"posiciongeografica" VARCHAR,
	"servicio" VARCHAR,
	"id_controlaereo" SMALLINT,
	"id_propietario" VARCHAR,
	 PRIMARY KEY ("id_torrecontrol"),
	 CONSTRAINT "FK_PROPI" FOREIGN KEY ("id_propietario") REFERENCES "propietario" ("id_propietario"),
	 CONSTRAINT "FK_TORRES" FOREIGN KEY ("id_controlaereo") REFERENCES "controlaereo" ("id_controlaereo")
);

CREATE TABLE "operaciones_pista" (
	"id_operaciones_pista" SMALLINT,
	"numvehiculos" VARCHAR,
	"uniforme" VARCHAR,
	 PRIMARY KEY ("id_operaciones_pista"),
	 CONSTRAINT "FK_OPERACIONES" FOREIGN KEY ("id_operaciones_pista") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "pista" (
	"id_pista" SMALLINT,
	"longitud" SMALLINT,
	"id_torrecontrol" CHAR,
	"id_operaciones_pista" SMALLINT,
	 PRIMARY KEY ("id_pista"),
	 CONSTRAINT "FK_PISTA_OP" FOREIGN KEY ("id_operaciones_pista") REFERENCES "operaciones_pista" ("id_operaciones_pista"),
	 CONSTRAINT "FK_PISTA_TW" FOREIGN KEY ("id_torrecontrol") REFERENCES "torrecontrol" ("id_torrecontrol")
);

CREATE TABLE "telefono" (
	"numero" VARCHAR,
	"id_departamento" SMALLINT,
	 PRIMARY KEY ("numero","id_departamento"),
	 CONSTRAINT "FK_TELEFONO" FOREIGN KEY ("id_departamento") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "recursoit" (
	"id_recursoit" VARCHAR,
	"licencia" VARCHAR,
	"id_propietario" VARCHAR,
	 PRIMARY KEY ("id_recursoit"),
	 CONSTRAINT "FK_PROP" FOREIGN KEY ("id_propietario") REFERENCES "propietario" ("id_propietario")
);

CREATE TABLE "empleado" (
	"dni_empleado" VARCHAR,
	"nuss" VARCHAR,
	"cargo" VARCHAR,
	"profesion" VARCHAR,
	"sueldo" DOUBLE,
	"nombre" VARCHAR,
	"apellidos" VARCHAR,
	"telefono" VARCHAR,
	"fecha_nacimiento" DATE,
	"correo" VARCHAR,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("dni_empleado")
);

CREATE TABLE "pasajerovip" (
	"dni_empleado" VARCHAR,
	"pasaporte" VARCHAR,
	"descuento" DECIMAL,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("dni_empleado","pasaporte"),
	 CONSTRAINT "FKCLIENTEVIP_EMPLEADO" FOREIGN KEY ("dni_empleado") REFERENCES "empleado" ("dni_empleado"),
	 CONSTRAINT "FKCLIENTEVIP_PASAJERO" FOREIGN KEY ("pasaporte") REFERENCES "pasajero" ("pasaporte")
);

CREATE TABLE "empleadoaeropuerto" (
	"dni_emp_aeropuerto" VARCHAR,
	"contrato" VARCHAR,
	"direccion" VARCHAR,
	"jornada" VARCHAR,
	"jefe_departamento" SMALLINT,
	"id_departamento" SMALLINT,
	 PRIMARY KEY ("dni_emp_aeropuerto"),
	 CONSTRAINT "FK_EMP_JEFEDEP" FOREIGN KEY ("jefe_departamento") REFERENCES "departamento" ("id_departamento"),
	 CONSTRAINT "FK_EMPAIRPORT" FOREIGN KEY ("dni_emp_aeropuerto") REFERENCES "empleado" ("dni_empleado"),
	 CONSTRAINT "FK_EMP_INDEP" FOREIGN KEY ("id_departamento") REFERENCES "departamento" ("id_departamento")
);

CREATE TABLE "aerolinea" (
	"id_aerolinea" SMALLINT,
	"telefono" VARCHAR,
	"nombre" VARCHAR,
	"direccion" VARCHAR,
	 PRIMARY KEY ("id_aerolinea")
);

CREATE TABLE "hangar" (
	"id_hangar" SMALLINT,
	"equipamiento" VARCHAR,
	"direccion" VARCHAR,
	"capacidad" VARCHAR,
	"id_aerolinea" SMALLINT,
	 PRIMARY KEY ("id_hangar"),
	 CONSTRAINT "FK_HANGAR" FOREIGN KEY ("id_aerolinea") REFERENCES "aerolinea" ("id_aerolinea")
);

CREATE TABLE "empleadoaerolinea" (
	"dni_emp_aerolinea" VARCHAR,
	"id_aerolinea" SMALLINT,
	 PRIMARY KEY ("dni_emp_aerolinea"),
	 CONSTRAINT "FK_EMPAEROLINEA" FOREIGN KEY ("dni_emp_aerolinea") REFERENCES "empleado" ("dni_empleado"),
	 CONSTRAINT "FK_EMP_AEROLINEA" FOREIGN KEY ("id_aerolinea") REFERENCES "aerolinea" ("id_aerolinea")
);

CREATE TABLE "avion" (
	"matricula" VARCHAR,
	"marca" VARCHAR,
	"modelo" VARCHAR,
	"capacidad" SMALLINT,
	"fechalimiterevision" DATE,
	"id_recorrido" SMALLINT,
	"id_aerolinea" SMALLINT,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("matricula"),
	 CONSTRAINT "FK_AVION_AEROLINEA" FOREIGN KEY ("id_aerolinea") REFERENCES "aerolinea" ("id_aerolinea")
);

CREATE TABLE "revision" (
	"id_revision" SMALLINT,
	"fecha" DATE,
	"evaluacion" VARCHAR,
	"diagnostico" VARCHAR,
	"matricula" VARCHAR,
	"id_tecnico" SMALLINT,
	 PRIMARY KEY ("id_revision"),
	 CONSTRAINT "FK_AVIONREVISION" FOREIGN KEY ("matricula") REFERENCES "avion" ("matricula"),
	 CONSTRAINT "FK_DEPREVISION" FOREIGN KEY ("id_tecnico") REFERENCES "tecnico" ("id_tecnico")
);

CREATE TABLE "tripulacion" (
	"id_tripulacion" VARCHAR,
	"numtripulantes" SMALLINT,
	"id_aerolinea" SMALLINT,
	 PRIMARY KEY ("id_tripulacion"),
	 CONSTRAINT "FK_TRIP" FOREIGN KEY ("id_aerolinea") REFERENCES "aerolinea" ("id_aerolinea")
);

CREATE TABLE "recorrido" (
	"id_recorrido" SMALLINT,
	"origen" VARCHAR,
	"destino" VARCHAR,
	"ciudad_destino" VARCHAR,
	"ciudad_origen" VARCHAR,
	"pais_origen" VARCHAR,
	"pais_destino" VARCHAR,
	"distancia" INTEGER,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("id_recorrido")
);

CREATE TABLE "vuelo" (
	"id_vuelo" SMALLINT,
	"matricula" VARCHAR,
	"id_recorrido" SMALLINT,
	"hora_salida_estimada" VARCHAR,
	"hora_llegada_estimada" VARCHAR,
	"duracion_estimada" FLOAT,
	"hora_salida_real" VARCHAR,
	"hora_llegada_real" VARCHAR,
	"duracion_real" FLOAT,
	"fecha" DATE,
	"tipo_vuelo" VARCHAR,
	"id_pista" SMALLINT,
	"id_aerolinea" SMALLINT,
	"id_terminal" SMALLINT,
	"id_tripulacion" VARCHAR,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("id_vuelo"),
	 CONSTRAINT "FKVUELO_TRIPULACION" FOREIGN KEY ("id_tripulacion") REFERENCES "tripulacion" ("id_tripulacion"),
	 CONSTRAINT "FKVUELO_RECORRIDO" FOREIGN KEY ("id_recorrido") REFERENCES "recorrido" ("id_recorrido"),
	 CONSTRAINT "FKVUELO_AEROLINEA" FOREIGN KEY ("id_aerolinea") REFERENCES "aerolinea" ("id_aerolinea"),
	 CONSTRAINT "FKVUELO_PISTA" FOREIGN KEY ("id_pista") REFERENCES "pista" ("id_pista"),
	 CONSTRAINT "FKVUELO_AVION" FOREIGN KEY ("matricula") REFERENCES "avion" ("matricula"),
	 CONSTRAINT "FKVUELO_TERMINAL" FOREIGN KEY ("id_terminal") REFERENCES "terminal" ("id_terminal")
);

CREATE TABLE "billete" (
	"id_billete" VARCHAR,
	"id_vuelo" SMALLINT,
	"id_pasajero" VARCHAR,
	"motivo_viaje" VARCHAR,
	"precio" INTEGER,
	"fecha_compra" DATE,
	"ultima_actualizacion" TIMESTAMP,
	 PRIMARY KEY ("id_billete"),
	 CONSTRAINT "FK_BILLVUELO" FOREIGN KEY ("id_vuelo") REFERENCES "vuelo" ("id_vuelo"),
	 CONSTRAINT "FK_BILLPASAJ" FOREIGN KEY ("id_pasajero") REFERENCES "pasajero" ("pasaporte")
);
