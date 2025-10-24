-- Resolução exercícios - Filtros
-- 1) Liste os títulos e categorias dos livros do gênero Mistério, ordenados por título em ordem alfabética
SELECT Livro.titulo, Categoria.nome
FROM LivroCategoria
INNER JOIN Livro ON Livro.id = LivroCategoria.livro_id
INNER JOIN Categoria ON Categoria.id = LivroCategoria.categoria_id
WHERE Categoria.nome = "Mistério"
ORDER BY Livro.titulo ASC;

-- 2) Mostre o título e o ISBN dos livros que começam com a letra "O".

-- 3) Liste os nomes e níveis de associação dos usuários cadastrados após 01/06/2023.

-- 4) Mostre o nome dos autores cuja data de nascimento está ausente.

-- 5) Exiba os títulos e descrições dos livros que possuem descrição preenchida.

-- 6) Liste os usuários regulares ou premium (usando IN) e mostre apenas nome e data de cadastro.

-- 7) Mostre os livros com ID entre 3 e 6, inclusive.

-- 8) Liste o nome e email dos usuários cujo nome não começa com “M”.

-- 9) Exiba os títulos dos livros emprestados que ainda não foram devolvidos.

-- 10) Mostre os 5 primeiros livros cadastrados (considerando o ID como ordem de cadastro).

-- 11) Mostre os 5 livros seguintes após pular os 3 primeiros.

-- 12) Mostre os títulos de livros cujo nome tenha exatamente 5 letras antes de "rry".

-- 13) Liste os usuários premium cadastrados depois de julho de 2023.

-- 14) Liste os títulos de livros da categoria Ficção ou Mistério, que tenham descrição preenchida.

/* 15) Liste os títulos, nomes dos autores e categorias dos livros emprestados entre janeiro e fevereiro de 
2024, cujo título começa com a letra “O”, que possuam descrição preenchida, e sejam de uma das 
categorias 'Mistério', 'Ficção' ou 'Fantasia'. Mostre apenas os livros escritos por autores cujo nome 
contém a letra “a”. Ordene o resultado por título. */