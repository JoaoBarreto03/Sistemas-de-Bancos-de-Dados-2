-- ---------------------   << Exercício 1 da Aula 3 Evolucao 2 >>   ---------------------
--
--                    		SCRIPT DE CRIAÇÃO (DDL)
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
-- Ultimas Alteracoes => 08/10/2023 => modificacao da UNIQUE na tabela aloca
--                  		 		=> adicionando dataPlantao, horarioEntrada e horarioSaida na tabela aloca, substituindo o atributo horario	
-- 									=> adicionando NOT NULL ao atributo idEspecialidade da tabela possui
--                                  => Colocando AUTO_INCREMENT igual a 1 nas tabelas SETOR e ESPECIALIDADE
-- -----------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula3exer1Evolucao2;
    
USE aula3exer1Evolucao2;


CREATE TABLE SETOR (
    idSetor INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    
    CONSTRAINT SETOR_PK PRIMARY KEY (idSetor)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE ESPECIALIDADE (
    idEspecialidade INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    
    CONSTRAINT ESPECIALIDADE_PK
		PRIMARY KEY (idEspecialidade)
) ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PLANTONISTA (
    matricula BIGINT NOT NULL,
    nomeCompleto VARCHAR(50) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,

	CONSTRAINT PLANTONISTA_PK PRIMARY KEY (matricula)
) ENGINE = InnoDB;

CREATE TABLE aloca (
	matricula BIGINT NOT NULL,
    idSetor INT NOT NULL,
    horarioEntrada TIME NOT NULL,
    horarioSaida TIME NOT NULL,
    dataPlantao DATE NOT NULL,
    
    
    CONSTRAINT aloca_PLANTONISTA_FK
		FOREIGN KEY (matricula)
        REFERENCES PLANTONISTA(matricula) 
			ON DELETE RESTRICT 
            ON UPDATE CASCADE, 
	CONSTRAINT aloca_SETOR_FK
		FOREIGN KEY (idSetor)
        REFERENCES SETOR(idSetor) 
			ON DELETE RESTRICT 
            ON UPDATE CASCADE,
	CONSTRAINT aloca_UK
		UNIQUE KEY (matricula, horarioEntrada, horarioSaida, dataPlantao)
) ENGINE=InnoDB;

CREATE TABLE possui (
    matricula BIGINT NOT NULL,
    idEspecialidade INT NOT NULL,
    
    CONSTRAINT possui_PLANTONISTA_FK
		FOREIGN KEY (matricula)
        REFERENCES PLANTONISTA(matricula) 
			ON DELETE RESTRICT 
            ON UPDATE CASCADE, 
	CONSTRAINT possui_ESPECIALIDADE_FK
		FOREIGN KEY (idEspecialidade)
        REFERENCES ESPECIALIDADE(idEspecialidade)
			ON DELETE RESTRICT 
            ON UPDATE CASCADE
) ENGINE=InnoDB;
