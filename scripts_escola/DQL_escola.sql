--APAGAR UM REGISTRO PELO SEU IDENTIFICADOR
DELETE FROM tb_aluno
WHERE nome = 'Matheus'

--ATUALIZAR UM REGISTRO PELO SEU IDENTIFICADOR
UPDATE tb_aluno
SET nome = '25049123070', cpf = 'Leandro'
WHERE id = 1;

--Listar os 3 primeiros alunos
SELECT TOP 3 matricula FROM tb_aluno

----Listar os nome dos 3 primeiros alunos que foram recem cadastrado
SELECT matricula
FROM tb_aluno
ORDER BY nome ASC;

--Listar os id dos 3 primeiros alunos que foram recem cadastrado
SELECT TOP 1 matricula 
FROM tb_aluno
ORDER BY id DESC

-- todos os alunos que tem o nome 
SELECT nome, cpf 
FROM tb_aluno
WHERE nome = 'Nathan';

--lista o nome da escola Torloni
SELECT nome
FROM tb_escola;

--Mostre as turmas que tem o nome SEDUC
SELECT TOP 3 nome_turma
FROM tb_turma
WHERE nome_turma = '2S SEDUC';

--Exiba somente 2 aluno em ordem do mais recente para o menos recente
SELECT  top 2 *
FROM tb_aluno
ORDER BY id DESC;

--Mostre quantos alunos existes na base
SELECT COUNT(cpf) AS atd_alunos FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novos FROM tb_aluno;

--Mostre os alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais novo em uma unica consulta
SELECT MAX(data_nasc) AS idade_mais_novos,  MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

SELECT TOP 1 nome, data_nasc  --selecionamos o primeiro registro da tebela aluno
FROM tb_aluno
ORDER BY data_nasc --ordenamos ele por data de nascimento 

--Exibe a media aritmédica de notas nas provas
SELECT AVG(nota) AS media_nota FROM tb_prova;

--Exiba a soma dos id de turma
SELECT SUM(id) FROM tb_aluno;

SELECT * FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novos, nome, data_nasc
FROM tb_aluno
GROUP BY nome, data_nasc
ORDER BY data_nasc DESC;

--Exibir quantas turmas tem no periodo da tarde
SELECT COUNT(periodo)
FROM tb_turma
WHERE periodo = 'Tarde';