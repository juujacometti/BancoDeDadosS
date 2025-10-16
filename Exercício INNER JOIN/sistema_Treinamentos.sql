USE sistema_treinamentos;

-- 1) Mostre o nome de cada aluno e o nome da turma em que ele está matriculado.
SELECT 
	alunos.nome AS Aluno,
    turmas.nome AS Turma
FROM alunos
INNER JOIN turmas ON turmas.id = alunos.turma_id;

-- 2) Liste todas as atividades realizadas, mostrando a descrição da atividade, o nome da turma, o nome da matéria e o nome do instrutor responsável.
SELECT 
	atividades.descricao,
    turmas.nome as Turma,
    materias.nome AS Materia,
    instrutores.nome AS Instrutor
FROM atividades
INNER JOIN turmas ON atividades.turma_id = turmas.id
INNER JOIN materias ON atividades.materia_id = materias.id
INNER JOIN instrutores ON atividades.instrutor_id = instrutores.id;


-- 3) Apresente os nomes dos instrutores e as matérias que cada um está habilitado a ministrar.
SELECT 
	instrutores.nome AS Instrutor,
    materias.nome AS Materia
FROM instrutores
INNER JOIN instrutor_materia ON instrutor_materia.instrutor_id = instrutores.id
INNER JOIN materias ON instrutor_materia.materia_id = materias.id;


-- 4) Exiba a descrição de cada atividade junto com o nome e a especialidade do instrutor responsável.
SELECT
	atividades.descricao,
    instrutores.nome AS Instrutor,
    instrutores.especialidade AS Especialidade
FROM atividades
INNER JOIN instrutores ON instrutores.id = atividades.instrutor_id;


-- 5)  Mostre a descrição de cada atividade, a data de início da turma, a data de término da turma e o nome da matéria correspondente.
SELECT
	atividades.descricao,
    turmas.data_inicio,
    turmas.data_fim,
    materias.nome AS Materia
FROM atividades
INNER JOIN materias ON materias.id = atividades.materia_id
INNER JOIN turmas ON turmas.id = atividades.turma_id;


-- 6) Mostre o nome de cada aluno, o nome da turma em que está, a descrição da atividade realizada por essa turma, o nome da matéria da atividade e o nome do instrutor responsável.
SELECT
	alunos.nome AS Aluno,
    turmas.nome AS Turma,
    atividades.descricao AS Atividade,
    materias.nome AS Materia,
    instrutores.nome AS Instrutor
FROM atividades
INNER JOIN turmas ON turmas.id = atividades.turma_id
INNER JOIN materias ON materias.id = atividades.materia_id
INNER JOIN instrutores ON instrutores.id = atividades.instrutor_id
INNER JOIN alunos ON alunos.turma_id = turmas.id;
