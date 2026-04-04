-- Populando dados para as tabelas de FLUXO_DE_COMPRAS.

use Fluxo_de_Compras;

-- Dados dos Fornecedores.
INSERT INTO fornecedor (Razao_Social, Nome_Fantasia, CNPJ, Fone, Endereço, Cidade, Estado, UF) VALUES
                ('Althaia S.A. Indústria Farmacêutica', 'Althaia', '13347016000117', '1144147200', 'Av. Tégula, 888 - Ponte Alta', 'Atibaia', 'São Paulo', 'SP'),
                ('Belfar Ltda', 'Belfar', '18324343000177', '3133910024', 'R. Alair Marques Rodrigues, 614', 'Belo Horizonte', 'Minas Gerais', 'MG'),
                ('Biolab Sanus Farmacêutica Ltda', 'Biolab', '49475833000106', '8007246522', 'Av. Paulo Ayres, 280 - Pq. Pinheiros', 'Taboão da Serra', 'São Paulo', 'SP'),
                ('Cifarma Científica Farmacêutica Ltda', 'Cifarma', '17562075000169', '8007071212', 'Rod. BR 153, Km 5,5 - Jd. Guanabara', 'Goiânia', 'Goiás', 'GO'),
                ('Laboratório Globo S.A.', 'Globo', '17115437000173', '3136230100', 'Rod. MG 424, Sn, Km 8,8 - Zona Rural', 'São José da Lapa', 'Minas Gerais', 'MG'),
                ('Greenpharma Química e Farmacêutica Ltda', 'Green Pharma', '33408105000133', '6233108500', 'Via Principal VPR 3, Sn - DAIA', 'Anápolis', 'Goiás', 'GO'),
                ('Kley Hertz Farmacêutica S.A.', 'Kley Hertz', '92695691000103', '8007049001', 'R. Comendador Azevedo, 224 - Floresta', 'Porto Alegre', 'Rio Grande do Sul', 'RS'),
                ('Legrand Pharma Indústria Farmacêutica Ltda', 'Legrand', '50449840001260', '800500600', 'Rod. Jorn. Fco. Aguirre Proença, Km 08', 'Hortolândia', 'São Paulo', 'SP'),
                ('Medquímica Indústria Farmacêutica Ltda', 'Medquímica', '17875154000120', '8000324087', 'R. Fernando Lamarca, 255 - Dist. Industrial', 'Juiz de Fora', 'Minas Gerais', 'MG'),
                ('Natulab Laboratório S.A.', 'Natulab', '24569550000183', '7533115500', 'R. Argemiro Melo, 15 - Centro', 'Santo Antônio de Jesus', 'Bahia', 'BA'),
                ('Pharlab Indústria Farmacêutica S.A.', 'Pharlab', '2501297000102', '3732873000', 'R. Olímpio Rezende de Oliveira, 28', 'Lagoa da Prata', 'Minas Gerais', 'MG'),
                ('Vitamedic Indústria Farmacêutica Ltda', 'Vitamedic', '30222814000131', '800622929', 'Rua VPR 01, Qd. 2A, Mód. 01 - DAIA', 'Anápolis', 'Goiás', 'GO');


-- Dados dos Representantes.
INSERT INTO representante (idFornecedor, Fornecedor, Primeiro_Nome, Sobre_Nome, Fone, Email) VALUES
(1000, 'Althaia', 'Ricardo', 'Santos', '11987654321', 'ricardo.santos@althaia.com.br'),
(1001, 'Belfar', 'Julia', 'Costa', '31976543210', 'julia.costa@belfar.com.br'),
(1002, 'Biolab', 'Marcos', 'Ferreira', '11995544332', 'marcos.ferreira@biolab.com.br'),
(1003, 'Cifarma', 'Patricia', 'Lima', '62988776655', 'patricia.lima@cifarma.com.br'),
(1004, 'Globo', 'Eduardo', 'Rocha', '31988112233', 'eduardo.rocha@labglobo.com.br')
(1005, 'Green Pharma', 'Fernanda', 'Souza', '62987123456', 'fernanda.souza@greenpharma.com.br'),
(1006, 'Kley Hertz', 'Gustavo', 'Almeida', '51984455667', 'gustavo.almeida@kleyhertz.com.br'),
(1007, 'Legrand', 'Beatriz', 'Mendes', '19992233445', 'beatriz.mendes@legrandpharma.com.br'),
(1008, 'Medquímica', 'Roberto', 'Nunes', '32991122334', 'roberto.nunes@medquimica.com.br'),
(1009, 'Natulab', 'Camila', 'Oliveira', '75999887766', 'camila.oliveira@natulab.com.br'),
(1010, 'Pharlab', 'Andreia', 'Silva', '37998877665', 'andreia.silva@pharlab.com.br'),
(1011, 'Vitamedic', 'Lucas', 'Pereira', '62981112233', 'lucas.pereira@vitamedic.com.br');


