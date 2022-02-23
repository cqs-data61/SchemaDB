DROP DATABASE IF EXISTS "schema2118";
CREATE DATABASE "schema2118";
USE "schema2118";
CREATE TABLE "clientes" (
	"id" INTEGER,
	"eh_cliente" CHAR,
	"eh_fornecedor" CHAR,
	"telefone1" VARCHAR,
	"telefone2" VARCHAR,
	"email" VARCHAR,
	"email_recebe_notificacoes" CHAR,
	"email_recebe_login_senha" CHAR,
	"login" VARCHAR,
	"senha" VARCHAR,
	"exibir_site" CHAR,
	"unidade" CHAR
);

CREATE TABLE "funcionarios" (
	"id" INTEGER,
	"celular_corporativo" VARCHAR,
	"celular_pessoal" VARCHAR,
	"telefone_residencial" VARCHAR,
	"nome_contato_emergencia" VARCHAR,
	"telefone_contato_emergencia" VARCHAR,
	"login" VARCHAR,
	"senha" VARCHAR,
	"email_corporativo" VARCHAR,
	"email_pessoal" VARCHAR,
	"vendedor" CHAR,
	"unidade" CHAR
);

CREATE TABLE "visitas" (
	"id" INTEGER,
	"version" INTEGER,
	"data_inicio" DATETIME,
	"data_fim" DATETIME,
	"descricao" TEXT,
	"aceita" CHAR,
	"email_aceitou" VARCHAR,
	"motivo_nao_aceite" TEXT,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_visitante" INTEGER,
	"id_tipo_visita" INTEGER,
	"id_ordem_servico" INTEGER
);

CREATE TABLE "veiculos" (
	"id" INTEGER,
	"version" INTEGER,
	"placa" VARCHAR,
	"descricao" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_gestor" INTEGER,
	"id_departamento_responsavel" INTEGER
);

