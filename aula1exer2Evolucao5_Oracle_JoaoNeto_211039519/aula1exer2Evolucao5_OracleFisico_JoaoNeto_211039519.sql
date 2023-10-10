-- --------  << aula1exer2Evolucao5 >>  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 03/10/2023
-- Autor(es) ..............: JoaoNeto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2Evolucao5
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 01 View
--         => 05 Consultas
--
-- ---------------------------------------

-- BASE DE DADOS


-- TABELAS
CREATE SEQUENCE sqVenda
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE sqArea
    MINVALUE 1
    START WITH 1
    INCREMENT BY 1;
    
CREATE TABLE PESSOA (
    cpf   VARCHAR(11) NOT NULL,
    nome  VARCHAR(30) NOT NULL,
    senha VARCHAR(20) NOT NULL,
  CONSTRAINT PESSOA_PK PRIMARY KEY (cpf)
);


CREATE TABLE EMPREGADO (
    matricula VARCHAR(20) NOT NULL,
    bairro VARCHAR(20) NOT NULL,
    rua VARCHAR(20) NOT NULL,
    numero INTEGER NOT NULL,
    uf VARCHAR(2) NOT NULL,
    cidade VARCHAR(20) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
  CONSTRAINT EMPREGADO_PK PRIMARY KEY (matricula),
  CONSTRAINT EMPREGADO_UK UNIQUE (cpf),
  CONSTRAINT EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) 
	REFERENCES PESSOA (cpf)
);


CREATE TABLE GERENTE (
    email VARCHAR(30) NOT NULL,
    descricaoFormacaoEscolar VARCHAR(20) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
  CONSTRAINT GERENTE_UK UNIQUE (cpf),
  CONSTRAINT GERENTE_PESSOA_FK FOREIGN KEY (cpf) 
		REFERENCES PESSOA (cpf)
);


CREATE TABLE AREA (
    idArea INTEGER NOT NULL,
    nomeArea VARCHAR(20) NOT NULL,
    cpfGerente VARCHAR(11) NOT NULL,
  CONSTRAINT AREA_PK PRIMARY KEY (idArea),
  CONSTRAINT AREA_GERENTE_FK FOREIGN KEY (cpfGerente) 
	REFERENCES PESSOA (cpf)
);


CREATE TABLE PRODUTO (
    codigo VARCHAR(15) NOT NULL,
    nomeProduto VARCHAR(50) NOT NULL,
    precoUnitario NUMBER(5,2) NOT NULL,
    idArea INTEGER,
  CONSTRAINT PRODUTO_PK PRIMARY KEY (codigo),
  CONSTRAINT PRODUTO_AREA_FK FOREIGN KEY (idArea) 
	REFERENCES AREA (idArea)
);


CREATE TABLE VENDA (
    idVenda INTEGER NOT NULL,
    dataRealizacao DATE NOT NULL,
    matricula VARCHAR(20) NOT NULL,
  CONSTRAINT VENDA_PK PRIMARY KEY (idVenda),
  CONSTRAINT VENDA_EMPREGADO_FK FOREIGN KEY (matricula) 
	REFERENCES EMPREGADO (matricula)
);


CREATE TABLE telefone (
    matricula VARCHAR(20) NOT NULL,
    telefone  VARCHAR(11) NOT NULL,
  CONSTRAINT telefone_UK UNIQUE (telefone, matricula),
  CONSTRAINT telefone_EMPREGADO_FK FOREIGN KEY (matricula) 
	REFERENCES EMPREGADO (matricula)
);


CREATE TABLE possui (
    codigo VARCHAR(15) NOT NULL,
    idVenda INTEGER NOT NULL,
    quantidadeProduto INTEGER NOT NULL,
  CONSTRAINT possui_PRODUTO_FK FOREIGN KEY (codigo) 
	REFERENCES PRODUTO (codigo),
   CONSTRAINT possui_VENDA_FK FOREIGN KEY (idVenda) 
	REFERENCES VENDA (idVenda)
);
