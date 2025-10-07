USE biblioteca;

-- Liste o titulo e a descrição do livro, mas somente do livro com id = 3
SELECT titulo, descricao FROM livro
WHERE id = 3;

-- Insert de novo gênero dentro de Categoria
INSERT INTO categoria(nome_categoria)
VALUES
	('Técnico');

SELECT * FROM categoria;

-- Alter table da tabela Livro
ALTER TABLE livro
ADD COLUMN edicao VARCHAR(150),
ADD COLUMN data_publicacao DATE;

SELECT * FROM livro;

-- Cadastre um novo livro chamado "Python“, do autor "Eric Matthes", publicado em 24/04/2023, do gênero (categoria) “técnico”, isbn-13: 1718502702, 3ª edição.
INSERT INTO livro (titulo, isbn, descricao, edicao, data_publicacao)
VALUES
	(
		'Python',
        '1718502702',
        'Livro sobre programação em Python - inciante ao avançado',
        '3° Edição',
        '2023-04-24'
    );

SELECT * FROM livro;
    
-- insert da tabela Autor
INSERT INTO autor (nome, data_nascimento, biografia)
VALUES 
	(
		'Eric Matthes',
        '1973-08-26',
        'Um grande autor'
    );

SELECT * FROM Autor;

-- insert na tabela livro_categoria
INSERT INTO livro_categoria (id_livro, id_categoria)
VALUES
	(11,11);

SELECT * FROM livro_categoria;

-- Atualize o email do usuário id = 1 para teste@email.com.
UPDATE usuario
SET email = 'teste@email.com'
WHERE id = 1;

SELECT * FROM usuario;

-- Corrija o título do livro "Python" para " Curso Intensivo de Python: uma Introdução Prática e Baseada em Projetos à Programação ".
UPDATE livro
SET titulo = 'Curso Intensivo de Python: uma Introdução Prática e Baseada em Projetos à Programação'
WHERE id  = 11;

SELECT * FROM livro;

-- Marque todos os livros publicados antes de 2000 como status = inativo. Se não houver nenhum, adicione 1 livro publicado antes de 2000. (Seu banco está pronto para aceitar o campo status?)
ALTER TABLE livro
ADD COLUMN status ENUM('Ativo', 'Inativo') NOT NULL;

SELECT * FROM livro;

-- insert na tabela Livro
INSERT INTO livro  (titulo, isbn, descricao, edicao, data_publicacao)
VALUES
	(
		'JavaScript',
        '9781565749825',
        'Guia abrangente sobre a linguagem JavaScript.',
        '3° Edição',
        '1982-12-20'
    );

UPDATE livro
SET status = 'Inativo'
WHERE (data_publicacao) < '2000-01-01';
SELECT * FROM Livro;

-- Delete o livro com id = 2.
DELETE FROM autor_livro
WHERE id_livro = 2;

DELETE FROM livro_categoria
WHERE id_livro = 2;

DELETE FROM emprestimo
WHERE id_livro = 2;

DELETE FROM livro
WHERE id = 2;


-- Remova o usuário cujo nome é "Teste Testador". Se não houver, cadastre.
-- Insert 
INSERT INTO usuario (nome, numero_identificacao, email, data_nascimento)
VALUES 
	('Teste Testador', '123456', 'testetestador@email.com','1980-10-23');

SELECT * FROM usuario;

-- Delete
DELETE FROM usuario
WHERE nome = 'Teste Testador';

-- Delete 1 empréstimo realizados no ano de 2020.    
-- Insert
insert into emprestimo (data_emprestimo, data_devolucao, data_devolucao_realizada, id_livro, id_usuario)
values
	('2020-08-15', '2020-08-30', '2020-08-28', 1, 1);

SELECT * FROM emprestimo;

-- Delete
DELETE FROM emprestimo
WHERE data_emprestimo = '2020-08-15';
    

-- Desativar o bloqueio em usar 'update' e 'delete' dentro do banco 
SET SQL_SAFE_UPDATES = 0;