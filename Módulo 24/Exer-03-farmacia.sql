CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(20) NOT NULL,
generico BOOLEAN NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
dtValidade DATE NOT NULL,
quantidade BIGINT NOT NULL,
preco DECIMAL(6,2) NOT NULL,
receita BOOLEAN NOT NULL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(descricao, generico) 
VALUES ("Analgésico", true);
INSERT INTO tb_categorias(descricao, generico) 
VALUES ("Anti-hipertensivo", true);
INSERT INTO tb_categorias(descricao, generico) 
VALUES ("Anti-psicótico", false);
INSERT INTO tb_categorias(descricao, generico) 
VALUES ("Anti-inflamatório", true);
INSERT INTO tb_categorias(descricao, generico) 
VALUES ("Antibiótico", false);

UPDATE tb_produtos SET receita = false WHERE id = 1;

INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Dipirona", '2025-01-01', 35.00, 30, true, 1);
INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Losartana", '2026-02-02', 20.00, 20, false, 2);
INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Flamavet", '2027-03-03', 55.00, 40, true, 4);
INSERT INTO tb_produtos(nome, dtValidade, preco,  quantidade, receita, categoria_id)
VALUES("Ibuprofeno", '2024-04-04', 45.00, 35, false, 4);
INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Penicilinas", '2025-05-05', 150.00, 60, true, 5);
INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Respiridona", '2025-06-06', 86.00, 100, true, 3);
INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Amoxicilina", '2026-07-07', 25.00, 90, false, 5);
INSERT INTO tb_produtos(nome, dtValidade, preco, quantidade, receita, categoria_id)
VALUES("Paracetamol", '2025-08-08', 80.00, 55, false, 1);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 50.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, dtValidade, quantidade, preco, receita, tb_categorias.generico, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, dtValidade, quantidade, preco, receita, tb_categorias.generico, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.generico = true;