-- Dados dos Produstos.
INSERT INTO produto (Descricao, Departamento, Categoria, Subcategoria, Segmento, Principio_Ativo, Preco_Unitario, Codigo_Barras, idFornecedor, Fornecedor) VALUES
                ('Desvenlafaxina 50mg C/30cprev C1 (Atg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Neurologicos','Desvenlafaxina','19.22',7898569767556,1000,'Althaia'),
                ('Telmisartana 40mg 30cp(Atg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Cardiologicos','Telmisartana','13.75',7898569762803,1000,'Althaia'),
                ('Propafenona 300mg 60 Comprimidos (Atg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Cardiologicos','Propafenona','35.43',7898569761448,1000,'Althaia'),
                ('Prednisolona 40mg 7 Comprimidos (Atg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Antiinflamatorios','Prednisolona','8.58',7898569765514,1000,'Althaia'),
                ('Ibandronato De Sodio 150mg 1cp (Atg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Osteoporose','Ibandronato Sodico','27.27',7898569763633,1000,'Althaia'),
                ('Xarope Guaco 100ml  (Bel)','Medicamentos','Medicamento Otc','Otc Marca','Gripe E Antialergico','Guaco','4.27',7897917003377,1001,'Belfar'),
                ('Hidroten Po Menta 6sache (Bef)','Medicamentos','Medicamento Otc','Otc Similar','Gastro','Glicose/Eletrolitos','8.80',7897917004503,1001,'Belfar'),
                ('Virtiolate Sol Top 30ml (Bef)','Cuidados Saude','Primeiros Socorros','Assepsia E Tratamento','Assepsia Tratamento','Solucoes Antissepticas','1.98',7897917004244,1001,'Belfar'),
                ('Deltapil Locao C/100ml (Bef)','Medicamentos','Medicamento Otc','Otc Similar','Antiparasitario','Deltametrina','4.09',7897917000161,1001,'Belfar'),
                ('Promergan Creme 30g (Bef)','Medicamentos','Medicamento Otc','Otc Similar','Gripe E Antialergico','Prometazina','4.28',7897917001342,1001,'Belfar'),
                ('Piosan 1pc C/60ml (Bef)','Medicamentos','Medicamento Otc','Otc Similar','Antiparasitario','Permetrina','3.04',7897917000123,1001,'Belfar'),
                ('Zolpidem 10mg C/20cp C1 (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Neurologicos','Zolpidem','2.66',7896112401223,1002,'Biolab'),
                ('Acido Valproico 250mg 25capsulas C1(Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Disturbios Coagulacao','Acido Valproico','8.33',7896112401230,1002,'Biolab'),
                ('Galantamina 16mg 30 Capsulas C1 (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Neurologicos','Galantamina','49.27',7899551305572,1002,'Biolab'),
                ('Losartana+Hidro 50/12,5mg 30cp (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Cardiologicos','Losartana Potassico/Hidroclorotiazida','3.74',7896112401278,1002,'Biolab'),
                ('Ciprofibrato 100mg 30 Comprimidos (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Cardiologicos','Ciprofibrato','7.66',7896112401193,1002,'Biolab'),
                ('Noretisterona 0,35mg 35cp (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Anticoncepcionais','Noretisterona','4.34',7896112401407,1002,'Biolab'),
                ('Valproato De Sodio 500mg 50cp C1 (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Neurologicos','Divalproato De Sodio','25.26',7896112401247,1002,'Biolab'),
                ('Risperidona 3mg C/30cp C1(Blg)','Nao Mapeado','Nao Mapeado','Nao Mapeado','Nao Mapeado','Nao Mapeado','0.00',7898146823460,1002,'Biolab'),
                ('Isossorbida 20mg 30 Comprimidos (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Cardiologicos','Isossorbida','4.49',7896112401315,1002,'Biolab'),
                ('Metoprolol 25mg 30 Comprimidos (Blg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Cardiologicos','Metoprolol','7.51',8901148243651,1002,'Biolab'),
                ('Noretisterona Ent+Estr 1sex1ml(Cfg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Anticoncepcionais','Estradiol/Noretisterona','8.07',7908020502524,1003,'Cifarma'),
                ('Aciclovir Creme 50mg/G 10g (Cfg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Dermatologicos','Aciclovir','2.52',7908020502210,1003,'Cifarma'),
                ('Algestona+Est 150+10mg 1apx1ml(Cfg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Anticoncepcionais','Enant.Estradiol/Acet.Algestona','5.41',7908020502517,1003,'Cifarma'),
                ('Nimesulida 100mg 12comprimidos (Cfg)','Medicamentos','Medicamento Tarjado','Tarjado Generico','Antiinflamatorios','Nimesulida','0.00',7908020500483,1003,'Cifarma'),
                ('Lacto Em Po C/6 Saches (Cfg)','Medicamentos','Medicamento Otc','Otc Similar','Gastro','Lactulose','5.36',7898495609241,1003,'Cifarma'),
                ('Acivirax   Creme C/5g           (Cfm)','Nao Mapeado','Nao Mapeado','Nao Mapeado','Nao Mapeado','Nao Mapeado','0.00',7898158691675,1003,'Cifarma'),
                ('Oxyderme Pom C/60g (Cfs)','Infantil','Troca De Fralda','Cuidado Assaduras','Tratamento Assadura','Creme Tratamento Assaduras','6.16',7898158693228,1003,'Cifarma'),
                ('Paracetamol 750mg C/20blx10cp (Glb)','Medicamentos','Medicamento Otc','Otc Generico','Dor E Febre','Paracetamol','25.77',7899620913783,1004,'Globo')
		('Paracetamol 200mg/Ml 15ml (Lge)', 'Medicamentos', 'Medicamento Otc', 'Otc Generico', 'Dor E Febre', 'Paracetamol', 1.38, 7894916142311, 1007, 'Legrand'),
		('Bezafibrato 200mg C/20cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Cardiologicos', 'Bezafibrato', 18.22, 7894916140508, 1007, 'Legrand'),
		('Carvedilol 6,25mg C/30cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Cardiologicos', 'Carvedilol', 1.92, 7894916146401, 1007, 'Legrand'),
		('Amoxicilina 500mg 21cp(Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Antibioticos', 'Amoxicilina', 3.44, 7894916144605, 1007, 'Legrand'),
		('Prednisona 20mg C/10cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Antiinflamatorios', 'Prednisona', 2.15, 7894916141123, 1007, 'Legrand'),
		('Acido Mefenamico 500mg C/24cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Antiinflamatorios', 'Acido Mefenamico', 5.2, 7894916144261, 1007, 'Legrand'),
		('Rosuvastatina 5mg 30cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Cardiologicos', 'Rosuvastatina', 5.43, 7894916147972, 1007, 'Legrand'),
		('Alprazolam 2mg 30cp B1 (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Neurologicos', 'Alprazolam', 3.94, 7894916149143, 1007, 'Legrand'),
		('Prednisona 5mg C/20cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Antiinflamatorios', 'Prednisona', 2.19, 7894916141116, 1007, 'Legrand'),
		('Drospirenona+Etinilest 3mg C/21cp (Lge)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Anticoncepcionais', 'Estradiol/Drospirenona', 7.32, 7894916147118, 1007, 'Legrand'),
		('Seakalm 600mg 20comprimidos (Ntl)', 'Medicamentos', 'Medicamento Otc', 'Otc Marca', 'Neurologicos', 'Passiflora/Associacoes', 15.03, 7899470807652, 1009, 'Natulab'),
		('Fluconazol 150mg 2cp (Vtg)', 'Medicamentos', 'Medicamento Tarjado', 'Tarjado Generico', 'Antifungicos', 'Fluconazol', 1.00, 7898049796168, 1011, 'Vitamedic'),
		('Vitpurum Ferro 30ml (Vtd)', 'Medicamentos', 'Medicamento Otc', 'Otc Similar', 'Vitaminas E Minerais', 'Sulfato Ferroso', 3.92, 7898049798766, 1011, 'Vitamedic'),
		('Beritin Bc 4mg/5ml Xpe C/240ml (Vtd)', 'Medicamentos', 'Medicamento Otc', 'Otc Marca', 'Fitoterapicos', 'Fito Gastro', 4.66, 7898049793068, 1011, 'Vitamedic');



