-- inserção de dados e queries

-- drop database if exists ecommerce_desafio;
use ecommerce_desafio;

show tables;

-- idClient, Fname, Lname, CPF, Address
insert into Cliente (primeiro_nome, sobre_nome, tipo_cliente, CPF_CNPJ, endereço, CEP, estado, cidade) 
	   values('Maria','Silva', 'CPF', '11122233344', 'Rua XV de Novembro, 123', '80020310', 'Curitiba', 'Paraná'),
		     ('Matheus','Pimentel', 'CPF', '22233344455', 'Avenida Brasil, 4500', '87013000', 'Maringá', 'Paraná'),
			 ('Ricardo','Silva', 'CPF', '33344455566', 'Rua Sergipe, 88', '86010330', 'Londrina', 'Paraná'),
			 ('Julia','França', 'CPF', '44455566677', 'Rua Balduíno Taques, 1020', '84010000', 'Ponta Grossa', 'Paraná'),
			 ('Roberta','Assis', 'CPF', '55566677788', 'Avenida Paraná, 150', '85851000', 'Foz do Iguaçu', 'Paraná'),
			 ('Isabela','Cruz', 'CNPJ', '12345678000199', 'Rua Sete de Setembro, 500', '85010300', 'Guarapuava', 'Paraná'),
             ('Gisele', 'Costa', 'CPF', '66677788899', 'Avenida Brasil, 2000', '85801000', 'Cascavel', 'Paraná'),
			 ('Hugo', 'Rocha', 'CPF', '77788899900', 'Rua Barão do Rio Branco, 45', '83203440', 'Paranaguá', 'Paraná');
select * from cliente;

-- idProduct, Pname, classification_kids boolean, category('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis'), avaliação, size
insert into produto (nome_do_produto, classificação_kids, categoria, avaliação, medida) VALUES
			('Smartphone Samsung G5', false, 'Eletrônico', 4.5, '16x7x0.8'),
			('Camiseta Algodão Azul', false, 'Vestimenta', 4.0, '30x25x2'),
			('Carrinho de Controle Remoto', true, 'Brinquedos', 4.8, '25x15x12'),
			('Arroz 5kg', false, 'Alimentos', 4.2, '20x30x10'),
			('Sofá 3 Lugares', false, 'Móveis', 3.9, '210x90x85'),
			('Boneca Articulada', true, 'Brinquedos', 4.9, '30x10x5');
select * from produto;

-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue, paymentCash

insert into Pagamento (idCliente, idPagamento, tipo_Pagamento, limite_Disponível) VALUES
			(1, 1, 'Cartão', 5000.00),
			(1, 2, 'PIX', 1000.00),
			(2, 1, 'Boleto', 2000.00),
			(3, 1, 'Cartão', 15000.00);
select * from pagamento;

insert into pedido (idPedido_Cliente, status_pedido, descrição_Pedido, enviar_valor) VALUES
			(1, 'Confirmado', 'Compra de eletrónico', 15.50, 1123456),
			(2, 'Em processamento', 'Compra de vestuário', 10.00, 2123456),
			(3, 'Cancelado', 'Pedido de móveis', 50.00, 3123456),
			(4, 'Confirmado', 'Brinquedos diversos', 12.00, 4123456);
select * from pedido;

-- idPOproduct, idPOorder, poQuantity, poStatus
insert into ordemProduto (idPOproduto, idPOordem, quantidade_produto, valor_unitario_na_venda, status_produto) values
			(1, 1, 1, 1200.00, 'Disponível'),
			(2, 2, 2, 45.90, 'Disponível'),
			(5, 3, 1, 899.00, 'Sem estoque'),
			(3, 1, 1, 50.00, 'Disponível');
select * from ordemproduto;

insert into entrega (idPedido, status_entrega, transportadora) values
					('1', 'Saiu para entrega', 'Correios'),
                    ('2', 'Em processamento', 'Rapidão Cometa'),
                    ('3', 'Falha na entrega', 'Correios'),
                    ('4', 'Saiu para entrega', 'Jade');
select * from entrega;

-- storageLocation,quantity
insert into armazenamentoproduto (local_Armazenamento,quantidade) values 
							('Curitiba', 1500),
							('Maringá', 800),
							('Londrina', 2000),
							('Rio de Janeiro',1000),
                            ('São Paulo',10),
                            ('São Paulo',100),
                            ('São Paulo',10),
                            ('Joinville',60);
select * from armazenamentoproduto;

-- idLproduct, idLstorage, location
insert into localarmazenamento (idLproduto, idLarmazenamento, localização) values
						 (1, 1,'SC'),
						 (4, 3,'PR'),
						 (1,2,'RJ'),
                         (2,6,'SP');
select * from localarmazenamento;

-- idSupplier, SocialName, CNPJ, contact
insert into fornecedor (razão_social, CNPJ, contato) values
							('Tech Paraná Ltda', '12345678000101', '41988887777'),
							('Modas Sul S.A.', '22333444000102', '43977776666'),
							('Alimentos S.A.', '33444555000103', '44966665555'),
							('Almeida e filhos', '12345678912345','21985474'),
                            ('Eletrônicos Silva','85451964914345','21985484'),
                            ('Eletrônicos Valma', '93456789393469','21975474');
select * from Fornecedor;
                            
-- idPsSupplier, idPsProduct, quantity
insert into fornecedorproduto (idPsFornecedor, idPsProduto, quantidade) values
						 (7,1,500),
                         (8,2,400),
                         (9,4,633),
                         (10,5,5),
                         (11,3,10);
select * from fornecedorproduto;

-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
insert into vendedor (razão_social, Abst_nome, CNPJ, CPF, localização, contato) values
						('João das Vendas ME', 'João Tech', '55666777000105', NULL, 'Curitiba - PR', '41955554444'),
						('Maria Silva Varejo', 'Maria Store', NULL, '123456789', 'Londrina - PR', '43944443333'), 
						('Tech eletronics', null, 12345678945632, null, 'Rio de Janeiro', 219946287),
					    ('Botique das Amigas',null,null,123456783,'Rio de Janeiro', 219567895),
						('Eduardo Steni Viana',null,45678912365432,null,'São Paulo', 1198657484);
select * from vendedor;

-- idPseller, idPproduct, prodQuantity
insert into produtovendedor (idPvendedor, idPproduto, quantidade_produto) values 
						 (11, 1, 10), 
						 (15, 3, 5), 
						 (14, 2, 20),
						 (12,6,80),
                         (13,1,10);
select * from produtovendedor;

