-- Adicionando uma nova PRIMARY KEY em uma tabela que já existe
ALTER TABLE pessoas
ADD PRIMARY KEY (id);

-- Criando uma nova tabela já com uma PRIMARY KEY definida
CREATE TABLE stacks(
	id_stack INT NOT NULL GENERATED ALWAYS AS IDENTITY,
	nome_stack VARCHAR NOT NULL,
	carga_semanal INT NOT NULL,
	professor VARCHAR NOT NULL,
	PRIMARY KEY(id_stack)
)


-- Adicionando uma nova coluna em uma tabela que já existe
-- Definindo a FOREIGN KEY (esse é o valor que vai fazer a ligação com a outra tabela)
ALTER TABLE pessoas
ADD COLUMN id_stack INT,
ADD FOREIGN KEY (id_stack) REFERENCES stacks(id_stack);

-- JOIN - Trazendo informações de duas tabelas diferentes ao mesmo tempo.
-- A tabela referenciada primeiro será tratada como LEFT, e a segunda como RIGHT
-- Depois defino qual a coluna que está fazendo a ligação em cada tabela (tabela1.FK = tabela2.PK)
SELECT * FROM pessoas
JOIN stacks ON pessoas.id_stack = stacks.id_stack;


-- INNER JOIN - Vai buscar apenas os registros que estão referenciados nas DUAS tabelas referidas
-- Ou seja, apenas as pessoas que tem uma informação de id_stack
SELECT * FROM pessoas
INNER JOIN stacks ON pessoas.id_stack = stacks.id_stack;



-- LEFT JOIN - Vai buscar TODOS os registros da tabela da esquerda (a primeira a ser chamada), 
-- e na segunda, apenas aqueles que tem uma referência na primeira
-- Ou seja, vai trazer apenas as stacks que foram listadas por algum aluno
-- A stack que não foi listada por ninguém não aparece
SELECT * FROM pessoas
LEFT JOIN stacks ON pessoas.id_stack = stacks.id_stack;

-- RIGHT JOIN - Vai buscar TODOS os registros da tabela da DIREITA (a segunda a ser chamada), 
-- e na primeira, apenas aqueles que tem uma referência na segunda
-- Ou seja, vai trazer apenas as pessoas que tem alguma stack listada
-- As pessoas que não tem uma stack definida não aparecerão
SELECT * FROM pessoas
RIGHT JOIN stacks ON pessoas.id_stack = stacks.id_stack;


-- Usando "apelidos" para as tabelas
SELECT * FROM pessoas pe
INNER JOIN stacks s ON pe.id_stack = s.id_stack;


SELECT * FROM pessoas;
SELECT * FROM stacks;