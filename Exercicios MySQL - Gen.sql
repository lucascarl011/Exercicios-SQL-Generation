CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT auto_increment primary key,
produto varchar(100),
descricao varchar(300),
preco decimal(10,2),
categoria varchar(100)
);

INSERT INTO tb_produtos (produto, descricao, preco, categoria)
VALUES
	("Nike - Air Force 1", "A junção do esporte e o casual", 780.00, "Sneakers"),
    ("Adidas - SuperStar Retrô", "O sucesso dos anos 1980 está de volta", 650.00, "Sneakers"),
    ("Lacoste - Camisa Polo", "A elegânia e conforto ao seu alcance", 340.00, "Casual"),
    ("Lacoste - Tênis Europa", "A aposta certa para todos os momentos", 299.00, "Casual"),
    ("Nike - Agasalho Sportswear", "Clássico que não sai de moda", 280.00, "Esportivo"),
    ("Mizuno - Prophecy 13", "O conforto jamais visto antes", 1708.00, "Esportivo"),
    ("Tesla - Coil Malbeck", "O conforto ao andar de SkateBoard", 420.00, "SkateBoard"),
    ("Alexander Mcqueen - Oversized", "Estilo para todas ocasiões", 480.00, "Casual");
    
    SELECT * FROM tb_produtos where preco > 500;
    
    SELECT * FROM tb_produtos where preco < 500;
    
    UPDATE tb_produtos SET preco = 320.00 WHERE produto = "Alexander Mcqueen - Oversized";
    
    SELECT * FROM tb_produtos;
    
    
  
    
    