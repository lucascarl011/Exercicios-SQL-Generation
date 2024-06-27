create database db_ecommerce;

use db_ecommerce;

create table tb_produtos (
    id int auto_increment primary key,
    nome_produto varchar(100),
    descricao varchar(250),
    preco decimal(10, 2),
    categoria varchar(100)
);

insert into tb_produtos (nome_produto, descricao, preco, categoria)
values
    ('Lacoste - Camisa Polo', 'Elegância ao seu dispor', 250.00, 'Casual'),
    ('Nike - Air Force 1', 'Esportivo e casual ao seu alcance', 780.00, 'Sneakers'),
    ('Adidas - SuperStar', 'O clássico de 1980 que não sai de moda', 600.00, 'Sneakers'),
    ('Ralph Lauren - Boné', 'O seu protetor de sol favorito', 120.00, 'Acessórios Casuais'),
    ('Tommy Hilfiger - Bolsa', 'O conforto o luxo e espaço necessário pro seu dia', 7000.00, 'Acessório de luxo'),
    ('Rebook - Tênis Sport', 'Você tem o conforto nos pés aqui', 170.00, 'Esportivo'),
    ('Kenner - Chinelo Kenner', 'Estilo e maciez ao seu dispor', 75.00, 'Conforto'),
    ('Havaianas - Chinelo', 'O mais usado pelos surfistas e eplos brasileiros', 35.90, 'Vestuario');

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

UPDATE tb_produtos SET preco = 45.90 WHERE nome_produto = 'Havaianas - Chinelo';

SELECT * FROM tb_produtos;