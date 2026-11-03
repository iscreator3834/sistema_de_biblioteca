-- Removendo o banco de dados caso ele exista
DROP DATABASE IF EXISTS Biblioteca;

-- Criando o banco de dados
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- =======================================================================
--O leitor só tem um matricula
--requição de livro
--só pode empreta 7 livro

-- =======================================================================
CREATE TABLE Cliente (
    -- idCliente chave primaria Artificial
    idCliente INT UNSIGNED NOT NULL PRIMARY KEY

    -- Atributo Simples / Atômico
    nome VARCHAR(125)
    matricula char(14)
);