-- Cabeçalho dos Pedido.
INSERT INTO pedido (idFornecedor, CNPJ, Fornecedor, Representante, Email) VALUES
                (1000, '13347016000117', 'Althaia', 'Ricardo', 'ricardo.santos@althaia.com.br'),
                (1002, '49475833000106', 'Biolab', 'Marcos', 'marcos.ferreira@biolab.com.br')
		(1007, 50449840001260, 'Legrand', 'Beatriz', 'beatriz.mendes@legrandpharma.com.br'),
		(1009, 24569550000183, 'Natulab', 'Camila', 'camila.oliveira@natulab.com.br'),
		(1011, 30222814000131, 'Vitamedic', 'Lucas', 'lucas.pereira@vitamedic.com.br');


-- Corpo dos Pedido.
INSERT INTO produtos_pedido (idPedido, idFornecedor, Descricao, Codigo_Barras, IdProduto, Quantidade, Preco_Unitario, Desconto_Percentual) VALUES
                (2000, 1000, 'Desvenlafaxina 50mg C/30cprev C1 (Atg)', 7898569767556, 100, 100, 19.22, 10.00),
                (2000, 1000, 'Telmisartana 40mg 30cp(Atg)', 7898569762803, 101, 180, 13.75, 10.00),
                (2000, 1000, 'Propafenona 300mg 60 Comprimidos (Atg)', 7898569761448, 102, 300, 35.43, 10.00),
                (2000, 1000, 'Prednisolona 40mg 7 Comprimidos (Atg)', 7898569765514, 103, 250, 8.58, 8.00),
                (2000, 1000, 'Ibandronato De Sodio 150mg 1cp (Atg)', 7898569763633, 104, 120, 27.27, 8.00),
                (2001, 1002, 'Zolpidem 10mg C/20cp C1 (Blg)', 7896112401223, 111, 50, 2.66, 5.00),
                (2001, 1002, 'Acido Valproico 250mg 25capsulas C1(Blg)', 7896112401230, 112, 120, 8.33, 5.00),
                (2001, 1002, 'Galantamina 16mg 30 Capsulas C1 (Blg)', 7899551305572, 113, 90, 49.27, 5.00)
		(2027, 1007, 7894916142311, 129, 'Paracetamol 200mg/Ml 15ml (Lge)', 20, 1.38, 7.00),
		(2027, 1007, 7894916140508, 130, 'Bezafibrato 200mg C/20cp (Lge)', 85, 18.22, 7.00),
		(2027, 1007, 7894916146401, 131, 'Carvedilol 6,25mg C/30cp (Lge)', 200, 1.92, 7.00),
		(2028, 1009, 7899470807652, 139, 'Seakalm 600mg 20comprimidos (Ntl)', 1000, 15.03, 5.00),
		(2029, 1011, 7898049796168, 140, 'Fluconazol 150mg 2cp (Vtg)', 110, 1.00, 10.00),
		(2029, 1011, 7898049798766, 141, 'Vitpurum Ferro 30ml (Vtd)', 50, 3.92, 10.00),
		(2029, 1011, 7898049793068, 142, 'Beritin Bc 4mg/5ml Xpe C/240ml (Vtd)', 500, 4.66, 10.00);