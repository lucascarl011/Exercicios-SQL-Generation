CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
nota DECIMAL(10,2),
ano INT,
professor VARCHAR(100)
);

INSERT INTO tb_alunos(nome, nota, ano, professor)
values
('Bebeto', 8.0, 2, 'Zagalo'),
('Ronaldinho Gaúcho', 5.0, 1, 'Felipão'),
('Ronaldo Fenomeno', 6.0, 3, 'Dunga'),
('Yuri Albrto', 7.0, 4, 'Antônio Oliveira'),
('Endrick', 9.0, 3, 'Abel'),
('Neymar JR', 4.0, 4, 'Dorival JR'),
('Vini JR', 6.0, 1, 'Carlo Ancelloti'),
('Wesley', 8.0, 3, 'Varderlei Luxemburgo');

SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 9.5 WHERE nome = 'Neymar JR';

SELECT * FROM tb_alunos;