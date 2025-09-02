-- Criação do banco de dados
CREATE DATABASE biblioteca;
USE biblioteca;

-- Criação das tabelas
CREATE TABLE livro (
id INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255),
isbn VARCHAR(255), 
descricao TEXT
);

CREATE TABLE autor (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
data_nascimento DATE,
biografia TEXT
);

CREATE TABLE usuario (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
numero_identificacao VARCHAR(255), 
email VARCHAR(255),
data_nascimento DATE
);

CREATE TABLE nivel (
id INT AUTO_INCREMENT PRIMARY KEY,
tipo_nivel VARCHAR(255),
id_usuario INT,
FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE categoria (
id INT AUTO_INCREMENT PRIMARY KEY,
nome_categoria VARCHAR(255)
);

CREATE TABLE emprestimo (
id INT AUTO_INCREMENT PRIMARY KEY,
data_emprestimo DATE,
data_devolucao DATE,
data_devolucao_realizada DATE,
id_livro INT,
id_usuario INT,
FOREIGN KEY (id_livro) REFERENCES livro(id),
FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

CREATE TABLE livro_categoria (
id INT AUTO_INCREMENT PRIMARY KEY,
id_livro INT,
id_categoria INT, 
FOREIGN KEY (id_livro) REFERENCES livro(id),
FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE autor_livro (
id INT AUTO_INCREMENT PRIMARY KEY,
id_autor INT,
id_livro INT, 
FOREIGN KEY (id_autor) REFERENCES autor(id),
FOREIGN KEY (id_livro) REFERENCES livro(id)
);


-- Inserção de dados 
INSERT INTO livro (titulo, isbn, descricao) VALUES
	('Sapiens: Uma Breve História da Humanidade',
     '9788535925697',
     'Yuval Noah Harari explora a trajetória da humanidade desde os primeiros Homo sapiens até a sociedade moderna, abordando evolução, cultura, religião e economia.'),
     
    ('O Alquimista',
     '9788575423379',
     'Paulo Coelho narra a jornada de Santiago, um jovem pastor, em busca de seu tesouro pessoal, explorando temas de destino, sonho e autoconhecimento.'),
     
    ('1984',
     '9780451524935',
     'George Orwell apresenta uma distopia totalitária, mostrando os perigos do controle governamental absoluto, vigilância e manipulação da verdade.'),
     
    ('O Poder do Hábito',
     '9788539004119',
     'Charles Duhigg explora como hábitos moldam nossa vida pessoal e profissional e como podemos transformá-los para alcançar sucesso e bem-estar.'),
     
    ('A Revolução dos Bichos',
     '9788535915073',
     'George Orwell utiliza uma fábula sobre animais em uma fazenda para criticar regimes totalitários e discutir poder, corrupção e ideologia.'),
     
    ('Mindset: A Nova Psicologia do Sucesso',
     '9788547001767',
     'Carol S. Dweck explica a diferença entre mindset fixo e mindset de crescimento, mostrando como crenças sobre nossas habilidades impactam aprendizado e realizações.'),
     
    ('O Hobbit',
     '9788578270613',
     'J.R.R. Tolkien conta a aventura de Bilbo Bolseiro em sua jornada pelo mundo fantástico da Terra Média, repleta de perigos, tesouros e criaturas mágicas.'),
     
    ('A Arte da Guerra',
     '9788535918142',
     'Sun Tzu apresenta princípios estratégicos que vão além da guerra, aplicáveis a negócios, política e desenvolvimento pessoal.'),
     
    ('O Gene: Uma História Íntima',
     '9788535929375',
     'Siddhartha Mukherjee narra a história da genética, desde descobertas fundamentais até os impactos éticos e sociais da manipulação genética, combinando ciência e narrativa pessoal.'),
     
    ('Como Fazer Amigos e Influenciar Pessoas',
     '9788576849943',
     'Dale Carnegie oferece técnicas práticas de comunicação, relacionamento e liderança, mostrando como influenciar pessoas e construir conexões duradouras.');

INSERT INTO autor (nome, data_nascimento, biografia) VALUES
	('Yuval Noah Harari', 
	 '1976-02-24', 
	 'Historiador e professor israelense, Harari é conhecido por suas obras que exploram a história da humanidade e as possíveis direções futuras da sociedade.'),
    ('Paulo Coelho', 
	 '1947-08-24', 
	 'Escritor brasileiro, Coelho é famoso por seus romances que abordam temas espirituais e filosóficos, sendo "O Alquimista" seu livro mais conhecido.'),
    ('George Orwell', 
	 '1903-06-25', 
	 'Pseudônimo de Eric Arthur Blair, escritor britânico cujas obras, como "1984" e "A Revolução dos Bichos", criticam regimes totalitários e defendem a liberdade individual.'),
    ('Charles Duhigg', 
	 '1974-01-01', 
	 'Jornalista e autor americano, Duhigg é conhecido por seus livros que exploram o poder dos hábitos e a produtividade, como "O Poder do Hábito".'),
    ('Carol S. Dweck', 
	 '1946-10-17', 
	 'Psicóloga americana, Dweck é reconhecida por sua pesquisa sobre mentalidade e motivação, sendo autora de "Mindset: A Nova Psicologia do Sucesso".'),
    ('J.R.R. Tolkien', 
	 '1892-01-03', 
	 'Escritor e filólogo britânico, Tolkien é famoso por suas obras de fantasia, incluindo "O Hobbit" e "O Senhor dos Anéis".'),
    ('Sun Tzu', 
	 '0544-01-01', 
	 'Estratégista militar e filósofo chinês, autor de "A Arte da Guerra", um tratado sobre táticas e estratégias militares.'),
    ('Siddhartha Mukherjee', 
	 '1970-07-21', 
	 'Médico e escritor indiano-americano, Mukherjee é conhecido por suas obras que abordam a biografia do câncer e a biologia celular.'),
    ('Dale Carnegie', 
	 '1888-11-24', 
	 'Autor e palestrante americano, Carnegie é famoso por seus livros sobre desenvolvimento pessoal e habilidades interpessoais, como "Como Fazer Amigos e Influenciar Pessoas".'),
    ('Leonard Mlodinow', 
	 '1954-03-26', 
	 'Físico e escritor americano, Mlodinow é conhecido por seus livros de divulgação científica, explorando temas como acaso, probabilidade e a ciência do cotidiano, como em "O Andar do Bêbado".')

INSERT INTO usuario (numero_identificacao, email, data_cadastro) VALUES
    ('U0001',
     'andre.dantas@email.com',
     '2024-01-28'),
    ('U0002',
     'enzo.previtale@email.com',
     '2024-01-30'),
	('U0003',
	 'antonio.souza@email.com',
	 '2024-02-05'),
    ('U0004',
	 'leticia.roth@email.com',
	 '2024-02-12'),
    ('U0005',
	 'layslla.oretti@email.com',
	 '2024-02-30'),
    ('U0006',
	 'yasmin.novais@email.com',
	 '2024-03-18'),
    ('U0007',
	 'julya.jacometti@email.com',
	 '2024-03-25'),
    ('U0008',
	 'emilly.gabrielly@email.com',
	 '2024-04-09'),
    ('U0009',
	 'ana.clara@email.com',
	 '2024-04-14'),
    ('U0010',
	 'leonardo.oliveira@email.com',
	 '2025-5-20');
	
INSERT INTO nivel_usuario (nivel, id_usuario) VALUES
    ('Administrador', 1),
    ('Padrão', 2),
    ('Administrador', 3),
    ('Padrão', 4),
    ('Padrão', 5),
    ('Padrão', 6),
    ('Padrão', 7),
    ('Padrão', 8),
    ('Padrão', 9),
    ('Padrão', 10);

INSERT INTO categoria (nome) VALUES
    ('Ação'),
    ('Aventura'),
    ('Comédia'),
    ('Drama'),
    ('Ficção Científica'),
    ('Fantasia'),
    ('Terror'),
    ('Romance'),
    ('Mistério'),
    ('Suspense');
    
INSERT INTO emprestimo (data_emprestimo, data_devolucao, data_devolucao_realizada, id_livro, id_usuario) VALUES
	('2024-06-23',
	 '2024-07-02',
	 '2024-07-04', 
     2, 3),
	('2024-07-25',
	 '2024-07-04',
	 '2024-07-01', 
     1, 2),
	('2024-08-20',
	 '2024-08-30',
	 '2024-08-31', 
     3, 4),
	('2024-08-30',
	 '2024-09-02',
	 '2024-09-01', 
     5, 1),
	('2024-09-20',
	 '2024-09-30',
	 '2024-09-31', 
     4, 7),
	('2024-10-10',
	 '2024-10-20',
	 '2024-10-13', 
     8, 6),
	('2024-10-10',
	 '2024-10-20',
	 '2024-10-25', 
     7, 5),
	('2024-11-03',
	 '2024-11-13',
	 '2024-11-13', 
     6, 9),
	('2024-11-08',
	 '2024-11-18',
	 '2024-11-17', 
     10, 10),
	('2024-12-21',
	 '2024-12-31',
	 '2025-01-05', 
     9, 8);
     
INSERT INTO livro_categoria (id_livro, id_categoria) VALUES
    (1, 2),
    (2, 1),
    (3, 4),
    (4, 3),
    (5, 6),
    (6, 5),
    (7, 8),
    (8, 7),
    (9, 10),
    (10, 9);
    
INSERT INTO autor_livro (id_livro, id_autor) VALUES
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 4),
    (5, 8),
    (6, 10),
    (7, 1),
    (8, 5),
    (9, 6),
    (10, 9);
    
-- Visualizar os dados que estão dentro de cada tabela
SELECT * FROM livro;
SELECT * FROM autor;
SELECT * FROM usuario;
SELECT * FROM nivel_usuario;
SELECT * FROM categoria;
SELECT * FROM emprestimo;
SELECT * FROM livro_categoria;
SELECT * FROM autor_livro;

-- Para visualizar as tabelas
SHOW tables;

-- Ver os campos de uma tabela especifica
DESCRIBE livro;

-- Apagar tabela
-- DROP DATABASE Biblioteca_Julya;
