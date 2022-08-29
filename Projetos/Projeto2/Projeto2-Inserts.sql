--Inserção de dados na tabela

--Tabela funcionario

INSERT INTO funcionario(cpf_funcionario,nome_funcionario)
VALUES
		('15397100099','Alex Beludo'),
		('00775595098','Aderbar Santos'),
		('04911496037','Leopoldo Rebelo'),
		('41508890072','Dorival Silvestre'),
		('91354863097','Arrascaeta Souza');
			
--Tabela categoria

INSERT INTO categoria(nome_categoria,descricao_categoria,id_funcionario)
VALUES
		('Computadores','Computadores e seus acessórios', 2),
		('Celulares','Celulares, fones de ouvido, capinhas etc', 3),
		('Eletrodomésticos','Fogões, geladeiras e utensílios', 4),
		('Jogos e Consoles','Jogos, consoles e acessórios', 5),
		('Roupas','Peças masculinas e femininas', 6);

--Tabela cliente

INSERT INTO cliente
	(
		nome_cliente,cpf_cliente,
		login, email,
		data_nascimento_cliente
	)
VALUES
	('Gaspar Nicolau', '76748944015', 'gasparzinho', 'gasparzinho_amt@gmail.com', '1978-05-09'),
	('Herisomar Dias', '74922601490', 'herisomar', 'herisomar.figueiras@hotmail.com', '1943-05-09'),
	('Arthur Coimbra', '21694773493', 'galinho10', 'zico_10@flamail.com', '1953-03-03'),				   
	('Caroline Abreu', '81733484051', 'carol_abreu','carol_abreu123@gmail.com', '2001-07-12'),	
	('Helenice Vidal', '88301612843', 'helenice-vidal', 'helenice-vidal@outlook.com', '1971-05-30');

--Tabela endereco

INSERT INTO endereco
	(
		rua,bairro,
		complemento, cidade,
		uf, numero,
		id_cliente
	)
VALUES
	('Dom Pedro II','Centro', 'Quadra6', 'Itacoatiara', 'AM', '1715', 1),
	('Rua Luís Gil','Santa Cruz', 'Terreo2','Campina Grande', 'PB', '1704', 6),
	('Beco da União', 'Maiobinha', 'Subsolo5','São Luís', 'MA', '9733', 3),
	('Rua Kaffa Saad', 'Costa Dourada', 'Portão4', 'São Luís', 'ES', '3784', 4),
	('Alameda Primavera', 'Jardim Primavera', 'Lote1', 'Duque de Caxias', 'RJ', '2056', 5);

--Tabela pedido

INSERT INTO pedido(data_pedido,status,id_cliente)
VALUES
	('2022-08-22','Em análise', 1),
	('2022-07-12','Cancelado', 6),
	('2022-06-29','Recebido', 3),	
	('2022-04-15','Recebido', 4),
	('2022-07-08','A caminho', 5);

--Tabela produto

INSERT INTO produto
	(
		nome_produto,descricao,
		qtd_produto, data_fabricacao,
		valor_un, codigo_categoria,
		id_funcionario
	)
VALUES
	('SSD','SSD 240GB Goldenfir',35, '2020-06-08', 199.99, 6, 6),
	('HD','HD 1TB SATA3 5400 RPM', 275, '2017-02-22', 289.99, 6, 6),
	('Mouse','Mouse Gamer Razer Deathadder Essential', 352, '2018-04-15', 279.90, 6, 6),
	('Celular','IPhone 11 Pro Max 256GB', 30, '2017-12-25', 4839.90, 2, 2),
	('Roupa','Calça Tactel simples ', 20, '2014-08-14', 30, 5, 5),
	('Fone de Ouvido','Fone De Ouvido Motorola Earbuds 105', 48, '2019-11-23', 67.15, 2, 2),
	('Fogão','Fogão 5 Bocas Electrolux Prata Automático', 79, '2012-05-13', 1424.05, 3, 3),
	('Geladeira','Geladeira Electrolux Top Freezer 382L', 108, '2014-06-27', 2639.12, 3, 3),
	('Console','PlayStation 5 Limited JF Edition 825GB SSD - Preto', 225, '2016-03-10', 6249.90, 4, 4);

--Tabela venda

INSERT INTO venda
	(
		valor_venda,desconto,
	    qtd,frete, 
		id_pedido, codigo_produto
	)
	
VALUES
	(6149.90, 100, 5, 0, 3, 11),
	(35, 2, 1, 7, 4, 7),
	(179.99, 20, 3, 0, 7, 3),
	(1374.05, 50, 1, 0, 6, 9),
	(4739.90, 100, 4, 0, 5, 6);
	



