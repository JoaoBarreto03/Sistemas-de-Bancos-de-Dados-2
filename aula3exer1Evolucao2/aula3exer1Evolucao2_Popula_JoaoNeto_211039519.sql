-- ---------------------   << Exercício 1 da Aula 3 Evolucao 2 >>   ---------------------
--
--                    		SCRIPT POPULA (DML)
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
-- Ultimas Alteracoes => 08/10/2023 => Acrescentando mais tuplas as tabelas
-- 									=> Corrigindo os dados de acordo com o script Fisico
-- 
-- -----------------------------------------------------------------

USE aula3exer1Evolucao2;

-- Inserindo valores na tabela SETOR
INSERT INTO
	SETOR(nome)
VALUES
	('Emergência'),
	('UTI'),
	('Clínica Médica'),
	('Cirurgia'),
	('Cardiologia'),
	('Pediatria'),
    ('Enfermagem'),
	('Dermatologia'),
    ('Nutrição');

-- Inserindo valores na tabela ESPECIALIDADE
INSERT INTO
	ESPECIALIDADE (nome)
VALUES
	('Enfermeiro Geral'),
	('Pneumologia'),
	('Neurologia'),
  	('Psiquiatria'),
  	('Oncologia'),
	('Endocrinologia'),
	('Dermatologia'),
	('Cardiologia'),
	('Nutrição');

-- Inserindo valores na tabela PLANTONISTA
INSERT INTO
	PLANTONISTA(matricula, nomeCompleto, sexo)
VALUES
	(84759274938, 'Maria da Silva', 'F'),
	(99224601858, 'João Santos', 'M'),
	(74090167373, 'Pedro Souza', 'M'),
	(25899460182, 'José Antônio', 'M'),
	(93730174067, 'Júlia Mendes', 'F'),
	(68811749899, 'Ana Oliveira', 'F'),
    (25564231455, 'Henrique Gomes', 'M'),
	(90943209123, 'Brenda Santos', 'F'),
	(60796243529, 'Carla Silva', 'F');

-- Inserindo valores na tabela aloca
INSERT INTO
	aloca(matricula, idSetor, horarioEntrada, horarioSaida, dataPlantao)
VALUES
	(84759274938, 1, '10:00:00', '18:00:00', '2023-01-12'),
	(99224601858, 1, '08:00:00', '16:00:00', '2023-02-09'),
	(74090167373, 3, '20:00:00', '06:00:00', '2023-03-28'),
	(25899460182, 5, '11:00:00', '20:00:00', '2023-04-24'),
	(93730174067, 6, '21:00:00', '05:00:00', '2023-05-01'),
	(68811749899, 4, '21:00:00', '05:00:00', '2023-05-01'),
    (25564231455, 7, '11:00:00', '19:00:00', '2023-05-09'),
	(90943209123, 8, '11:00:00', '19:00:00', '2023-05-09'),
	(60796243529, 8, '00:00:00', '08:00:00', '2023-06-10');

-- Inserindo valores na tabela possui
INSERT INTO
	possui (matricula, idEspecialidade)
VALUES
	(84759274938, 1),
	(99224601858, 2),
	(74090167373, 3),
	(68811749899, 3),
	(93730174067, 5),
	(93730174067, 6),
    (93730174067, 8),
    (25564231455, 1),
	(90943209123, 7),
	(60796243529, 7);