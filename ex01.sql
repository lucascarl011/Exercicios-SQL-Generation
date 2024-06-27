create database db_empresa;

use db_empresa;

create table tb_funcionarios (
    id bigint auto_increment primary key,
    nome varchar(100),
    cargo varchar(50),
    salario decimal(10, 2),
    data_admissao date,
    setor varchar(50)
);

insert into tb_funcionarios (nome, cargo, salario, data_admissao, setor)
values
    ('Lucas Carlos', 'Assistente', 3500.00, '2024-05-10', 'TI'),
    ('Diogo Higot', 'Gerente', 7000.00, '2020-02-15', 'TI'),
    ('Ronaldinho', 'Coordenadora', 5000.00, '2021-08-22', 'RH'),
    ('Neymar', 'Desenvolvedor', 3500.00, '2018-11-03', 'TI'),
    ('Zagalo', 'Recepcionista', 1900.00, '2017-03-12', 'RH');

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario < 2000;

UPDATE tb_funcionarios SET salario = 6200.00 WHERE nome = 'Ronaldinho';

SELECT * FROM tb_funcionarios;