CREATE DATABASE db_parafutrecos;
USE db_parafutrecos;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
material VARCHAR(20) NOT NULL,
utilidade VARCHAR(20) NOT  NULL,
quantidade BIGINT NOT NULL,
preco DECIMAL(6,2) NOT  NULL,
PRIMARY KEY(id)
);

INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("enxada", "ferro", "carpir", 10, 150.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("pá", "ferro", "coletar", 20, 100.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("martelo", "ferro", "martelar", 30, 90.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("serrote", "aço", "serrar", 15, 250.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("parafusadeira", "plastico & metal", "parafusar", 10, 440.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("maquita", "plastico & metal", "cortar", 20, 550.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("lanterna", "plastico", "iluminar",15, 80.00);
INSERT INTO  tb_produtos (nome, material, utilidade, quantidade, preco)
VALUES ("prego", "ferro", "pregar", 1000, 0.15);

SELECT *FROM tb_produtos where preco > 500;
SELECT *FROM tb_produtos where preco < 500;

SELECT * FROM tb_produtos;

