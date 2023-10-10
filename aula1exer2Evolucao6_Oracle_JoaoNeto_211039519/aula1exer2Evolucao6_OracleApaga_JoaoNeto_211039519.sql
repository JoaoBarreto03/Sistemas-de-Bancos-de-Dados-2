-- --------  << aula1exer2evolucao6 >>  ----------
--
--         SCRIPT APAGA (DDL)
--
-- Data Criacao ...........: 04/09/2023
-- Autor(es) ..............: Caio César Oliveira e João Manoel Barreto Neto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: vrvr
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 02 Sequences
--
-- Ultimas Alteracoes
--   13/09/2023 => Adicionar a remocao da nova tabela area
--   			=> Remover o comando de remover a tabela supervisiona
--   04/10/2023 => Criação de comandos para deletar Sequences
--              => Fazer correções para o script funcionar no Oracle
-- ---------------------------------------

DROP SEQUENCE JMBN_SEQ_VENDA;
DROP SEQUENCE JMBN_SEQ_AREA;

DROP TABLE JMBN_possui;
DROP TABLE JMBN_telefone;
DROP TABLE JMBN_VENDA;
DROP TABLE JMBN_PRODUTO;
DROP TABLE JMBN_AREA;
DROP TABLE JMBN_GERENTE;
DROP TABLE JMBN_EMPREGADO;
DROP TABLE JMBN_PESSOA;