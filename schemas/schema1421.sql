DROP DATABASE IF EXISTS "schema1421";
CREATE DATABASE "schema1421";
USE "schema1421";
CREATE TABLE "materia" (
	"idmateria" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idmateria","nome")
);

CREATE TABLE "trimestre" (
	"idtrimestre" INT,
	"ano" INT,
	"periodo" INT,
	"trimestre" INT,
	 PRIMARY KEY ("idtrimestre")
);

CREATE TABLE "feriados" (
	"idferiados" INT,
	"dia" INT,
	"mes" INT,
	"ano" INT,
	"tipo" ENUM,
	 PRIMARY KEY ("idferiados")
);

CREATE TABLE "tipomaterais" (
	"idtipomaterais" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idtipomaterais")
);

CREATE TABLE "tipomulta" (
	"idtipomulta" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idtipomulta")
);

CREATE TABLE "multa" (
	"idmulta" INT,
	"valor" FLOAT,
	"datapagamento" DATE,
	"status" ENUM,
	"tipomulta_idtipomulta" INT,
	 PRIMARY KEY ("idmulta"),
	 CONSTRAINT "fk_Multa_TipoMulta1" FOREIGN KEY ("tipomulta_idtipomulta") REFERENCES "tipomulta" ("idtipomulta")
);

CREATE TABLE "tipoexemplar" (
	"idtipoexemplar" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idtipoexemplar")
);

CREATE TABLE "livros" (
	"idlivros" INT,
	"nome" VARCHAR,
	"ano" INT,
	 PRIMARY KEY ("idlivros")
);

CREATE TABLE "exemplar" (
	"codexemplar" INT,
	"estante" INT,
	"prateleira" INT,
	"status" VARCHAR,
	"danificado" TINYINT,
	"livros_idlivros" INT,
	"tipoexemplar_idtipoexemplar" INT,
	 PRIMARY KEY ("codexemplar"),
	 CONSTRAINT "fk_Exemplar_Livros1" FOREIGN KEY ("livros_idlivros") REFERENCES "livros" ("idlivros"),
	 CONSTRAINT "fk_Exemplar_TipoExemplar1" FOREIGN KEY ("tipoexemplar_idtipoexemplar") REFERENCES "tipoexemplar" ("idtipoexemplar")
);

CREATE TABLE "autor" (
	"idautor" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idautor")
);

CREATE TABLE "autor_has_livros" (
	"autor_idautor" INT,
	"livros_idlivros" INT,
	 PRIMARY KEY ("autor_idautor","livros_idlivros"),
	 CONSTRAINT "fk_Autor_has_Livros_Autor1" FOREIGN KEY ("autor_idautor") REFERENCES "autor" ("idautor"),
	 CONSTRAINT "fk_Autor_has_Livros_Livros1" FOREIGN KEY ("livros_idlivros") REFERENCES "livros" ("idlivros")
);

CREATE TABLE "tipopagamento" (
	"idtipopagamento" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idtipopagamento")
);

CREATE TABLE "matricula" (
	"numeromatricula" INT,
	"tipopagamento_idtipopagamento" INT,
	"status" VARCHAR,
	 PRIMARY KEY ("numeromatricula"),
	 CONSTRAINT "fk_Matricula_TipoPagamento1" FOREIGN KEY ("tipopagamento_idtipopagamento") REFERENCES "tipopagamento" ("idtipopagamento")
);

CREATE TABLE "parcelas" (
	"idparcelas" INT,
	"data_pagamento" DATE,
	"valor" FLOAT,
	"mes" INT,
	"ano" INT,
	"matricula_numeromatricula" INT,
	 PRIMARY KEY ("idparcelas"),
	 CONSTRAINT "fk_Parcelas_Matricula1" FOREIGN KEY ("matricula_numeromatricula") REFERENCES "matricula" ("numeromatricula")
);

CREATE TABLE "sala" (
	"idsala" INT,
	"numero" INT,
	"capacidade" INT,
	 PRIMARY KEY ("idsala")
);

CREATE TABLE "turma" (
	"idturma" INT,
	"turno" ENUM,
	"serie" VARCHAR,
	"vagas" INT,
	"sala_idsala" INT,
	 PRIMARY KEY ("idturma"),
	 CONSTRAINT "fk_Turma_Sala1" FOREIGN KEY ("sala_idsala") REFERENCES "sala" ("idsala")
);

CREATE TABLE "materiaisturma" (
	"idmateriaisturma" INT,
	"nome" VARCHAR,
	"tipomaterais_idtipomaterais" INT,
	"turma_idturma" INT,
	 PRIMARY KEY ("idmateriaisturma"),
	 CONSTRAINT "fk_MateriaisTurma_TipoMaterais1" FOREIGN KEY ("tipomaterais_idtipomaterais") REFERENCES "tipomaterais" ("idtipomaterais"),
	 CONSTRAINT "fk_MateriaisTurma_Turma1" FOREIGN KEY ("turma_idturma") REFERENCES "turma" ("idturma")
);

