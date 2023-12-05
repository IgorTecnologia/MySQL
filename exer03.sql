CREATE DATABASE db_escolar;
USE db_escolar;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
dataNascimento DATE NOT NULL,
RA VARCHAR(20) NOT NULL,
presenca BOOLEAN NOT NULL,
nota DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Luan", '2000-01-01', "123.456.789", true, 10.0);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Victor", '2001-02-02', "234.567.890", true, 9.5);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Ana", '2002-03-03', "345.678.901", false, 8.4);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Isabella", '2003-04-04',  "456.789.012", false, 7.3);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Rodrigo", '2004-05-05', "567.890.123", true, 5.2);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Matheus", '2005-06-06', "678.901.234", true, 2.2);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Breno",  '2006-07-07', "789.012.345", false,10.0);
INSERT INTO tb_estudantes (nome, dataNascimento, RA, presenca, nota)
VALUES("Felipe", '2007-08-08', "890.123.456", false,9.9);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes where nota > 7.0;
SELECT * FROM tb_estudantes where nota < 7.0;