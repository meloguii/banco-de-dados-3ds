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

SELECT * FROM Clientes;

-- Inserindo clientes
INSERT INTO Clientes (nomeCliente, emailCliente)
VALUES 
('Ana Silva', 'ana.silva@email.com'),
('Carlos Souza', 'carlos.souza@email.com'),
('Mariana Oliveira', 'mariana.oliveira@email.com'),
('João Pereira', 'joao.pereira@email.com');

-- Inserindo compras
INSERT INTO Compras (ClienteID, NomeLivro)
VALUES
(1, 'Dom Casmurro'),
(2, 'O Senhor dos Anéis'),
(3, '1984'),
(1, 'A Revolução dos Bichos'),
(4, 'Harry Potter e a Pedra Filosofal');
