CREATE DATABASE DB_AULA25MAR24;

CREATE TABLE Fornecedor(
    Fcodigo INT NOT NULL,
    Fnome VARCHAR(30) NOT NULL,
    Status INT,
    Cidade VARCHAR(30)
);
-- selecionar dados da tabela
SELECT * FROM Fornecedor;

-- cria a tabela se ela não existir, e se existir não acontece nada, inclusive erro
CREATE TABLE IF NOT EXISTS Fornecedor(
    Fcodigo INT NOT NULL,
    Fnome VARCHAR(30) NOT NULL,
    Status INT,
    Cidade VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS Departamento (
    Dcodigo INT NOT NULL,
    Dnome VARCHAR(30) NOT NULL,
    Cidade VARCHAR(30),
    PRIMARY KEY (Dcodigo)
);
SELECT * FROM Departamento;

CREATE TABLE IF NOT EXISTS Empregado (
    Ecodigo INT NOT NULL,
    Enome VARCHAR(40) NOT NULL,
    CPF VARCHAR(15) NOT NULL,
    Salario DECIMAL(7,2),
    Dcodigo INT NOT NULL,
    PRIMARY KEY (Ecodigo, Enome)
);
SELECT * FROM Empregado;

-- apagar a tabela Empregado

DROP TABLE Empregado;

-- criação de tabela com Foreing Key

CREATE TABLE IF NOT EXISTS Empregado (
    Ecodigo INT NOT NULL,
    Enome VARCHAR(40) NOT NULL,
    CPF VARCHAR(15) NOT NULL,
    Salario DECIMAL(7,2),
    Dcodigo INT NOT NULL,
    PRIMARY KEY (Ecodigo, Enome),
    FOREIGN KEY (Dcodigo) REFERENCES Departamento
);
SELECT * FROM Empregado;

-- alterar tabelas com o ALTER TABLE

-- ADD coluna
ALTER TABLE Empregado ADD sexo CHAR(1);

-- Drop coluna (Remover)
ALTER TABLE Empregado DROP sexo;

-- exibir
SELECT * FROM Empregado;

-- Renomear a tabela
ALTER TABLE Empregado RENAME TO Funcionario;

-- ALTER TABLE tabela ALTER COLUMN campo nome tipo_dado;
ALTER TABLE Fornecedor COLUMN status TYPE INT ativo BOOLEAN;



