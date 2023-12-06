CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
acidentavel BOOLEAN NOT NULL,
descricao VARCHAR(50) NOT NULL
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
material VARCHAR(50) not null,
quantidade BIGINT NOT NULL,
preco DECIMAL(6,2) NOT NULL,
categoria_id BIGINT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias( acidentavel, descricao)
VALUES(true, "Ferramenta");
INSERT INTO tb_categorias( Acidentavel, descricao)
VALUES(true, "Jardinagem");
INSERT INTO tb_categorias( Acidentavel, descricao)
VALUES(true, "Utensílios");
INSERT INTO tb_categorias( Acidentavel, descricao)
VALUES(true, "Acabamento");
INSERT INTO tb_categorias( Acidentavel, descricao)
VALUES(true, "Lubrificante");

INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Martelo", "Ferro", 20, 180.00, 1);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Serrote", "Aço", 10, 230.00, 1);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Chave alien", "Metal",50, 20.00, 3);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Graxa", "Óleo", 200, 50.00, 5);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Alicate", "Aço", 50, 120.00, 1);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Chave fillps", "aço", 45, 50.00, 3);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Tinta", "Quimica", 25, 250.00, 4);
INSERT INTO tb_produtos( nome, material, quantidade, preco, categoria_id)
VALUES("Adubo", "Terra", 35, 30.00, 2);


SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, material, quantidade, preco, tb_categorias.acidentavel, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT nome, material, quantidade, preco, tb_categorias.acidentavel, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.descricao LIKE "%c%";
