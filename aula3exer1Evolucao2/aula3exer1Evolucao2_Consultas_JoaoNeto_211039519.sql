-- ---------------------   << Exercício 1 da Aula 3 Evolucao 2 >>   ---------------------
--
--                    		SCRIPT CONSULTAS (DML)
-- 
-- Data Criacao ...........: 08/10/2023
-- Autor(es) ..............: Joao Neto
-- Banco de Dados .........: MySQL8.0
-- Base de Dados(nome) ....: aula3exer1Evolucao2
-- 
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas
-- 		   => 03 Papeis
-- 		   => 05 Usuarios

USE aula3exer1Evolucao2;

-- 1) Indicar todos os plantonistas por um setor específico fornecido pelo usuário da consulta, que será apresentada em ordem decrescente de horário:

SELECT P.nomeCompleto, A.horarioEntrada, A.horarioSaida
FROM PLANTONISTA P
INNER JOIN aloca A ON P.matricula = A.matricula
INNER JOIN SETOR S ON A.idSetor = S.idSetor
WHERE S.nome = 'NomeDoSetor'
ORDER BY A.horarioEntrada DESC;
-- Substitua 'NomeDoSetor' pelo nome do setor específico fornecido pelo usuário.

-- 2) Mostrar todos os plantonistas em uma data fornecida pelo usuário em ordem crescente de data (consulta no padrão DE__ ATÉ__ para datas), em que o intervalo DE e o ATÉ serão fornecidos pelo usuário:

SELECT P.nomeCompleto, A.dataPlantao
FROM PLANTONISTA P
INNER JOIN aloca A ON P.matricula = A.matricula
WHERE A.dataPlantao BETWEEN 'DE' AND 'ATÉ'
ORDER BY A.dataPlantao;
-- Substitua 'DE' e 'ATÉ' pelas datas fornecidas pelo usuário.

-- 3) Consulta os plantonistas por parte do nome e mostrar todos os seus dados pessoais cadastrados e em qual setor (ou setores) ele realiza atividades, mostrando somente o nome do setor e os dados pessoais:

SELECT P.nomeCompleto, P.sexo, S.nome AS nomeSetor
FROM PLANTONISTA P
INNER JOIN aloca A ON P.matricula = A.matricula
INNER JOIN SETOR S ON A.idSetor = S.idSetor
WHERE P.nomeCompleto LIKE '%ParteDoNome%'
GROUP BY P.matricula;
-- Substitua 'ParteDoNome' pela parte do nome fornecida pelo usuário.

-- 4) Apresentar todas as especialidades e quantos plantonistas têm para cada uma destas especialidades cadastradas no banco de dados, inclusive as que NÃO tiverem plantonista no momento (zero plantonista na especialidade, mas apresentar para usuário saber qual área está sem plantonista):

SELECT E.nome AS nomeEspecialidade, COUNT(P.matricula) AS numPlantonistas
FROM ESPECIALIDADE E
LEFT JOIN possui Po ON E.idEspecialidade = Po.idEspecialidade
LEFT JOIN PLANTONISTA P ON Po.matricula = P.matricula
GROUP BY E.idEspecialidade, E.nome
ORDER BY E.nome;
