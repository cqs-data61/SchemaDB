DROP DATABASE IF EXISTS "schema278";
CREATE DATABASE "schema278";
USE "schema278";
CREATE TABLE "meiopagamento" (
	"id" INT,
	"descricao" VARCHAR,
	"tempocompensacao" INT,
	"podeparcelar" BOOLEAN
);

CREATE TABLE "documentofiscal" (
	"id" INT,
	"chave" VARCHAR,
	"xml" TEXT
);

CREATE TABLE "fornecedor" (
	"id" INT,
	"nome" VARCHAR,
	"cnpj" VARCHAR,
	"logradouro" VARCHAR,
	"telefonecontato" VARCHAR,
	"email" VARCHAR
);

CREATE TABLE "centrodecusto" (
	"id" INT,
	"descricao" VARCHAR
);

CREATE TABLE "cargofuncionario" (
	"id" INT,
	"nomecargo" VARCHAR,
	"descricaocargo" VARCHAR
);

CREATE TABLE "loja" (
	"id" INT,
	"nomeexibicao" VARCHAR,
	"cnpj" VARCHAR,
	"logradouro" VARCHAR,
	"emailatendimento" VARCHAR,
	"telefone" VARCHAR
);

CREATE TABLE "movimentacaofinanceira" (
	"id" INT,
	"docfiscalid" INT,
	"lojaid" INT,
	"valortotal" NUMERIC,
	"datamovimentacao" DATE,
	"parcelanumero" INT,
	"numparcelas" INT,
	"valorparcela" NUMERIC,
	 CONSTRAINT "fkeycon_movimentacaofinanceira_to_documentofiscal" FOREIGN KEY ("docfiscalid") REFERENCES "documentofiscal" ("id"),
	 CONSTRAINT "fkeycon_movimentacaofinanceira_to_loja" FOREIGN KEY ("lojaid") REFERENCES "loja" ("id")
);

CREATE TABLE "funcionario" (
	"id" INT,
	"cargoid" INT,
	"lojaid" INT,
	"nome" VARCHAR,
	"cpf" VARCHAR,
	"email" VARCHAR,
	"logradouro" VARCHAR,
	"esocialid" INT,
	"agenciasalario" INT,
	"contasalario" VARCHAR,
	 CONSTRAINT "fkeycon_funcionario_to_cargofuncionario" FOREIGN KEY ("cargoid") REFERENCES "cargofuncionario" ("id"),
	 CONSTRAINT "fkeycon_funcionario_to_loja" FOREIGN KEY ("lojaid") REFERENCES "loja" ("id")
);

CREATE TABLE "movimentacaofinanceirasaida" (
	"id" INT,
	"centrodecustoid" INT,
	"solicitanteid" INT,
	"aprovadorid" INT,
	"fornecedorid" INT,
	"movimentacaoid" INT,
	 CONSTRAINT "fkeycon_movimentacaofinanceirasaida_to_funcionario" FOREIGN KEY ("aprovadorid") REFERENCES "funcionario" ("id"),
	 CONSTRAINT "fkeycon_movimentacaofinanceirasaida_to_centrodecusto" FOREIGN KEY ("centrodecustoid") REFERENCES "centrodecusto" ("id"),
	 CONSTRAINT "fkeycon_movimentacaofinanceirasaida_to_fornecedor" FOREIGN KEY ("fornecedorid") REFERENCES "fornecedor" ("id"),
	 CONSTRAINT "fkeycon_movimentacaofinanceirasaida_to_movimentacaofinanceira" FOREIGN KEY ("movimentacaoid") REFERENCES "movimentacaofinanceira" ("id")
);

CREATE TABLE "movimentacaofinanceiraentrada" (
	"id" INT,
	"movimentacaoid" INT,
	"meiopagamentoid" INT,
	"vendedorid" INT,
	"consumidorid" INT,
	 CONSTRAINT "fkeycon_movimentacaofinanceiraentrada_to_movimentacaofinanceira" FOREIGN KEY ("movimentacaoid") REFERENCES "movimentacaofinanceira" ("id"),
	 CONSTRAINT "fkeycon_movimentacaofinanceiraentrada_to_meiopagamento" FOREIGN KEY ("meiopagamentoid") REFERENCES "meiopagamento" ("id"),
	 CONSTRAINT "fkeycon_movimentacaofinanceiraentrada_to_funcionario" FOREIGN KEY ("vendedorid") REFERENCES "funcionario" ("id")
);