CREATE TABLE "funcao" (
	"idfuncao" INT,
	"nome" VARCHAR,
	 PRIMARY KEY ("idfuncao")
);

CREATE TABLE "pessoa" (
	"idpessoa" INT,
	"nome" VARCHAR,
	"cpf" VARCHAR,
	"senha" VARCHAR,
	"sexo" VARCHAR,
	"datanascimento" DATE,
	"email" VARCHAR,
	"telefonefixo" INT,
	"telefonecelular" INT,
	"status" ENUM,
	"endereco" VARCHAR,
	 PRIMARY KEY ("idpessoa")
);

CREATE TABLE "alunos" (
	"idalunos" INT,
	"categoria" VARCHAR,
	"pessoa_idpessoa" INT,
	"turma_idturma" INT,
	"matricula_numeromatricula" INT,
	 PRIMARY KEY ("idalunos"),
	 CONSTRAINT "fk_Alunos_Turma1" FOREIGN KEY ("turma_idturma") REFERENCES "turma" ("idturma"),
	 CONSTRAINT "fk_Alunos_Matricula1" FOREIGN KEY ("matricula_numeromatricula") REFERENCES "matricula" ("numeromatricula"),
	 CONSTRAINT "fk_Alunos_Pessoa1" FOREIGN KEY ("pessoa_idpessoa") REFERENCES "pessoa" ("idpessoa")
);

CREATE TABLE "listaespera" (
	"idlistaespera" INT,
	"alunos_idalunos" INT,
	"turma_idturma" INT,
	 PRIMARY KEY ("idlistaespera"),
	 CONSTRAINT "fk_ListaEspera_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos"),
	 CONSTRAINT "fk_ListaEspera_Turma1" FOREIGN KEY ("turma_idturma") REFERENCES "turma" ("idturma")
);

CREATE TABLE "advertencias" (
	"idadvertencias" INT,
	"motivo" VARCHAR,
	"data" DATE,
	"alunos_idalunos" INT,
	 PRIMARY KEY ("idadvertencias"),
	 CONSTRAINT "fk_Advertencias_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos")
);

CREATE TABLE "retirada" (
	"idretirada" INT,
	"dataretirada" DATE,
	"datadevolucao" DATE,
	"renovacao" INT,
	"valormulta" FLOAT,
	"multa_idmulta" INT,
	"alunos_idalunos" INT,
	 PRIMARY KEY ("idretirada"),
	 CONSTRAINT "fk_Retirada_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos"),
	 CONSTRAINT "fk_Retirada_Multa1" FOREIGN KEY ("multa_idmulta") REFERENCES "multa" ("idmulta")
);

CREATE TABLE "retirada_has_exemplar" (
	"retirada_idretirada" INT,
	"exemplar_codexemplar" INT,
	 PRIMARY KEY ("retirada_idretirada","exemplar_codexemplar"),
	 CONSTRAINT "fk_Retirada_has_Exemplar_Exemplar1" FOREIGN KEY ("exemplar_codexemplar") REFERENCES "exemplar" ("codexemplar"),
	 CONSTRAINT "fk_Retirada_has_Exemplar_Retirada1" FOREIGN KEY ("retirada_idretirada") REFERENCES "retirada" ("idretirada")
);

CREATE TABLE "reserva" (
	"idreserva" INT,
	"datareserva" DATE,
	"dataagenda" DATE,
	"alunos_idalunos" INT,
	 PRIMARY KEY ("idreserva"),
	 CONSTRAINT "fk_Reserva_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos")
);

CREATE TABLE "reserva_has_exemplar" (
	"reserva_idreserva" INT,
	"exemplar_codexemplar" INT,
	 PRIMARY KEY ("reserva_idreserva","exemplar_codexemplar"),
	 CONSTRAINT "fk_Reserva_has_Exemplar_Exemplar1" FOREIGN KEY ("exemplar_codexemplar") REFERENCES "exemplar" ("codexemplar"),
	 CONSTRAINT "fk_Reserva_has_Exemplar_Reserva1" FOREIGN KEY ("reserva_idreserva") REFERENCES "reserva" ("idreserva")
);

CREATE TABLE "responsavel" (
	"idresponsavel" INT,
	"empresa" VARCHAR,
	"funcao" VARCHAR,
	"pessoa_idpessoa" INT,
	 PRIMARY KEY ("idresponsavel"),
	 CONSTRAINT "fk_Responsavel_Pessoa1" FOREIGN KEY ("pessoa_idpessoa") REFERENCES "pessoa" ("idpessoa")
);

