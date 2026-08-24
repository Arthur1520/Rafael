-- Active: 1787270470196@@127.0.0.1@5432@bd_aula@public
CREATE TABLE curso(
    id_curso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE aluno(
    id_aluno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    id_curso INTEGER NOT NULL REFERENCES curso(id_curso)
);

DROP TABLE aluno;

DROP TABLE curso;

SELECT * FROM curso;

SELECT * FROM aluno;

INSERT INTO curso (nome) VALUES
('Sistemas de Informacao'),
('Administracao'),
('Direito'),
('Ciencia da Computacao');


INSERT INTO aluno (nome, id_curso) VALUES
('Ana Beatriz Souza', 1),
('Carlos Henrique Lima', 1),
('Daniela Martins', 2),
('Eduardo Pereira', 3),
('Fernanda Rocha', 1);


SELECT
    id_aluno AS id,
    nome AS alunos,
    id_curso
FROM
    aluno 
ORDER BY
    nome ASC;


SELECT
    id_curso AS id,
    nome AS cursos
FROM
    curso
ORDER BY
    nome;


SELECT
    nome,
    id_curso
FROM
    aluno
WHERE
    id_curso = 1;

SELECT
    c.nome AS curso,
    c.id_curso
FROM
    curso c
WHERE
    c.nome = 'Sistema de Informacao';


FROM
   aluno a 
   JOIN
   curso c
   ON