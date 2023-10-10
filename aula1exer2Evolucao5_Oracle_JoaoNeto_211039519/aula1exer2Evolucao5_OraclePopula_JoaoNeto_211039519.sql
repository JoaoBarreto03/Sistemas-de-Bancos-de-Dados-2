-- --------  << aula1exer2Evolucao5 >>  ----------
--
--         SCRIPT POPULA (DML)
--
-- Data Criacao ...........: 04/10/2023
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

-- INSERCOES

INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('11111111111', 'João Silva', 'senha123');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('22222222222', 'Maria Santos', 'senha456');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('33333333333', 'Carlos Oliveira', 'senha789');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('44444444444', 'Ana Rodrigues', 'senhaabc');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('55555555555', 'Pedro Alves', 'senhadef');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('66666666666', 'Laura Pereira', 'senhaghi');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('77777777777', 'Paulo Sousa', 'senhajkl');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('88888888888', 'Mariana Costa', 'senhamno');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('99999999999', 'Fernando Santos', 'senha123');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('10101010101', 'Amanda Lima', 'senha456');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('12121212121', 'Juliana Martins', 'senhaabc');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('13131313131', 'Rafael Santos', 'senhadef');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('14141414141', 'Carolina Oliveira', 'senhaghi');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('15151515151', 'Diego Lima', 'senhajkl');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('16161616161', 'Isabela Silva', 'senhamno');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('17171717171', 'Lucas Pereira', 'senha123');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('18181818181', 'Ana Paula Costa', 'senha456');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('19191919191', 'Thiago Sousa', 'senha789');
INSERT INTO PESSOA (cpf, nome, senha) VALUES
    ('20202020202', 'Patrícia Alves', 'senhaabc');

INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M001', 'Centro', 'Rua A', 123, 'SP', 'São Paulo', '11111111111');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M002', 'Vila Madalena', 'Rua B', 456, 'RJ', 'Rio de Janeiro', '22222222222');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M003', 'Jardins', 'Rua C', 789, 'SP', 'São Paulo', '33333333333');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M004', 'Copacabana', 'Rua D', 101, 'RJ', 'Rio de Janeiro', '44444444444');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M005', 'Centro', 'Rua E', 202, 'SP', 'São Paulo', '55555555555');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M006', 'Botafogo', 'Rua F', 303, 'RJ', 'Rio de Janeiro', '66666666666');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M007', 'Itaim Bibi', 'Rua G', 404, 'SP', 'São Paulo', '77777777777');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M008', 'Leblon', 'Rua H', 505, 'RJ', 'Rio de Janeiro', '88888888888');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M009', 'Vila Madalena', 'Rua I', 606, 'SP', 'São Paulo', '99999999999');
INSERT INTO EMPREGADO (matricula, bairro, rua, numero, uf, cidade, cpf) VALUES
    ('M010', 'Ipanema', 'Rua J', 707, 'RJ', 'Rio de Janeiro', '10101010101');

INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('joao@empresa.com', 'Graduado', '12121212121');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('maria@empresa.com', 'Mestrado', '13131313131');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('carlos@empresa.com', 'Graduado', '14141414141');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('ana@empresa.com', 'Doutorado', '15151515151');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('pedro@empresa.com', 'Graduado', '16161616161');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('laura@empresa.com', 'Mestrado', '17171717171');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('paulo@empresa.com', 'Doutorado', '18181818181');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('mariana@empresa.com', 'Graduado', '19191919191');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('fernando@empresa.com', 'Mestrado', '20202020202');
INSERT INTO GERENTE (email, descricaoFormacaoEscolar, cpf) VALUES
    ('amanda@empresa.com', 'Graduado', '10101010101');

INSERT INTO AREA (idArea ,nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Vendas', '11111111111');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'RH', '22222222222');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'TI', '33333333333');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Marketing', '44444444444');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Logística', '77777777777');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Financeiro', '66666666666');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Produção', '77777777777');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Compras', '88888888888');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Qualidade', '99999999999');
INSERT INTO AREA (idArea, nomeArea, cpfGerente) VALUES
    (sqArea.NEXTVAL, 'Jurídico', '10101010101');

INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P001', 'Produto 1', 19.99, 10);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P002', 'Produto 2', 29.99, 2);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P003', 'Produto 3', 9.99, 3);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P004', 'Produto 4', 14.99, 4);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P005', 'Produto 5', 24.99, 5);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P006', 'Produto 6', 34.99, 6);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P007', 'Produto 7', 11.99, 7);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P008', 'Produto 8', 21.99, 8);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P009', 'Produto 9', 17.99, 9);
INSERT INTO PRODUTO (codigo, nomeProduto, precoUnitario, idArea) VALUES
    ('P010', 'Produto 10', 12.99, 1);

INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-01', 'YY-MM-DD'), 'M001');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-02', 'YY-MM-DD'), 'M002');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-03', 'YY-MM-DD'), 'M003');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-04', 'YY-MM-DD'), 'M004');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-05', 'YY-MM-DD'), 'M005');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-06', 'YY-MM-DD'), 'M006');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-07', 'YY-MM-DD'), 'M007');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-08', 'YY-MM-DD'), 'M008');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-09', 'YY-MM-DD'), 'M009');
INSERT INTO VENDA (idVenda, dataRealizacao, matricula) VALUES
    (sqVenda.NEXTVAL, TO_DATE('2023-09-10', 'YY-MM-DD'), 'M010');

INSERT INTO telefone (matricula, telefone) VALUES
    ('M001', '1111111111');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M002', '2222222222');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M003', '3333333333');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M004', '4444444444');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M005', '5555555555');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M006', '6666666666');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M007', '7777777777');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M008', '8888888888');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M009', '9999999999');
INSERT INTO telefone (matricula, telefone) VALUES
    ('M010', '1010101010');

INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P001', 1, 5);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P003', 1, 3);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P002', 1, 7);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P004', 4, 2);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P005', 5, 6);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P006', 6, 4);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P007', 7, 8);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P008', 8, 1);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P009', 9, 3);
INSERT INTO possui (codigo, idVenda, quantidadeProduto) VALUES
    ('P010', 10, 2);




