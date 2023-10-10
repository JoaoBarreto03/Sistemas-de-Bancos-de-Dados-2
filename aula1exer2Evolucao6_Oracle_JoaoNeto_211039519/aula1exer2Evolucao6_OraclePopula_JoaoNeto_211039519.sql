-- --------  << aula1exer2evolucao6 >>  ----------
--
--         SCRIPT POPULA (DML)
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
--   13/09/2023 => Adicionar novas tuplas nas tabelas e na nova tabela area
-- 				=> Remover o popula da tabela supervisiona
--   18/09/2023 => Alterar matricula como chave estrangeira nos dados da tabela venda
--   04/10/2023 => Fazer correções para o script funcionar no Oracle
-- ---------------------------------------

INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('11111111111', 'João Silva', 'senha123');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('22222222222', 'Maria Santos', 'senha456');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('33333333333', 'Carlos Oliveira', 'senha789');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('44444444444', 'Ana Rodrigues', 'senhaabc');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('55555555555', 'Pedro Alves', 'senhadef');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('66666666666', 'Laura Pereira', 'senhaghi');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('77777777777', 'Paulo Sousa', 'senhajkl');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('88888888888', 'Mariana Costa', 'senhamno');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('99999999999', 'Fernando Santos', 'senha123');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('10101010101', 'Amanda Lima', 'senha456');
INSERT INTO JMBN_PESSOA (cpf, nome, senha) VALUES ('10928374629', 'Caio Cesar', 'senha476');

INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M001', 'Centro', 'Rua A', 123, 'SP', 'São Paulo', '11111111111');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M002', 'Vila Madalena', 'Rua B', 456, 'RJ', 'Rio de Janeiro', '22222222222');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M003', 'Jardins', 'Rua C', 789, 'SP', 'São Paulo', '33333333333');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M004', 'Copacabana', 'Rua D', 101, 'RJ', 'Rio de Janeiro', '44444444444');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M005', 'Centro', 'Rua E', 202, 'SP', 'São Paulo', '55555555555');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M006', 'Botafogo', 'Rua F', 303, 'RJ', 'Rio de Janeiro', '66666666666');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M007', 'Itaim Bibi', 'Rua G', 404, 'SP', 'São Paulo', '77777777777');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M008', 'Leblon', 'Rua H', 505, 'RJ', 'Rio de Janeiro', '88888888888');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M009', 'Vila Madalena', 'Rua I', 606, 'SP', 'São Paulo', '99999999999');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M010', 'Ipanema', 'Rua J', 707, 'RJ', 'Rio de Janeiro', '10101010101');
INSERT INTO JMBN_EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES ('M011', 'Ipanema', 'Rua L', 746, 'RJ', 'Rio de Janeiro', '10928374629');

INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('joao@empresa.com', 'Graduado', '11111111111');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('maria@empresa.com', 'Mestrado', '22222222222');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('carlos@empresa.com', 'Graduado', '33333333333');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('ana@empresa.com', 'Doutorado', '44444444444');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('pedro@empresa.com', 'Graduado', '55555555555');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('laura@empresa.com', 'Mestrado', '66666666666');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('paulo@empresa.com', 'Doutorado', '77777777777');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('mariana@empresa.com', 'Graduado', '88888888888');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('fernando@empresa.com', 'Mestrado', '99999999999');
INSERT INTO JMBN_GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES ('amanda@empresa.com', 'Graduado', '10101010101');

INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Vendas', '11111111111');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'RH', '11111111111');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'TI', '11111111111');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Marketing', '44444444444');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Logística', '55555555555');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Financeiro', '66666666666');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Produção', '77777777777');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Compras', '88888888888');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Qualidade', '99999999999');
INSERT INTO JMBN_AREA (idArea, nomeArea, cpfGerente) VALUES (JMBN_SEQ_AREA.nextval, 'Jurídico', '10101010101');

INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P001', 'banana', 19.99, 10);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P002', 'cereal', 29.99, 2);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P003', 'biscoito', 9.99, 3);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P004', 'milho', 14.99, 4);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P005', 'doce de milho', 24.99, 5);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P006', 'dindin', 34.99, 6);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P007', 'sorvete 1,5L', 11.99, 7);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P008', 'Arroz', 21.99, 8);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P009', 'feijão', 17.99, 9);
INSERT INTO JMBN_PRODUTO (codigoNumerico, nome, precoUnitario, idArea) VALUES ('P010', 'macarrão', 12.99, 1);

INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('08/09/2023', 'DD/MM/YYYY'), 'M001');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('09/09/2023', 'DD/MM/YYYY'), 'M002');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('07/09/2023', 'DD/MM/YYYY'), 'M003');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('06/09/2023', 'DD/MM/YYYY'), 'M004');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('05/09/2023', 'DD/MM/YYYY'), 'M005');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('04/09/2023', 'DD/MM/YYYY'), 'M006');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('03/09/2023', 'DD/MM/YYYY'), 'M007');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('03/09/2023', 'DD/MM/YYYY'), 'M008');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('02/09/2023', 'DD/MM/YYYY'), 'M009');
INSERT INTO JMBN_VENDA (idProcessoVenda, dataRealizacao, matricula) VALUES (JMBN_SEQ_VENDA.nextval, TO_DATE('01/09/2023', 'DD/MM/YYYY'), 'M010');

INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('11111111111', '1111111111');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('22222222222', '2222222222');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('33333333333', '3333333333');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('44444444444', '4444444444');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('55555555555', '5555555555');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('66666666666', '6666666666');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('77777777777', '7777777777');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('88888888888', '8888888888');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('99999999999', '9999999999');
INSERT INTO JMBN_telefone (cpf, telefone) VALUES ('10101010101', '1010101010');

INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P001', 1, 5);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P002', 2, 3);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P003', 3, 7);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P004', 4, 2);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P005', 5, 6);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P005', 6, 4);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P007', 7, 8);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P008', 8, 1);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P009', 9, 3);
INSERT INTO JMBN_possui (codigoNumerico, idProcessoVenda, quantidadeProduto) VALUES ('P010', 9, 2);