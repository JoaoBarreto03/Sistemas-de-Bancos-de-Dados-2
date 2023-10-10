-- << aula1exer2Evolucao3 >>
-- 
-- 			SCRIPT DE CONTROLE
--
-- Data Criacao ...........: 13/09/2023
-- Autor(es) ..............: Joao Neto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2Evolucao3
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas

-- ULTIMAS MODIFICACOES:
-- 		13/09/2023 => Criação dos usuários e roles;
-- ---------------------------------------------------------

use aula1exer2Evolucao3;

CREATE ROLE empregado;
GRANT SELECT, INSERT ON aula1exer2Evolucao3.* TO empregado;

CREATE ROLE gerente;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, ALTER ON aula1exer2Evolucao3.* TO gerente;

CREATE ROLE superior;
GRANT ALL PRIVILEGES ON aula1exer2Evolucao3.* TO superior;

-- CRIAÇÃO DE USUÁRIOS

CREATE USER 'admin' IDENTIFIED BY '1admin';
GRANT superior TO 'admim';
CREATE USER 'anamaria' IDENTIFIED BY '2anam';
GRANT gerente TO 'anamaria';
CREATE USER 'ruicarlos' IDENTIFIED BY '3ruic';
GRANT gerente TO 'ruicarlos';
CREATE USER 'maria' IDENTIFIED BY '4maria';
GRANT empregado TO 'maria';
CREATE USER 'paulo' IDENTIFIED BY '5paulo';
GRANT empregado TO 'paulo';
CREATE USER 'jose' IDENTIFIED BY '6jose';
GRANT empregado TO 'jose';
CREATE USER 'giovana' IDENTIFIED BY '7giovana';
GRANT empregado TO 'giovana';
CREATE USER 'pedro' IDENTIFIED BY '8pedro';
GRANT empregado TO 'pedro';