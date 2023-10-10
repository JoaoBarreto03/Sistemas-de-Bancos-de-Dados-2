-- ---------------------   << Exercício 1 da Aula 3 Evolucao 2 >>   ---------------------
--
--                    		SCRIPT CONTROLE (DDL/DCL)
-- 
-- Data Criacao ...........: 02/10/2023
-- Autor(es) ..............: Erick Melo Vidal de Oliveira
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: aula3exer1Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 		   => 03 Papeis
-- 		   => 05 Usuarios
--
-- Ultimas Alteracoes => 08/10/2023 => Trocando o nome do perfil admin para administrador 
-- -----------------------------------------------------------------

USE aula3exer1Evolucao2;

-- Criacao de papeis
CREATE ROLE administrador;
CREATE ROLE usuario;
CREATE ROLE gestor;

-- Atribuindo privilegios aos papeis

GRANT ALL PRIVILEGES
	ON aula3exer1.* 
	TO administrador;
    
GRANT SELECT 
	ON aula3exer1.*
	TO usuario, gestor;
    
GRANT INSERT, UPDATE
	ON aula3exer1.PLANTONISTA
    TO gestor;

GRANT INSERT, UPDATE
	ON aula3exer1.SETOR
    TO gestor;
    
-- Criação de usuários

CREATE USER 'saudedba' 
	IDENTIFIED BY 'dbasaude';
    
CREATE USER 'maria'  
	IDENTIFIED BY 'airam ';
 
 CREATE USER 'jose'
	IDENTIFIED BY 'esoj ';
    
CREATE USER 'clara' 
	IDENTIFIED BY 'c1234';
    
CREATE USER 'joaquim'  
	IDENTIFIED BY 'j4321 ';
    
-- Designando papeis para os Usuarios
 
GRANT administrador TO saudedba;
GRANT usuario TO maria;
GRANT usuario TO jose;
GRANT gestor TO clara;
GRANT gestor TO joaquim;