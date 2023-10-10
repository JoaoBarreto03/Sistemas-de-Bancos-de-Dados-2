-- ---------------------   << Exercício 1 da Aula 3 Evolucao 2 >>   ---------------------
--
--                    		SCRIPT APAGA (DDL)
-- 
-- Data Criacao ...........: 02/10/2023
-- Autor(es) ..............: Erick Melo Vidal de Oliveira e Joao Neto
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: aula3exer1Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 		   => 03 Papeis
-- 		   => 05 Usuarios
-- 
-- -----------------------------------------------------------------

USE aula3exer1Evolucao2;

DROP TABLE possui;
DROP TABLE aloca;
DROP TABLE PLANTONISTA;
DROP TABLE ESPECIALIDADE;
DROP TABLE SETOR;

DROP ROLE admin;
DROP ROLE usuario;
DROP ROLE gestor;

DROP USER saudedba;
DROP USER maria;
DROP USER jose;
DROP USER clara;
DROP USER joaquim;