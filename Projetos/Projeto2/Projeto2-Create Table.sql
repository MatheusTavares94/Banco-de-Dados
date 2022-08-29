CREATE TABLE funcionario(id_funcionario SERIAL PRIMARY KEY,
						 nome_funcionario VARCHAR(20) NOT NULL,
						 cpf_funcionario CHAR(11) NOT NULL UNIQUE);
						 
CREATE TABLE categoria(
			 			codigo_categoria SERIAL PRIMARY KEY, 
						nome_categoria VARCHAR(20) NOT NULL UNIQUE, 
						descricao_categoria VARCHAR(40) NOT NULL,
						id_funcionario int, 
						FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) 
						ON UPDATE CASCADE ON DELETE CASCADE);
			 
CREATE TABLE cliente(
					 id_cliente SERIAL PRIMARY KEY,
					 nome_cliente VARCHAR(20) NOT NULL, 
					 login VARCHAR(20) NOT NULL UNIQUE, 
					 email VARCHAR(40) NOT NULL UNIQUE, 
					 cpf_cliente CHAR(11) NOT NULL UNIQUE,
					 data_nascimento_cliente date NOT NULL);
					 
CREATE TABLE endereco(
					  codigo_endereco SERIAL  PRIMARY KEY, 
					  rua VARCHAR(40) NOT NULL,
					  bairro VARCHAR(30) NOT NULL,
					  cidade VARCHAR(30) NOT NULL,
					  complemento VARCHAR(8),
					  uf CHAR(2) NOT NULL,
					  numero VARCHAR(5) NOT NULL, 
					  id_cliente int,
					  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) 
					  ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE pedido(
					id_pedido SERIAL PRIMARY KEY,
					data_pedido date NOT NULL, 
					status VARCHAR(10) NOT NULL, 
				    id_cliente int, 
					FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
					ON UPDATE CASCADE ON DELETE CASCADE);

CREATE TABLE produto(
					 codigo_produto SERIAL PRIMARY KEY,
					 nome_produto VARCHAR(20) NOT NULL,
					 descricao VARCHAR(40), 
					 qtd_produto int NOT NULL,
					 data_fabricacao date NOT NULL,
					 valor_un NUMERIC NOT NULL,
				     codigo_categoria int, id_funcionario int,
					 FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo_categoria)
					 ON UPDATE CASCADE ON DELETE CASCADE,				     
					 FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario) 
					 ON UPDATE CASCADE ON DELETE CASCADE);
					 
CREATE TABLE venda(
				   id_venda SERIAL PRIMARY KEY,
				   valor_venda NUMERIC NOT NULL,
				   desconto NUMERIC NOT NULL, 
				   frete NUMERIC NOT NULL,
				   qtd NUMERIC,
				   id_pedido int,codigo_produto int,
				   FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido)
				   ON UPDATE CASCADE ON DELETE CASCADE,				   
				   FOREIGN KEY (codigo_produto) REFERENCES produto(codigo_produto)
				   ON UPDATE CASCADE ON DELETE CASCADE);





