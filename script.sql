CREATE TABLE clientes(
id INT PRIMARY KEY AUTO_INCREMENT,
codigo VARCHAR(10) NOT NULL,
cidade VARCHAR(100) NOT NULL,
uf VARCHAR(2) NOT NULL
)


DESC cliente

SELECT * FROM cliente
DELETE FROM cliente

DROP TABLE cliente


INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000001','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000002','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000003','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000004','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000005','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000006','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000007','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000008','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000009','SÃO PAULO','SP');
INSERT INTO clientes (codigo,cidade,uf)VALUES('0000000010','SÃO PAULO','SP');


CREATE TABLE produtos(
id INT PRIMARY KEY AUTO_INCREMENT,
codigo VARCHAR(10) NOT NULL,
descricao VARCHAR(100) NOT NULL,
preco_venda DECIMAL(10,2) NOT NULL
)


DESC produtos

SELECT  * FROM produtos

DELETE FROM produtos
DROP TABLE produtos

INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000001','PRODUTO 1',1.00);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000002','PRODUTO 1',2.50);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000003','PRODUTO 1',3.00);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000004','PRODUTO 1',4.50);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000005','PRODUTO 1',5.00);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000006','PRODUTO 1',6.50);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000007','PRODUTO 1',7.00);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000008','PRODUTO 1',8.50);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000009','PRODUTO 1',9.00);
INSERT INTO produtos (codigo,descricao,preco_venda) VALUES ('0000000010','PRODUTO 1',10.00);
