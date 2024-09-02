-- Criação do Banco de Dados
DROP DATABASE IF EXISTS  Escola;
SET SQL_SAFE_UPDATES = 0;
CREATE DATABASE Escola;
USE Escola;

-- Criação das Tabelas
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    endereco VARCHAR(255)
);

CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100),
    descricao TEXT
);

CREATE TABLE Notas (
    id_nota INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    nota DECIMAL(5, 2),
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Inserção de Dados
INSERT INTO Alunos (nome, data_nascimento, endereco) VALUES
('João Silva', '2000-05-15', 'Rua A, 123'),
('Maria Souza', '1999-08-20', 'Rua B, 456'),
('Carlos Pereira', '2001-11-30', 'Rua C, 789');

INSERT INTO Cursos (nome_curso, descricao) VALUES
('Matemática', 'Curso de Matemática Básica'),
('História', 'Curso de História do Brasil'),
('Programação', 'Introdução à Programação em Python');

INSERT INTO Notas (id_aluno, id_curso, nota) VALUES
(1, 1, 7.5),
(1, 2, 8.0),
(2, 1, 9.0),
(2, 3, 6.5),
(3, 2, 7.0);

-- Consultas
-- Listar todos os alunos com suas notas e cursos
SELECT Alunos.nome, Cursos.nome_curso, Notas.nota
FROM Notas
JOIN Alunos ON Notas.id_aluno = Alunos.id_aluno
JOIN Cursos ON Notas.id_curso = Cursos.id_curso;

-- Calcular a média das notas para cada curso
SELECT Cursos.nome_curso, AVG(Notas.nota) AS media
FROM Notas
JOIN Cursos ON Notas.id_curso = Cursos.id_curso
GROUP BY Cursos.nome_curso;

-- Encontrar o aluno com a maior nota em cada curso
SELECT Cursos.nome_curso, Alunos.nome, Notas.nota
FROM Notas
JOIN Alunos ON Notas.id_aluno = Alunos.id_aluno
JOIN Cursos ON Notas.id_curso = Cursos.id_curso
WHERE Notas.nota = (
    SELECT MAX(n.nota)
    FROM Notas n
    WHERE n.id_curso = Cursos.id_curso
);

-- Atualização de Dados
-- Atualizar a nota de um aluno em um curso específico
UPDATE Notas
SET nota = 8.5
WHERE id_aluno = 1 AND id_curso = 1;

-- Modificar o endereço de um aluno
UPDATE Alunos
SET endereco = 'Rua D, 1010'
WHERE id_aluno = 2;

-- Exclusão de Dados
-- Excluir um aluno e todas as suas notas
DELETE FROM Notas WHERE id_aluno = 3;
DELETE FROM Alunos WHERE id_aluno = 3;

-- Remover um curso e todas as suas notas associadas
DELETE FROM Notas WHERE id_curso = 3;
DELETE FROM Cursos WHERE id_curso = 3;