CREATE TABLE "responsavel_has_alunos" (
	"responsavel_idresponsavel" INT,
	"alunos_idalunos" INT,
	 PRIMARY KEY ("responsavel_idresponsavel","alunos_idalunos"),
	 CONSTRAINT "fk_Responsavel_has_Alunos_Responsavel1" FOREIGN KEY ("responsavel_idresponsavel") REFERENCES "responsavel" ("idresponsavel"),
	 CONSTRAINT "fk_Responsavel_has_Alunos_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos")
);

CREATE TABLE "professores" (
	"idprofessores" INT,
	"pis" INT,
	"pessoa_idpessoa" INT,
	 PRIMARY KEY ("idprofessores"),
	 CONSTRAINT "fk_Professores_Pessoa1" FOREIGN KEY ("pessoa_idpessoa") REFERENCES "pessoa" ("idpessoa")
);

CREATE TABLE "professores_has_materia" (
	"professores_idprofessores" INT,
	"materia_idmateria" INT,
	 PRIMARY KEY ("professores_idprofessores","materia_idmateria"),
	 CONSTRAINT "fk_Professores_has_Materia_Professores1" FOREIGN KEY ("professores_idprofessores") REFERENCES "professores" ("idprofessores"),
	 CONSTRAINT "fk_Professores_has_Materia_Materia1" FOREIGN KEY ("materia_idmateria") REFERENCES "materia" ("idmateria")
);

CREATE TABLE "avaliacao" (
	"idavaliacao" INT,
	"nome" VARCHAR,
	"peso" FLOAT,
	"tipo" VARCHAR,
	"professores_has_materia_professores_idprofessores" INT,
	"professores_has_materia_materia_idmateria" INT,
	"trimestre_idtrimestre" INT,
	 PRIMARY KEY ("idavaliacao"),
	 CONSTRAINT "fk_Avaliacao_Professores_has_Materia1" FOREIGN KEY ("professores_has_materia_professores_idprofessores","professores_has_materia_materia_idmateria") REFERENCES "professores_has_materia" ("professores_idprofessores","materia_idmateria"),
	 CONSTRAINT "fk_Avaliacao_Trimestre1" FOREIGN KEY ("trimestre_idtrimestre") REFERENCES "trimestre" ("idtrimestre")
);

CREATE TABLE "notas" (
	"idnotas" INT,
	"nota" FLOAT,
	"alunos_idalunos" INT,
	"avaliacao_idavaliacao" INT,
	 PRIMARY KEY ("idnotas"),
	 CONSTRAINT "fk_Notas_Avaliacao1" FOREIGN KEY ("avaliacao_idavaliacao") REFERENCES "avaliacao" ("idavaliacao"),
	 CONSTRAINT "fk_Notas_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos")
);

CREATE TABLE "faltas" (
	"idfaltas" INT,
	"quantidade" INT,
	"trimestre_idtrimestre" INT,
	"professores_has_materia_professores_idprofessores" INT,
	"professores_has_materia_materia_idmateria" INT,
	 PRIMARY KEY ("idfaltas"),
	 CONSTRAINT "fk_Faltas_Trimestre1" FOREIGN KEY ("trimestre_idtrimestre") REFERENCES "trimestre" ("idtrimestre"),
	 CONSTRAINT "fk_Faltas_Professores_has_Materia1" FOREIGN KEY ("professores_has_materia_professores_idprofessores","professores_has_materia_materia_idmateria") REFERENCES "professores_has_materia" ("professores_idprofessores","materia_idmateria")
);

CREATE TABLE "alunos_has_faltas" (
	"alunos_idalunos" INT,
	"faltas_idfaltas" INT,
	 PRIMARY KEY ("alunos_idalunos","faltas_idfaltas"),
	 CONSTRAINT "fk_Alunos_has_Faltas_Faltas1" FOREIGN KEY ("faltas_idfaltas") REFERENCES "faltas" ("idfaltas"),
	 CONSTRAINT "fk_Alunos_has_Faltas_Alunos1" FOREIGN KEY ("alunos_idalunos") REFERENCES "alunos" ("idalunos")
);

CREATE TABLE "funcionario" (
	"idfuncionario" INT,
	"pis" INT,
	"funcao_idfuncao" INT,
	"pessoa_idpessoa" INT,
	 PRIMARY KEY ("idfuncionario"),
	 CONSTRAINT "fk_Funcionario_Pessoa1" FOREIGN KEY ("pessoa_idpessoa") REFERENCES "pessoa" ("idpessoa"),
	 CONSTRAINT "fk_Funcionario_Funcao" FOREIGN KEY ("funcao_idfuncao") REFERENCES "funcao" ("idfuncao")
);
