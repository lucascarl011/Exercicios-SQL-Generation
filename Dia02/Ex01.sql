SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS db_game ;
USE db_game ;
CREATE TABLE IF NOT EXISTS db_game.tb_classe (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS db_game.tb_personagem (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  level INT NOT NULL,
  ataque DECIMAL(6,2) NOT NULL,
  defesa DECIMAL(6,2) NOT NULL,
  velocidade DECIMAL(6,2) NOT NULL,
  classe_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  INDEX fk_tb_personagem_tb_classe_idx (classe_id ASC),
  CONSTRAINT fk_tb_personagem_tb_classe
    FOREIGN KEY (classe_id)
    REFERENCES db_game.tb_classe (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO tb_classe(nome, descricao)
VALUES
    ("Mago", "Classe para quem gosta de usar muita magia"),
    ("Guerreiro", "Classe para combate físico"),
    ("Arqueiro", "Classe para lutar a distância"),
    ("Sacerdote", "Classe para dar suporte a equipe"),
    ("Bardo", "Classe para buffar a equipe");

SELECT * FROM tb_classe;
SELECT * FROM tb_personagem;

INSERT INTO tb_personagem(nome, level, ataque, defesa, velocidade, classe_id)
VALUES
    ("Yuri Alberto", 100, 4500, 2000, 4800, 1),
    ("Neymar", 98, 4950, 3500, 4900, 2),
    ("Ronaldinho", 100, 5000, 4750, 4995, 3),
    ("Pelé", 100, 5000, 4700, 5000, 4),
    ("Vini Jr", 88, 4500, 2700, 4600, 5),
    ("Wesley", 78, 1500, 1300, 3500, 1),
    ("Endrick", 88, 4200, 3050, 2000, 2),
    ("Phillipe", 89, 1800, 3200, 4500, 3);
    
    SELECT * FROM tb_personagem WHERE ataque > 2000;

	SELECT * FROM tb_personagem WHERE defesa > 3000 AND defesa < 4000;

	SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

	SELECT * FROM tb_personagem
	INNER JOIN tb_classe
	ON tb_personagem.classe_id = tb_classe.id;

	SELECT * FROM tb_personagem
	INNER JOIN tb_classe
	ON tb_personagem.classe_id = tb_classe.id
	WHERE tb_classe.nome = "Mago";
    

