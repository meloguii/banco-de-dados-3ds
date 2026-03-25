-- Criação do banco de dados
CREATE DATABASE LivrariaDB;
USE LivrariaDB;

-- Tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) UNIQUE NOT NULL
);

-- Tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);
