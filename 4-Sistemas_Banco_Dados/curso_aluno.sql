-- Active: 1787178353284@@127.0.0.1@5432@bd_aula@public
CREATE TABLE curso(
    id_curso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE aluno(
    id_aluno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    aluno VARCHAR(80) NOT NULL,
    id_curso INTEGER NOT NULL REFERENCES curso(id_curso)
);



SELECT * FROM curso;

SELECT * FROM aluno;

INSERT INTO curso (nome) VALUES
('Sistemas de Informacao'),
('Administracao'),
('Direito'),
('Ciencia da Computacao');


INSERT INTO aluno (nome, id_curso) VALUES
('Fred Abdias', 1),
('Enzo Amancio', 1),
('Lucas Antonio', 2),
('Christian', 3),
('Ana Cecilia Faria', 1);


SELECT
    id_aluno AS id,
    aluno AS nome,
    id_curso
FROM
    aluno a
ORDER BY
    nome ASC;

ALTER TABLE aluno
RENAME COLUMN  aluno TO nome;

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
ORDER BY
    id_curso = 1;    

    