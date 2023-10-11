-- Tabela de Clientes
CREATE TABLE Clientes (
    CPF VARCHAR(11) PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco VARCHAR(255),
    Telefone VARCHAR(15),
    Email VARCHAR(100)
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    Id INT PRIMARY KEY,
    Nome VARCHAR(100),
    Valor DECIMAL(10,2),
    Validade DATE
);

-- Tabela de Vendas
CREATE TABLE Vendas (
    Numero INT PRIMARY KEY,
    Quantidade INT,
    Data DATE,
    CPF_Cliente VARCHAR(11), -- Referência ao cliente
    FOREIGN KEY (CPF_Cliente) REFERENCES Clientes(CPF)
);

-- Tabela de Pagamento
CREATE TABLE Pagamento (
    Codigo INT PRIMARY KEY,
    Valor DECIMAL(10,2),
    Data DATE,
    Forma VARCHAR(50),
    Numero_Venda INT, -- Referência à venda
    FOREIGN KEY (Numero_Venda) REFERENCES Vendas(Numero)
);
