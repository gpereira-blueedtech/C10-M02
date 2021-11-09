CREATE TABLE pessoas (
    id INT NOT NULL GENERATED ALWAYS AS IDENTITY, 
	nome VARCHAR NOT NULL, 
	sobrenome VARCHAR NOT NULL,
    idade INT NULL
);

INSERT INTO pessoas (nome, sobrenome, idade) VALUES 
('Bruno','Dutra',20),
('Joyce', 'Prado', 20),
('Daniela','Farias',18),
('Marcos','Domingues',30);

SELECT * FROM pessoas;
SELECT nome FROM pessoas;
SELECT nome, idade FROM pessoas WHERE idade <= 18;
SELECT * FROM pessoas WHERE nome = 'Marcos';
SELECT * FROM pessoas WHERE nome LIKE '%B%'; -- Case sensitive (diferencia maiusc e min.)
SELECT * FROM pessoas WHERE nome ILIKE '%B%'; -- Case insensitive (não diferencia)

SELECT * FROM pessoas WHERE nome ILIKE '%o'; -- Terminados em O
SELECT * FROM pessoas WHERE nome ILIKE 'B%'; -- Começados em B

SELECT * FROM pessoas WHERE nome ILIKE '%o%' OR idade <= 20; -- Duas (ou mais) condições, em que PELO MENOS UMA deve ser verdadeira
SELECT * FROM pessoas WHERE nome ILIKE '%o%' AND idade <= 20; -- Duas (ou mais) condições, em que TODAS ELAS devem ser verdadeiras




ALTER TABLE pessoas 
ADD COLUMN cidade VARCHAR;

SELECT * FROM pessoas ORDER by id;

UPDATE pessoas
SET idade = 16 WHERE id = 1

UPDATE pessoas
SET idade = 18 WHERE id = 2 OR id = 5;

UPDATE pessoas
SET cidade = 'Londrina';


DELETE FROM pessoas
WHERE id = 11

