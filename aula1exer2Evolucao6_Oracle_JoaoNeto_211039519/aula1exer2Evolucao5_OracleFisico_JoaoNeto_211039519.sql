-- --------  << aula1exer2evolucao6 >>  ----------
--
--         SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 04/09/2023
-- Autor(es) ..............: Caio César Oliveira e Joao Manoel Barreto Neto
-- Banco de Dados .........: Oracle APEX
-- Base de Dados (nome) ...: vrvr
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 02 Sequences
--
-- Ultimas Alteracoes
--   05/09/2023 => Remover as chaves primarias das especializacoes de pessoa e transforma-las em unicas;
-- 				=> Trocar o nome da chave primaria do produto para codigo numerico como pede o enunciado;
-- 				=> Transformar a venda em apenas uma entidade em vez de relcaionamento;
-- 				=> Remover atributos que nao tinham relevancia na entidade venda;
-- 				=> Transformar a venda em apenas uma entidade em vez de relacionamento;
--   13/09/2023 => Adicionar nova tabela area;
--   18/09/2023 => Alterar matricula em empregado para chave primaria e cpf para unico
--   			=> Alterar a matricula como chave estrangeira em venda em vez de cpf
--   			=> Remover unique dos atributos cpf e dataVenda na entidade venda
--   04/10/2023 => Criação de Sequences
--              => Fazer correções para o script funcionar no Oracle
-- ---------------------------------------

CREATE SEQUENCE JMBN_SEQ_VENDA
    START WITH 1
    INCREMENT BY 1;

CREATE SEQUENCE JMBN_SEQ_AREA
    START WITH 1
    INCREMENT BY 1;

CREATE TABLE JMBN_PESSOA (
    cpf VARCHAR2(11) NOT NULL,
    nome VARCHAR2(30) NOT NULL,
    senha VARCHAR2(20) NOT NULL,
    
    CONSTRAINT JMBN_PESSOA_PK PRIMARY KEY (cpf)
);

CREATE TABLE JMBN_EMPREGADO (
    matricula VARCHAR2(20) NOT NULL,
    bairro VARCHAR2(20) NOT NULL,
    rua VARCHAR2(20) NOT NULL,
    numero INT,
    uf VARCHAR2(2) NOT NULL,
    cidade VARCHAR2(20) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    
    CONSTRAINT JMBN_EMPREGADO_PK PRIMARY KEY (matricula),
    CONSTRAINT JMBN_EMPREGADO_PESSOA_FK FOREIGN KEY (cpf) 
		REFERENCES JMBN_PESSOA (cpf),
    CONSTRAINT JMBN_EMPREGADO_UK UNIQUE (cpf)
);

CREATE TABLE JMBN_GERENTE (
    email VARCHAR2(30) NOT NULL,
    descricaoFormacaoEscolar VARCHAR2(20) NOT NULL,
    cpf VARCHAR2(11) NOT NULL,
    
    CONSTRAINT JMBN_GERENTE_PESSOA_FK FOREIGN KEY (cpf) 
		REFERENCES JMBN_PESSOA (cpf),
	CONSTRAINT JMBN_GERENTE_UK UNIQUE (cpf)
);

CREATE TABLE JMBN_AREA (
    idArea INT NOT NULL,
    nomeArea VARCHAR2(20) NOT NULL,
    cpfGerente VARCHAR2(11) NOT NULL,
    
    CONSTRAINT JMBN_AREA_PK PRIMARY KEY (idArea),
    CONSTRAINT JMBN_AREA_GERENTE_FK FOREIGN KEY (cpfGerente) 
		REFERENCES JMBN_PESSOA (cpf)
);

CREATE TABLE JMBN_PRODUTO (
    codigoNumerico VARCHAR2(15) NOT NULL,
    nome VARCHAR2(20) NOT NULL,
    precoUnitario DECIMAL(5,2) NOT NULL,
    idArea INT,
    
    CONSTRAINT JMBN_PRODUTO_PK PRIMARY KEY (codigoNumerico),
    CONSTRAINT JMBN_PRODUTO_AREA_FK FOREIGN KEY (idArea) 
		REFERENCES JMBN_AREA (idArea)
);

CREATE TABLE JMBN_VENDA (
    idProcessoVenda INT NOT NULL,
    dataRealizacao DATE NOT NULL,
    matricula VARCHAR2(20) NOT NULL,
    
    CONSTRAINT JMBN_VENDA_PK PRIMARY KEY (idProcessoVenda),
    CONSTRAINT JMBN_VENDA_EMPREGADO_FK FOREIGN KEY (matricula) 
		REFERENCES JMBN_EMPREGADO (matricula)
);

CREATE TABLE JMBN_telefone (
    cpf VARCHAR2(11) NOT NULL,
    telefone VARCHAR2(11) NOT NULL,
    
    CONSTRAINT JMBN_telefone_EMPREGADO_FK FOREIGN KEY (cpf) 
		REFERENCES JMBN_PESSOA (cpf),
	CONSTRAINT JMBN_telefone_UK UNIQUE (telefone, cpf)
);

CREATE TABLE JMBN_possui (
    codigoNumerico VARCHAR2(15) NOT NULL,
    idProcessoVenda INT NOT NULL,
    quantidadeProduto INT NOT NULL,
    
    CONSTRAINT JMBN_possui_PRODUTO_FK FOREIGN KEY (codigoNumerico) 
		REFERENCES JMBN_PRODUTO (codigoNumerico),
    CONSTRAINT JMBN_possui_VENDA_FK FOREIGN KEY (idProcessoVenda) 
		REFERENCES JMBN_VENDA (idProcessoVenda)
);