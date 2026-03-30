-- criação do banco de dados para o cenário de E-commerce 

-- drop database if exists ecommerce_desafio;

create database ecommerce_desafio;
use ecommerce_desafio;

-- Criar tabela cliente
create table cliente(
    idCliente int auto_increment primary key,
    primeiro_nome varchar(20),
    sobre_nome varchar(20),
    tipo_cliente enum('CPF','CNPJ') default 'CPF',
    CPF_CNPJ char(14) not null,
    endereço varchar(100) not null,
    CEP varchar(8),
    cidade varchar(50) not null,
    estado varchar(50) not null,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    constraint unique_cpf_CNPJ_cliente unique (CPF_CNPJ)
);

alter table cliente auto_increment=1;

-- Criar tabela produto
create table produto(
    idProduto int auto_increment primary key,
    nome_do_produto varchar(255) not null,
    classificação_kids bool default false,
    categoria enum('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') not null,
    avaliação float default 0,
    medida varchar(10)
);

alter table produto auto_increment=1;

-- Criar tabela pagamento
create table Pagamento(
    idCliente int,
    idPagamento int,
    tipo_Pagamento enum('Boleto','Cartão','PIX'),
    limite_Disponível float,
    data_pagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    primary key(idCliente, idPagamento),
    constraint fk_pagamento_cliente foreign key (idCliente) references cliente(idCliente)
);

-- Criar tabela pedido
create table pedido(
    idPedido int auto_increment primary key,
    idPedido_Cliente int,
    status_pedido enum('Cancelado','Confirmado','Em processamento') default 'Em processamento',
    descrição_Pedido varchar(255),
    enviar_valor float default 10,
    pagamento_dinheiro boolean default false,
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    codigo_rastreio VARCHAR(50) UNIQUE,
    constraint fk_Pedido_cliente foreign key (idPedido_Cliente) references cliente(idCliente)
        on update cascade
);

alter table pedido auto_increment=1;

create table entrega (
    idEntrega int auto_increment primary key,
    idPedido int,
    status_entrega ENUM('Em processamento','Em trânsito', 'Saiu para entrega', 'Falha na entrega') DEFAULT 'Em processamento',
    transportadora VARCHAR(50),
    CONSTRAINT fk_entrega_pedido FOREIGN KEY (idPedido) REFERENCES pedido(idPedido)
);


-- Criar tabela estoque
create table armazenamentoproduto(
    idarmazenamento_produto int auto_increment primary key,
    local_armazenamento varchar(255),
    quantidade int default 0
);

alter table armazenamentoproduto auto_increment=1;

-- Criar tabela fornecedor
create table fornecedor(
    idFornecedor int auto_increment primary key,
    razão_social varchar(255) not null,
    CNPJ char(14) not null,
    contato char(11) not null,
    constraint unique_fornecedor unique (CNPJ)
);

alter table fornecedor auto_increment=1;

-- Criar tabela vendedor
create table vendedor(
    idVendedor int auto_increment primary key,
    razão_social varchar(255) not null,
    Abst_nome varchar(255),
    CNPJ char(14),
    CPF char(9),
    localização varchar(255),
    contato char(11) not null,
    constraint unique_cnpj_vendedor unique (CNPJ),
    constraint unique_cpf_vendedor unique (CPF)
);

alter table vendedor auto_increment=1;

-- Criar tabela produto vendedor
create table produtovendedor(
    idPvendedor int,
    idPproduto int,
    quantidade_produto int default 1,
    primary key (idPvendedor, idPproduto),
    constraint fk_produto_vendedor foreign key (idPvendedor) references vendedor(idVendedor),
    constraint fk_produto_produto foreign key (idPproduto) references produto(idProduto)
);

-- Criar tabela ordem do produto (corrigido referências para pedidos e produto)
create table ordemproduto(
    idPOproduto int,
    idPOordem int,
    quantidade_produto int default 1,
	valor_unitario_na_venda DECIMAL(10,2),
    status_produto enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idPOproduto, idPOordem),
    constraint fk_ordemProduto_produto foreign key (idPOproduto) references produto(idProduto),
    constraint fk_ordemProduto_ordem foreign key (idPOordem) references pedido(idPedido)
);

-- Criar tabela local do armazenamento
create table localarmazenamento(
    idLproduto int,
    idLarmazenamento int,
    localização varchar(255) not null,
    primary key (idLproduto, idLarmazenamento),
    constraint fk_armazenamento_localização_produto foreign key (idLproduto) references produto(idProduto),
    constraint fk_armazenamento_localização_armazenamento foreign key (idLarmazenamento) references armazenamentoproduto(idarmazenamento_produto)
);

-- Criar tabela fornecedor do produto
create table fornecedorproduto(
    idPsFornecedor int,
    idPsProduto int,
    quantidade int not null,
    primary key (idPsFornecedor, idPsProduto),
    constraint fk_produto_fornecedor_fornecedor foreign key (idPsFornecedor) references fornecedor(idFornecedor),
    constraint fk_produto_fornecedor_produto foreign key (idPsProduto) references produto(idProduto)
);