DROP DATABASE IF EXISTS "schema1702";
CREATE DATABASE "schema1702";
USE "schema1702";
CREATE TABLE "instalacion" (
	"idinstalacion" INTEGER,
	"nombreinstalacion" TEXT,
	 PRIMARY KEY ("idinstalacion")
);

CREATE TABLE "asambleas" (
	"idasamblea" INTEGER,
	"tipo" TEXT,
	"ordendia" TEXT,
	"fechaasamblea" DATE,
	"hora1" TEXT,
	"hora2" TEXT,
	 PRIMARY KEY ("idasamblea")
);

CREATE TABLE "licencia" (
	"idlicencia" INTEGER,
	"numlicencia" TEXT,
	"estadolicencia" TEXT,
	"precio" FLOAT,
	 PRIMARY KEY ("idlicencia")
);

CREATE TABLE "juez" (
	"idjuez" INTEGER,
	"dnijuez" TEXT,
	"nombrejuez" TEXT,
	"apellido1juez" TEXT,
	"apellido2juez" TEXT,
	"idlicencia" INTEGER,
	"numcuenta" TEXT,
	"cuota" FLOAT,
	 PRIMARY KEY ("idjuez")
);

CREATE TABLE "tecnico" (
	"idtecnico" INTEGER,
	"dnitecnico" TEXT,
	"nombretecnico" TEXT,
	"apellido1tecnico" TEXT,
	"apellido2tecnico" TEXT,
	"idlicencia" INTEGER,
	"numcuenta" TEXT,
	"cuota" FLOAT,
	 PRIMARY KEY ("idtecnico")
);

CREATE TABLE "socio" (
	"idsocio" INTEGER,
	"dnisocio" TEXT,
	"nombresocio" TEXT,
	"apellido1socio" TEXT,
	"apellido2socio" TEXT,
	"sexo" TEXT,
	"fechanacimiento" DATE,
	"club" TEXT,
	"numlicencia" TEXT,
	"numcuenta" TEXT,
	"cuota" FLOAT,
	"dnitutor" TEXT,
	"dnitecnico" TEXT,
	 PRIMARY KEY ("idsocio")
);

CREATE TABLE "recibos" (
	"idrecibo" INTEGER,
	"idsocio" INTEGER,
	"fechavalor" TEXT,
	"fechaemision" TEXT,
	"concepto" TEXT,
	"importe" TEXT,
	"numcuenta" TEXT,
	 PRIMARY KEY ("idrecibo"),
	 CONSTRAINT "fkeycon_recibos_to_socio" FOREIGN KEY ("idsocio") REFERENCES "socio" ("idsocio")
);

CREATE TABLE "reservas" (
	"idreserva" INTEGER,
	"idsocio" INTEGER,
	"instalacion" TEXT,
	"fechareserva" DATE,
	"horainicio" FLOAT,
	"horafin" TEXT,
	 PRIMARY KEY ("idreserva"),
	 CONSTRAINT "fkeycon_reservas_to_socio" FOREIGN KEY ("idsocio") REFERENCES "socio" ("idsocio")
);
