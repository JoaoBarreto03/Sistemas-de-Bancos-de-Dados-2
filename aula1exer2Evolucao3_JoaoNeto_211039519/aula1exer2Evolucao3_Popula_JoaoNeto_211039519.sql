--  << aula1exer2Evolucao3 >>
-- 
-- 			SCRIPT DE POPULA (DML)
--
-- Data Criacao ...........: 11/09/2023
-- Autor(es) ..............: Leonardo Vitoriano e Joao Neto
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: aula1exer2Evolucao2
--
-- PROJETO => 01 Base de Dados
--         => 09 Tabelas

-- ULTIMA MODIFICACOES:
-- 		13/09/2023 => Adicionando novas tuplas e remocao de uma tabela
-- ---------------------------------------------------------

USE aula1exer2Evolucao3;

INSERT INTO PESSOA (cpfPessoa, nomePessoa, senha)
VALUES
    (23179989025, 'João Silva', 'joaosilva'),
    (30291495010, 'Maria Santos', 'mariasantos'),
    (77595620040, 'Zé Roberto', 'zeroberto'),
    (46113951030, 'Tulio Maravilha', 'tuliomaravilha'),
    (53313381006, 'Marta dos Santos', 'martadossantos'),
    (99931018003, 'Pedro Almeida', 'pedroalmeida'),
    (03107625100, 'Carlos Alberto', 'ALLOOOW1'),
    (03107625330, 'Marina Santos', 'ALOOOW4'),
    (03107645684, 'Fausto Silva', 'ALOOOO5'),
    (77595620041, 'Antonio Manuel', 'antoniomanuel'),
    (03107645652, 'Julia Oliveira', 'juliaoliveira'),
    (03107645663, 'Pedro Fernandes', 'pedrofernandes');
    
INSERT INTO GERENTE (cpfPessoa, formacaoEscolar, email)
VALUES
    (23179989025, 'superior', 'joao.silva@email.com'),
    (30291495010, 'superior', 'maria.santos@email.com'),
    (99931018003, 'medio', 'pedro.almeida@email.com'),
    (03107625100, 'superior', 'carlos.alberto@email.com'),
    (03107625330, 'medio', 'marina.santos@email.com'),
    (03107645684, 'superior', 'fausto.silva@email.com'),
    (77595620041, 'superior', 'antonio.manuel@gmail.com'),
    (03107645652, 'medio', 'juoliveira@gmail.com'),
    (03107645663, 'superior', 'pedrinhofrnds@gmail.com'),
    (77595620040, 'primario', 'ze.robert@gmail.com');
    
INSERT INTO AREA (nomeArea, idGerente)
VALUES
    ('Eletrônicos', 1),
    ('Roupas', 2),
    ('Alimentos', 3),
    ('Móveis', 4),
    ('Esportes', 5),
    ('Beleza', 6),
    ('Livros', 7),
    ('Pneus', 8),
    ('Brinquedos', 9),
    ('Produtos de limpeza', 10);

INSERT INTO EMPREGADO (cpfPessoa, estado, rua, numero, bairro, cep, cidade)
VALUES
    (77595620040, 'SP', 'Zelia', 123, 'Italia', 12345678, 'São Paulo'),
    (46113951030, 'RJ', 'Beta', 456, 'Marselha', 87654321, 'Botafogo'),
    (53313381006, 'MG', 'Gama', 789, 'Suíça', 54321678, 'Belo Horizante'),
    (77595620041, 'DF', 'Araucarias', 1001, 'Jardins', 72640009, 'Brasília'),
    (03107645652, 'DF', 'Macedonia', 1081, 'Maringa', 72243164, 'Brasília'),
    (03107645663, 'DF', 'Ituano', 1201, 'Apore', 70803200, 'Brasília'),
    (30291495010, 'MG', 'Rua Doutor Coutinho', 146, 'Ponte Preta', 36092174, 'Juiz de Fora'),
    (23179989025, 'RJ', 'Alameda Marinildo Amado da Silva', 614, 'Granja dos Cavaleiros', 27930450, 'Macaé'),
    (99931018003, 'ES', 'Rua Floresta', 774, 'Alecrim', 29118105, 'Vila Velha'),
    (03107625100, 'RJ', 'Rua Brigadeiro Godinho Santos', 369, 'Mosela', 25675121, 'Petrópolis');

INSERT INTO PRODUTO (nomeProduto, precoUnitario, idArea, numeroSerie)
VALUES
    ('Smartphone', 799.99, 1, 1235678023914290),
    ('Camiseta', 29.99, 2, NULL),
    ('Arroz', 5.99, 3, NULL),
    ('Sofá', 499.99, 4, NULL),
    ('Tênis de Corrida', 89.99, 5, NULL),
    ('Shampoo', 9.99, 6, NULL),
    ('Bicicleta infantil', 459.99, 9, NULL),
    ('Pneu 205/40r17', 519.99, 8, NULL),
    ('Heaven', 129.99, 7, NULL),
    ('Cera para polir', '29.99', 10, NULL),
    ('Pneu 185/60r14', 319.99, 8, NULL),
    ('A culpa é das estrelas', 109.99, 7, NULL),
    ('Boneco toy story Buzz ligthyear', 59.99, 9, NULL);

INSERT INTO VENDA (matricula, dataVenda)
VALUES
    (1, '2023-08-01'),
    (2, '2023-08-02'),
    (3, '2023-08-03'),
    (4, '2023-08-04'),
    (5, '2023-08-05'),
    (6, '2023-08-06'),
    (7, '2023-08-07'),
    (8, '2023-08-08'),
    (9, '2023-08-09'),
    (10, '2023-08-10');

    
INSERT INTO telefone (matricula, telefone)
VALUES
    (1, 1336563042),
    (2, 2233623612),
    (3, 3439783528),
    (4, 61991675900),
    (5, 61991675999),
    (6, 61985175933),
    (7, 61993214334),
    (8, 32991231432),
    (9, 61998732131),
    (10, 6199657421);


INSERT INTO possui (idVenda, codigoNumerico, qtdProduto)
VALUES
    (1, 1, 2),
    (2, 2, 3),
    (3, 3, 1),
    (4, 4, 2),
    (5, 5, 4),
    (6, 6, 1),
    (6, 7, 1),
    (7, 8, 2),
    (8, 9, 1),
    (8, 10, 2),
    (9, 11, 2),
    (10, 12, 1);

