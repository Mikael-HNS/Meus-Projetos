
-- Apresenta a tabela de CLIENTE
select * from cliente;


-- Apresenta qualquer informação entre a junção das tabelas CLIENTE e PEDIDO pelas colunas de IDCLIENTE e IDPEDIDO_CLIENTE
select * from cliente c, pedido p where c.idCliente = idPedido_cliente;


-- Apresenta os clientes por estado, unindo as colunas de PRIMEIRO_NOME e SOBRE_NOME.
select idCliente, concat(primeiro_nome, ' ', sobre_nome) as nome_completo,
						cidade, estado from cliente;


-- Quantos clientes cadastrados?
select count(idCliente) as Total_de_Clientes from cliente;


-- Qual o total de cliente agrupadspor estados?
select estado, count(idCliente) as Quant_Clientes from cliente
                group by estado;
 
 
 -- Quantos produtos disponiveis e quantos não estão?
select status_produto, count(idPOproduto) as Total from ordemproduto
							group by status_produto;


-- Quantos clientes estão cadastrados e não compraram.
select primeiro_nome as Cliente, CPF_CNPJ 
			from cliente c
			where not exists (SELECT 1 FROM Pedido ped WHERE ped.idPedido_Cliente = c.idCliente);


-- Qual o total e a méida de vendas?
select SUM(quantidade_produto * valor_unitario_na_venda) AS total_geral,
		AVG(quantidade_produto * valor_unitario_na_venda) AS media_por_item_vendido
		FROM ordemproduto;


-- Quais clientes tem um consumo acima do mínimo de 200,00?
select c.primeiro_nome as Cliente, sum(op.valor_unitario_na_venda * op.quantidade_produto) as total_em_compras from cliente c
						join pedido p on c.idCliente = p.idPedido_Cliente
						join ordemproduto op on p.idPedido = op.idPOordem
						group by c.idCliente, c.primeiro_nome
                        HAVING total_em_compras > '200,00';
					

-- qual status dos pedidos dos clientes e o rastreio 
select c.primeiro_nome, p.idPedido, p.status_pedido, p.codigo_rastreio, e.status_entrega, e.transportadora from cliente c
						inner join pedido p on c.idCliente = p.idPedido_Cliente
						inner join entrega e on p.idPedido = e.idPedido;



