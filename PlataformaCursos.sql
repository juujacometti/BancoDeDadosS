-- Criação do banco de dados
CREATE DATABASE plataforma_curso;
USE plataforma_curso; 

-- Criação das tabelas3
-- Sem FK
CREATE TABLE modulo (
	id INT AUTO_INCREMENT PRIMARY KEY,
    ordem INT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT NOT NULL
);

CREATE TABLE professor (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE plano (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    beneficio TEXT NOT NULL
);

-- Com FK
CREATE TABLE curso (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_modulo INT,
	FOREIGN KEY (id_modulo) REFERENCES modulo(id)
);

CREATE TABLE curso_professor (
	id INT AUTO_INCREMENT PRIMARY KEY,
    papel_professor ENUM ("titular", "tutor") NOT NULL,
	id_professor INT,
    id_curso INT,
    FOREIGN KEY (id_professor) REFERENCES professor(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);

CREATE TABLE aluno (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_plano INT,
    FOREIGN KEY (id_plano) REFERENCES plano(id)
);

CREATE TABLE perfil (
	id INT AUTO_INCREMENT PRIMARY KEY,
    foto BLOB NULL,
    biografia TEXT NULL,
    data_nascimento DATE NOT NULL,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id)
);

CREATE TABLE inscricao (
	id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    situacao ENUM ("ativa", "concluida", "trancada") NOT NULL,
    id_aluno INT,
    id_curso INT,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id)
);


-- Inserção de dados 
INSERT INTO modulo (ordem, nome, carga_horaria) VALUES
    (2, "Banco de dados", 600),
    (3, "Python", 660),
    (1, "Java", 360);

INSERT INTO professor (nome) VALUES
	("Yasmin"),
    ("Letícia"),
    ("Layslla");
    
INSERT INTO plano (nome, beneficio) VALUES
	("Básico", "Acesso a 5 diferentes tipos de cursos por mês."),
    ("Avançado", "Acesso a 15 diferentes tipos de cursos por mês."),
    ("Premium", "Acesso a todos os cursos da plataforma.");
    
INSERT INTO curso (nome, id_modulo) VALUES
	("Análise e desenvolvimento de sistemas", 2),
    ("Mecatrônica", 1),
    ("Manufatura digital", 3);
      
INSERT INTO curso_professor (papel_professor, id_professor, id_curso) VALUES
	("titular", 1, 1),
    ("tutor", 2, 1),
    ("tutor", 1, 2);
    
INSERT INTO aluno (nome, id_plano) VALUES
	("André", 1),
    ("Enzo", 2),
    ("Antonio", 3);
    
INSERT INTO perfil (foto, biografia, data_nascimento, id_aluno) VALUES
	("andre.jpg", "Gosto de cocoricó", "2005-07-17", 1),
    ("enzo.jpg", "Sou da galera", "2008-03-15", 2),
    ("antonio.jpg", "Amo filmes de romance (ou quase)", "2008-12-11", 3);
    
INSERT INTO inscricao (data, situacao, id_aluno, id_curso) VALUES
	("2025-03-11", "ativa", 1, 1),
    ("2025-04-12", "trancada", 2, 2),
    ("2025-05-15", "concluida", 3, 3);


-- Visualizar os dados que estão dentro de cada tabela	
SELECT * FROM modulo;
SELECT * FROM professor;
SELECT * FROM plano;
SELECT * FROM curso;
SELECT * FROM curso_professor;
SELECT * FROM aluno;
SELECT * FROM perfil;
SELECT * FROM inscricao;


-- Para visualizar as tabelas
SHOW tables;


-- Ver os campos de uma tabela especifica
DESCRIBE professor;


-- Apagar tabela
-- DROP DATABASE plataforma_curso;
