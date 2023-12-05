CREATE DATABASE db_RH;
USE db_RH;

CREATE TABLE tb_colaborador(
id BIGINT AUTO_INCREMENT,
nome  VARCHAR(225) NOT NULL,
dataNascimento DATE,
cpf  VARCHAR(225) NOT NULL,
cargo VARCHAR(225) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaborador(nome, dataNascimento, cpf, cargo, salario)
VALUES("Igor",  '1996-07-28', "437.123.456/80","desenvolvedor", 4000.00);
INSERT INTO tb_colaborador(nome, dataNascimento, cpf, cargo, salario)
VALUES("Mario",  '1986-07-28', "123.123.456/80","Engenheiro", 5000.00);
INSERT INTO tb_colaborador(nome, dataNascimento, cpf, cargo, salario)
VALUES("Nanci",  '1964-07-28', "456.123.456/80","Presidente", 1000.00);
INSERT INTO tb_colaborador(nome, dataNascimento, cpf, cargo, salario)
VALUES("Tomás",  '2000-07-28', "789.123.456/80","Instrutor", 6000.00);
INSERT INTO tb_colaborador(nome, dataNascimento, cpf, cargo, salario)
VALUES("Vitória",  '1998-07-28', "321.123.456/80","Gerente",8000.00);

ALTER TABLE tb_colaborador ADD salario DECIMAL(6,2);

SELECT * FROM tb_colaborador where salario > 2000;
SELECT * FROM tb_colaborador where salario < 2000;

SELECT * FROM tb_colaborador 
