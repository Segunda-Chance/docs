-- Criando Banco
CREATE DATABASE db_segundaChance;
USE db_segundaChance;

-- Criando tabela Categoria
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(80) NOT NULL,
tipo VARCHAR(50) NOT NULL,
PRIMARY KEY(id));

-- Inserção de dados na tabela categoria
INSERT INTO tb_categorias(nome_categoria, tipo)
VALUES ("Esportes", "produto");


-- Criando tabela usuarios
CREATE TABLE tb_usuarios(
id BIGINT AUTO_INCREMENT,
nome_usuario VARCHAR(255) NOT NULL,
usuario VARCHAR(80) NOT NULL,
senha VARCHAR(16) NOT NULL,
foto VARCHAR(5000) NOT NULL,
PRIMARY KEY(id));

-- Inserção de dados na tabela usuarios
INSERT INTO tb_usuarios (nome_usuario, email, senha)
VALUES ("Beyonce da silva", "beyonce_gatinha157@hotmail.com", "batatinha123456@");


-- Criando tabela Produtos
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
foto VARCHAR(300) NOT NULL,
descricao VARCHAR(500),
categoria_id BIGINT,
usuario_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id),
FOREIGN KEY(usuario_id) REFERENCES tb_usuarios(id));

-- Inserção de dados na tabela usuarios
INSERT INTO tb_produtos (nome_produto, preco, foto, descricao, categoria_id, usuario_id)
VALUES ("Bola", 70.83, "FOTO.COM", "Ela tem um formato de batata", 1, 1);


SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON categoria_id = tb_categorias.id
INNER JOIN tb_usuarios ON usuario_id = tb_usuarios.id