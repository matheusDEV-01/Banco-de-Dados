--Usar um banco já criado
USE db_escola_T;

--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO  tb_escola(nome, endereco)
VALUES('Torloni', 'Estrada das lágrimas, 579 - São José');

SELECT * FROM tb_escola;

--REGISTRO DA TABELA TURMA
INSERT INTO tb_turma(serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Tarde', 16, '2S SEDUC'), 
(2, 'Manhã', 16, '2S SEDUC'),
(2, 'Noite', 16, '2S SEDUC');

SELECT * FROM tb_turma;

-- REGISTRO DA TABELA PROVA
INSERT INTO tb_prova(nome_Professor, materia, duracao, nota, data_prova)
VALUES
('Ana Claudia', 'Educação Fisica', '13:15:00', 0, '2025-09-25'),
('Ana Claudia', 'Educação Fisica', '17:34:10', 7, '2025-08-29'),
('Adair', 'Matemática', '14:25:00', 8.5, '2025-09-26');

SELECT * FROM tb_prova;

--REGISTRO DA TABELA ALUNO

INSERT INTO tb_aluno (nome, cpf, matricula, data_nasc, id_escola)
VALUES
('Matheus Felix', '84192607034', '199345987', '2000-09-25', 1 );


INSERT INTO tb_aluno (nome, cpf, matricula, data_nasc, id_escola)
VALUES
('Leandro', '25049123070', 'mat157', '2006-06-18', 1 ),
('Nathan', '67974174064', 'nat189', '2008-04-17', 1 ),
('Renan', '80808133020', 'Ren147', '2010-03-13', 1 ),
('Joaquim', '23129323007', 'Joa198', '1890-09-09', 1 ),
('Roberto', '28653013466', 'rober4534', '1999-10-23', 1 );


