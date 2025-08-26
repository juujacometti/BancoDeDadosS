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
INSERT INTO livro VALUES
	('Sapiens: Uma Breve História da Humanidade',
    '9788535925697',
    'Yuval Noah Harari explora a trajetória da humanidade desde os primeiros Homo sapiens até a sociedade moderna, abordando evolução, cultura, religião e economia.'), 
	(),
    (),
    (),
    (),
    (),
    (),
    (),
    (),
    ();