CREATE TABLE "unidades" (
	"id" INTEGER,
	"version" INTEGER,
	"codigo" VARCHAR,
	"descricao" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "tipos_visitas" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "tipos_reservas_veiculos" (
	"id" INTEGER,
	"version" INTEGER,
	"descricao" VARCHAR,
	"tipo_visita_os" CHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "tipos_pedidos" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "estados" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"sigla" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "enderecos" (
	"id" INTEGER,
	"version" INTEGER,
	"descricao" VARCHAR,
	"logradouro" VARCHAR,
	"numero" VARCHAR,
	"bairro" VARCHAR,
	"referencia" VARCHAR,
	"complemento" VARCHAR,
	"cep" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_cidade" INTEGER,
	"id_pessoa" INTEGER
);

CREATE TABLE "imagens" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"host" VARCHAR,
	"caminho" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "veiculos_departamentos" (
	"id_departamento" INTEGER,
	"id_veiculo" INTEGER
);

CREATE TABLE "departamentos" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "pessoas" (
	"id" INTEGER,
	"version" INTEGER,
	"codigo" VARCHAR,
	"tipo" CHAR,
	"nome_razao_social" VARCHAR,
	"apelido_nome_fantasia" VARCHAR,
	"cpf_cnpj" VARCHAR,
	"inscricao_estadual" VARCHAR,
	"isentoicms" CHAR,
	"inscricao_municipal" VARCHAR,
	"rg" VARCHAR,
	"emissor_rg" VARCHAR,
	"nacionalidade" VARCHAR,
	"data_nascimento" DATETIME,
	"estado_civil" VARCHAR,
	"sexo" CHAR,
	"observacoes" TEXT,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_imagem" INTEGER
);

CREATE TABLE "cidades" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_estado" INTEGER
);

CREATE TABLE "tipos_ordem_servico" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"prazo_padrao" INTEGER,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "tipos_ocorrencias_veiculos" (
	"id" INTEGER,
	"version" INTEGER,
	"descricao" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "tipos_despesas" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"pre_aprovada" CHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "tipos_atividades" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "ordens_servico_funcionarios" (
	"id_ordem_servico" INTEGER,
	"id_funcionario" INTEGER
);

CREATE TABLE "ordens_servico" (
	"id" INTEGER,
	"version" INTEGER,
	"codigo" VARCHAR,
	"sem_custo" CHAR,
	"data" DATETIME,
	"descricao" TEXT,
	"prazo_padrao" DATETIME,
	"prazo_legal" DATETIME,
	"prazo_diretoria" DATETIME,
	"numero_processo_orgao" VARCHAR,
	"renovavel" CHAR,
	"prazo_renovacao" INTEGER,
	"tipo_renovacao" CHAR,
	"ja_renovada" CHAR,
	"data_encerramento" DATETIME,
	"protocolo_oficio_encerramento" VARCHAR,
	"data_protocolo_encerramento" DATETIME,
	"status" CHAR,
	"justificativa_aprovacao" TEXT,
	"data_aprovacao" DATETIME,
	"usuario_aprovou" VARCHAR,
	"possui_protocolo" CHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_pedido" INTEGER,
	"id_responsavel" INTEGER,
	"id_setor" INTEGER,
	"id_orgao" INTEGER,
	"id_tipo_ordem_servico" INTEGER,
	"id_ordem_matriz" INTEGER
);

CREATE TABLE "telas" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"url" VARCHAR,
	"tooltip" TEXT,
	"exibir_menu" CHAR,
	"relatorio" CHAR,
	"prioridade" INTEGER,
	"relatorio_grafico" CHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_menu" INTEGER
);

CREATE TABLE "solicitacoes_aprovacoes" (
	"id" INTEGER,
	"version" INTEGER,
	"data" DATETIME,
	"justificativa" TEXT,
	"solicitante" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_ordem_servico" INTEGER
);

CREATE TABLE "solicitacoes_adiamentos" (
	"id" INTEGER,
	"version" INTEGER,
	"data" DATETIME,
	"solicitante" VARCHAR,
	"justificativa" TEXT,
	"parecer" CHAR,
	"prazo_padrao_anterior" DATETIME,
	"prazo_legal_anterior" DATETIME,
	"prazo_diretor_anterior" DATETIME,
	"prazo_padrao_novo" DATETIME,
	"prazo_legal_novo" DATETIME,
	"prazo_diretoria_novo" DATETIME,
	"usuario_adiou" VARCHAR,
	"observacoes" TEXT,
	"data_resposta" DATETIME,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_ordem_servico" INTEGER
);

CREATE TABLE "setores" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_departamento" INTEGER
);

CREATE TABLE "reservas" (
	"id" INTEGER,
	"version" INTEGER,
	"data_inicio" DATETIME,
	"data_fim" DATETIME,
	"descricao" TEXT,
	"quilometragem" NUMERIC,
	"consumo" NUMERIC,
	"status" CHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_veiculo" INTEGER,
	"id_visita" INTEGER,
	"id_tipo_reserva_veiculo" INTEGER,
	"id_responsavel" INTEGER
);

CREATE TABLE "preferencias_relatorio" (
	"id" INTEGER,
	"version" INTEGER,
	"preferencia" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_funcionario" INTEGER,
	"id_tela" INTEGER
);

CREATE TABLE "telas_permissoes" (
	"id_permissao" INTEGER,
	"id_tela" INTEGER
);

CREATE TABLE "permissoes" (
	"id" INTEGER,
	"version" INTEGER,
	"acessa_os" CHAR,
	"aprova_os" CHAR,
	"adia_prazo_legal_os" CHAR,
	"adia_prazo_diretoria_os" CHAR,
	"visualiza_controle_viagens" CHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_funcao" INTEGER,
	"id_funcionario" INTEGER
);

