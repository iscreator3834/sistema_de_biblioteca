-- 1. O que é SQL?
-- R: Linguagem de consulta estruturada que permitir criar, gerenciar, atualizar e modificar
--
-- 2. O que é DDL?
-- R: Linguagem de definição de dados e contém comandos interador, por exemplo, CREATE, ALTER e DROP

-- Removendo o banco de dados caso ele exista
DROP DATABASE IF EXISTS Biblioteca;

-- Criando o banco de dados
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- =======================================================================
--O leitor só tem um matricula
--requição de livro
--só pode empresta 7 livro
-- =======================================================================
CREATE TABLE Cliente (
    -- idCliente chave primaria Artificial
    idCliente INT UNSIGNED NOT NULL PRIMARY KEY

    -- Atributo Simples / Atômico
    nome VARCHAR(125)
    matricula char(14)
    senha VARCHAR(125)
);


CREATE TABLE Livro (
    idPedido INT UNSIGNED NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(150) NOT NULL
    quantidade INT UNSIGNED NOT NULL,
);

CREATE TABLE emprestimos (
    Cliente_id INT NOT NULL,
    livro_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    status ENUM('Ativo', 'Devolvido', 'Atrasado') DEFAULT 'Ativo',
    FOREIGN KEY (usuario_id) REFERENCES Cliente(id),
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);
