-- << aula1exer2Evolucao3 >>
-- 
-- 			SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 11/09/2023
-- Autor(es) ..............: Leonardo Vitoriano e Joao Neto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2Evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas

-- ULTIMAS MODIFICACOES:
-- 		13/09/2023 => Remocao da tabela pertence
-- 					  Mudanca de cardinalidade no relacionamento entre GERENTE e AREA 
-- 					  Adicao do atributo numeroSerie em PRODUTO 
-- 					  Criacao de chave unica entre o codigoNumerico e numeroSerie do PRODUTO
-- ---------------------------------------------------------

CREATE DATABASE IF NOT EXISTS aula1exer2Evolucao3;

USE aula1exer2Evolucao3;

CREATE TABLE PESSOA (
    cpfPessoa BIGINT(11) NOT NULL,
    nomePessoa VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL, 
    
    CONSTRAINT USUARIO_PK PRIMARY KEY (cpfPessoa)
) ENGINE=InnoDB ;

CREATE TABLE GERENTE (
    idGerente BIGINT NOT NULL AUTO_INCREMENT,
    cpfPessoa BIGINT(11) NOT NULL,
    formacaoEscolar ENUM('primario', 'medio', 'superior') NOT NULL,
    email VARCHAR(100) NOT NULL,
    
    CONSTRAINT GERENTE_PK PRIMARY KEY (idGerente),
    CONSTRAINT GERENTE_UK UNIQUE KEY (cpfPessoa),
    CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpfPessoa)
		REFERENCES PESSOA(cpfPessoa)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT

    
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE AREA (
    idArea INT NOT NULL AUTO_INCREMENT,
    nomeArea VARCHAR(100) NOT NULL,
    idGerente BIGINT NOT NULL,
    
    CONSTRAINT AREA_PK PRIMARY KEY (idArea),
    
	CONSTRAINT AREA_GERENTE_FK FOREIGN KEY (idGerente)
	REFERENCES GERENTE(idGerente)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE EMPREGADO (
    matricula BIGINT NOT NULL AUTO_INCREMENT,
    cpfPessoa BIGINT(11) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cep BIGINT(8) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    complemento VARCHAR(100),
    
    CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT EMPREGADO_UK UNIQUE KEY (cpfPessoa),
    CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpfPessoa)
		REFERENCES PESSOA(cpfPessoa)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
    
) ENGINE=InnoDB AUTO_INCREMENT=1 ;


CREATE TABLE PRODUTO (
    codigoNumerico INT NOT NULL AUTO_INCREMENT,
    nomeProduto VARCHAR(100) NOT NULL,
    precoUnitario DECIMAL(10 , 2 ) NOT NULL,
    idArea INT NOT NULL,
    numeroSerie BIGINT(24),
    CONSTRAINT PRODUTO_PK PRIMARY KEY (codigoNumerico),
    CONSTRAINT PRODUTO_UK UNIQUE KEY (numeroSerie , codigoNumerico),
    CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea)
        REFERENCES AREA (idArea)
        ON UPDATE RESTRICT ON DELETE RESTRICT
)  ENGINE=INNODB AUTO_INCREMENT=1;

CREATE TABLE VENDA (
    idVenda BIGINT NOT NULL AUTO_INCREMENT,
    matricula BIGINT NOT NULL,
    dataVenda DATE NOT NULL,
    
    CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
    CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO(matricula)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
		
) ENGINE=InnoDB AUTO_INCREMENT=1;

CREATE TABLE telefone (
    matricula BIGINT NOT NULL,
    telefone BIGINT(13) NOT NULL,
    
    CONSTRAINT telefone_UK UNIQUE KEY (telefone, matricula),
    CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula)
		REFERENCES EMPREGADO(matricula)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
    
) ENGINE=InnoDB;

CREATE TABLE possui (
    idVenda BIGINT NOT NULL,
    codigoNumerico INT NOT NULL,
    qtdProduto INT NOT NULL,
    
    CONSTRAINT possui_VENDA_FK FOREIGN KEY (idVenda)
		REFERENCES VENDA(idVenda)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT,
    CONSTRAINT possui_PRODUTO_FK FOREIGN KEY (codigoNumerico)
		REFERENCES PRODUTO(codigoNumerico)
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
    
) ENGINE=InnoDB;