CREATE TABLE "pedidos" (
	"id" INTEGER,
	"version" INTEGER,
	"codigo" VARCHAR,
	"data" DATETIME,
	"unidade" CHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_cliente" INTEGER,
	"id_tipo_pedido" INTEGER,
	"id_vendedor" INTEGER
);

CREATE TABLE "orgaos" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "ocorrencias" (
	"id" INTEGER,
	"version" INTEGER,
	"descricao" TEXT,
	"data" DATETIME,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_tipo_ocorrencia_veiculo" INTEGER,
	"id_reserva" INTEGER
);

CREATE TABLE "menus" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_menu_pai" INTEGER
);

CREATE TABLE "funcionarios_funcoes" (
	"id_funcao" INTEGER,
	"id_funcionario" INTEGER
);

CREATE TABLE "funcoes" (
	"id" INTEGER,
	"version" INTEGER,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_cargo" INTEGER,
	"id_setor" INTEGER
);

CREATE TABLE "formas_de_pagamento" (
	"id" INTEGER,
	"version" INTEGER,
	"prazo_primeiro_pagamento" INTEGER,
	"qtd_vezes" INTEGER,
	"acrescimo_desconto" NUMERIC,
	"tipo" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "detalhamentos" (
	"id" INTEGER,
	"version" INTEGER,
	"usuario" VARCHAR,
	"data_salvamento" DATETIME,
	"conteudo" TEXT,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_atividade" INTEGER,
	"id_pedido" INTEGER,
	"id_ordem_servico" INTEGER,
	"id_ordem_servico_observacao" INTEGER,
	"id_visita" INTEGER
);

CREATE TABLE "controles_viagens" (
	"id" INTEGER,
	"version" INTEGER,
	"data" DATETIME,
	"data_hora_saida" DATETIME,
	"data_hora_chegada" DATETIME,
	"quilometragem_saida" NUMERIC,
	"quilometragem_chegada" NUMERIC,
	"roteiro" VARCHAR,
	"observacoes" TEXT,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_responsavel" INTEGER,
	"id_motorista" INTEGER,
	"id_veiculo" INTEGER,
	"id_setor_utilizacao" INTEGER
);

CREATE TABLE "contatos" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"funcao" VARCHAR,
	"telefone1" VARCHAR,
	"telefone2" VARCHAR,
	"email" VARCHAR,
	"recebe_notificacoes" CHAR,
	"email_recebe_login_senha" CHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_cliente" INTEGER
);

CREATE TABLE "configuracoes" (
	"id" INTEGER,
	"version" INTEGER,
	"emails_aviso_contratacao_aceita" VARCHAR,
	"emails_aviso_orcamento_aceito" VARCHAR,
	"emails_aviso_pesquisa_satisfacao_respondida" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "classificacoes_clientes" (
	"id" INTEGER,
	"version" INTEGER,
	"classificacao" INTEGER,
	"data" DATETIME,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_cliente" INTEGER
);

CREATE TABLE "cargos" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER
);

CREATE TABLE "atividades" (
	"id" INTEGER,
	"version" INTEGER,
	"data" DATETIME,
	"descricao" TEXT,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_executor" INTEGER,
	"id_tipo_atividade" INTEGER,
	"id_ordem_servico" INTEGER
);

CREATE TABLE "arquivos" (
	"id" INTEGER,
	"version" INTEGER,
	"nome" VARCHAR,
	"host" VARCHAR,
	"caminho" VARCHAR,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_atividade" INTEGER,
	"id_pedido" INTEGER,
	"id_ordem_servico" INTEGER,
	"id_visita" INTEGER
);

CREATE TABLE "abastecimentos" (
	"id" INTEGER,
	"version" INTEGER,
	"data" DATETIME,
	"qtd_litros" NUMERIC,
	"quilometragem_geral" NUMERIC,
	"valor_unitario" NUMERIC,
	"valor_total" NUMERIC,
	"ativo" CHAR,
	"emp" INTEGER,
	"id_controle_viagem" INTEGER
);
