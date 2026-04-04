-- Criando um Banco de dados para compra de Itens.
-- DROP DATABASE Fluxo_de_compras;

CREATE DATABASE Fluxo_de_compras;

USE Fluxo_de_compras;

SHOW TABLES;

-- Criar uma tabela com os dados de Fornecedores.
CREATE TABLE Fornecedor(
                        idFornecedor INT AUTO_INCREMENT,
                        Razao_Social VARCHAR(100) NOT NULL,
                        Nome_Fantasia VARCHAR(50) NOT NULL,
                        CNPJ CHAR(14) UNIQUE NOT NULL,
                        Fone CHAR(11) NOT NULL,
                        Endereço VARCHAR(45),
                        Cidade VARCHAR(45),
                        Estado VARCHAR(45),
                        UF VARCHAR(2),
                        Data_Cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
		constraint primary key (idFornecedor, Nome_Fantasia, CNPJ)
)ENGINE=InnoDB AUTO_INCREMENT=1000;


-- Criar uma Tabela com os dados dos representantes dos Fornecedorres.
CREATE TABLE Representante(
                           idFornecedor INT NULL,
                           Fornecedor VARCHAR(50) NOT NULL,
                           Primeiro_Nome VARCHAR(30)  NOT NULL,
                           Sobre_Nome VARCHAR(30) NOT NULL,
                           Fone CHAR(11) NOT NULL,
                           Email VARCHAR(100) NOT NULL,
    CONSTRAINT pk_PrimeiroNome_Email PRIMARY KEY (Primeiro_Nome, Email),
    CONSTRAINT fk_Fornecedor FOREIGN KEY(idFornecedor, Fornecedor) REFERENCES Fornecedor (idFornecedor, Nome_Fantasia)
);


-- Criar uma Tabela com para castro de produtos.
CREATE TABLE Produto(
                     idProduto INT AUTO_INCREMENT,
                     Descricao VARCHAR(100) NOT NULL,
                     Departamento VARCHAR(45) NOT NULL,
                     Categoria VARCHAR(45) NOT NULL,
                     Subcategoria VARCHAR(45) NOT NULL,
                     Segmento VARCHAR(45) NOT NULL,
                     Principio_Ativo VARCHAR(45) NOT NULL,
                     Preco_Unitario DECIMAL(10,2) NOT NULL,
                     Codigo_Barras BIGINT UNIQUE NOT NULL,
                     idFornecedor INT  NOT NULL,
                     Fornecedor VARCHAR(50) NOT NULL,
                     Data_Cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_idProduto_Descricao PRIMARY KEY (idProduto, Descricao, Codigo_Barras),
    CONSTRAINT fk_Fornecedor_Produto FOREIGN KEY (idFornecedor, Fornecedor) REFERENCES Fornecedor (idFornecedor, Nome_Fantasia)
)ENGINE=InnoDB AUTO_INCREMENT=100;


-- Criar uma Tabela com os dados para pedido.
CREATE TABLE Pedido(
                    idPedido INT AUTO_INCREMENT,
                    idFornecedor INT NOT NULL,
                    CNPJ CHAR(14) NOT NULL,
                    Fornecedor VARCHAR(50),
                    Representante VARCHAR(30),
                    Email VARCHAR(100) NOT NULL,
                    Data_Pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT pk_idPedido_idFornecedor PRIMARY KEY (idPedido, idFornecedor),
    CONSTRAINT fk_Fornecedor_Pedido FOREIGN KEY (idFornecedor, Fornecedor, CNPJ) REFERENCES Fornecedor (idFornecedor, Nome_Fantasia, CNPJ),
    CONSTRAINT fk_Representante_Pedido FOREIGN KEY (Representante, Email) REFERENCES Representante (Primeiro_Nome, Email)
)ENGINE=InnoDB AUTO_INCREMENT=2000;


-- Criar uma Tabela para inserir varios produtos para um pedido.
CREATE TABLE Produtos_Pedido (
                              idPedido INT NOT NULL,
                              idFornecedor INT NOT NULL,
                              Codigo_Barras BIGINT NOT NULL,
                              idProduto INT NOT NULL,
                              Descricao VARCHAR(100) NOT NULL,
                              Quantidade INT NOT NULL,
                              Preco_Unitario DECIMAL(10,2) DEFAULT 0.00,
                              Desconto_Percentual DECIMAL(5,2) DEFAULT 0.00,
        CONSTRAINT fk_Pedido_ProdutoPedido FOREIGN KEY (idPedido, idFornecedor) REFERENCES Pedido (idPedido, idFornecedor),
        CONSTRAINT fk_Produto_ProdutoPedido FOREIGN KEY (idProduto, Descricao, Codigo_Barras) REFERENCES Produto (idProduto, Descricao, Codigo_Barras)
);