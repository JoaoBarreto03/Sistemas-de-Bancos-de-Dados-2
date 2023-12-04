-- << agenda >>
-- 
-- 			SCRIPT PROCEDURAL (DDL)
--
-- Data Criacao ...........: 27/11/2023
-- Autor(es) ..............: Joao Neto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: agenda
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
-- ---------------------------------------------------------

USE agenda;

-- 1) Função que conta quantas tuplas tem na tabela PESSOA:

DELIMITER $$	

CREATE FUNCTION contarTuplasPessoa()
RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total FROM pessoa;
    RETURN total;
END $$

DELIMITER ;


-- 2) Procedimento que conta quantos telefones tem uma pessoa específica:

DELIMITER $$

CREATE PROCEDURE contarTelefonesPessoa(IN pessoa_id INT, OUT total_telefones INT)
BEGIN
    SELECT COUNT(*) INTO total_telefones FROM telefone WHERE idPessoa = pessoa_id;
END $$	
DELIMITER ;


-- 3) Função que mostra a quantidade de produtos específicos solicitados pelo nome do produto:

DELIMITER $$
CREATE FUNCTION contarProdutosPorNome(IN produto_nome VARCHAR(80))
RETURNS INT
BEGIN
    DECLARE total_produtos INT;
    SELECT COUNT(*) INTO total_produtos FROM produtos WHERE nome = produto_nome;
    RETURN total_produtos;
END $$
DELIMITER ;
	

-- 4)Função que calcula para um produto específico a quantidade financeira em estoque:

DELIMITER $$
CREATE FUNCTION calcularValorFinanceiroEstoque(IN produto_nome VARCHAR(80))
RETURNS FLOAT
BEGIN
    DECLARE valor_total FLOAT;
    SELECT SUM(preco * qtde) INTO valor_total FROM produtos WHERE nome = produto_nome;
    RETURN valor_total;
END $$
DELIMITER ;

