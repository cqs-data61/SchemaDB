DROP DATABASE IF EXISTS "schema675";
CREATE DATABASE "schema675";
USE "schema675";
CREATE TABLE "bitacora" (
	"bitacoracod" INT,
	"bitacorafch" DATETIME,
	"bitprograma" VARCHAR,
	"bitdescripcion" VARCHAR,
	"bitobservacion" MEDIUMTEXT,
	"bittipo" CHAR,
	"bitusuario" BIGINT,
	 PRIMARY KEY ("bitacoracod")
);

CREATE TABLE "funciones" (
	"fncod" VARCHAR,
	"fndsc" VARCHAR,
	"fnest" CHAR,
	"fntyp" CHAR,
	 PRIMARY KEY ("fncod")
);

CREATE TABLE "roles" (
	"rolescod" VARCHAR,
	"rolesdsc" VARCHAR,
	"rolesest" CHAR,
	 PRIMARY KEY ("rolescod")
);

CREATE TABLE "funciones_roles" (
	"rolescod" VARCHAR,
	"fncod" VARCHAR,
	"fnrolest" CHAR,
	"fnexp" DATETIME,
	 PRIMARY KEY ("rolescod","fncod"),
	 CONSTRAINT "funcion_rol_key" FOREIGN KEY ("rolescod") REFERENCES "roles" ("rolescod"),
	 CONSTRAINT "rol_funcion_key" FOREIGN KEY ("fncod") REFERENCES "funciones" ("fncod")
);

CREATE TABLE "usuario" (
	"usercod" BIGINT,
	"useremail" VARCHAR,
	"username" VARCHAR,
	"userpswd" VARCHAR,
	"userfching" DATETIME,
	"userpswdest" CHAR,
	"userpswdexp" DATETIME,
	"userest" CHAR,
	"useractcod" VARCHAR,
	"userpswdchg" VARCHAR,
	"usertipo" CHAR,
	 PRIMARY KEY ("usercod")
);

CREATE TABLE "roles_usuarios" (
	"usercod" BIGINT,
	"rolescod" VARCHAR,
	"roleuserest" CHAR,
	"roleuserfch" DATETIME,
	"roleuserexp" DATETIME,
	 PRIMARY KEY ("usercod","rolescod"),
	 CONSTRAINT "rol_usuario_key" FOREIGN KEY ("rolescod") REFERENCES "roles" ("rolescod"),
	 CONSTRAINT "usuario_rol_key" FOREIGN KEY ("usercod") REFERENCES "usuario" ("usercod")
);
