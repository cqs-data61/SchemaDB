DROP DATABASE IF EXISTS "schema81";
CREATE DATABASE "schema81";
USE "schema81";
CREATE TABLE "medicamento" (
	"codigo" BIGSERIAL,
	"nome" VARCHAR,
	 PRIMARY KEY ("codigo")
);

CREATE TABLE "funcionario" (
	"cpf" CHAR,
	"nome" VARCHAR,
	"senha" BINARY,
	 PRIMARY KEY ("cpf")
);

CREATE TABLE "estagiario" (
	"id" BIGSERIAL,
	"func_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_estagiario_to_funcionario" FOREIGN KEY ("func_id") REFERENCES "funcionario" ("cpf")
);

CREATE TABLE "administrador" (
	"id" BIGSERIAL,
	"func_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_administrador_to_funcionario" FOREIGN KEY ("func_id") REFERENCES "funcionario" ("cpf")
);

CREATE TABLE "enfermeirochefe" (
	"id" BIGSERIAL,
	"func_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_enfermeirochefe_to_funcionario" FOREIGN KEY ("func_id") REFERENCES "funcionario" ("cpf")
);

CREATE TABLE "enfermeiro" (
	"id" BIGSERIAL,
	"func_id" CHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_enfermeiro_to_funcionario" FOREIGN KEY ("func_id") REFERENCES "funcionario" ("cpf")
);

CREATE TABLE "paciente" (
	"cpf" CHAR,
	"nome" VARCHAR,
	"sexo" BOOLEAN,
	"genero" ENUM,
	"datadenascimento" DATE,
	"sangue" ENUM,
	"endereco" VARCHAR,
	"telefone" CHAR,
	"createdon" DATETIME,
	"updatedon" DATETIME,
	"dados" VARCHAR,
	"enfermeiro_id" BIGINT,
	 PRIMARY KEY ("cpf"),
	 CONSTRAINT "fkeycon_paciente_to_enfermeiro" FOREIGN KEY ("enfermeiro_id") REFERENCES "enfermeiro" ("id")
);

CREATE TABLE "posologia" (
	"id" BIGSERIAL,
	"medicamento" BIGINT,
	"paciente" CHAR,
	"quantidade" FLOAT,
	"notas" VARCHAR,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_posologia_to_paciente" FOREIGN KEY ("paciente") REFERENCES "paciente" ("cpf"),
	 CONSTRAINT "fkeycon_posologia_to_medicamento" FOREIGN KEY ("medicamento") REFERENCES "medicamento" ("codigo")
);

CREATE TABLE "agendamento" (
	"id" BIGSERIAL,
	"posologia" BIGIT,
	"paciente" CHAR,
	"enfermeiro" BIGINT,
	"estagiario" BIGINT,
	"enferchefe" BIGINT,
	"horario" DATETIME,
	 PRIMARY KEY ("id"),
	 CONSTRAINT "fkeycon_agendamento_to_enfermeirochefe" FOREIGN KEY ("enferchefe") REFERENCES "enfermeirochefe" ("id"),
	 CONSTRAINT "fkeycon_agendamento_to_posologia" FOREIGN KEY ("posologia") REFERENCES "posologia" ("id"),
	 CONSTRAINT "fkeycon_agendamento_to_paciente" FOREIGN KEY ("paciente") REFERENCES "paciente" ("cpf"),
	 CONSTRAINT "fkeycon_agendamento_to_estagiario" FOREIGN KEY ("estagiario") REFERENCES "estagiario" ("id"),
	 CONSTRAINT "fkeycon_agendamento_to_enfermeiro" FOREIGN KEY ("enfermeiro") REFERENCES "enfermeiro" ("id")
);
