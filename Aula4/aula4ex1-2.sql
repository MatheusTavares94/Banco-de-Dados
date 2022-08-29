CREATE TABLE empregado(matricula int  PRIMARY KEY, nome VARCHAR(40) NOT NULL,
					 email VARCHAR(30) UNIQUE, codigo_setor int, 
					 FOREIGN KEY (codigo_setor) REFERENCES setor(codigo_setor) ON UPDATE CASCADE ON DELETE NO ACTION);
INSERT INTO setor (nome) VALUES ('RH');
INSERT INTO setor (nome) VALUES('CPD');
INSERT INTO setor (nome) VALUES('COMPRAS');
INSERT INTO empregado (matricula, nome, email, codigo_setor) VALUES (123,'JOÃO DA SILVA','joão@gmail.com',1);
INSERT INTO empregado (matricula, nome, email, codigo_setor) VALUES (1234,'ANA DA SILVA','ana@gmail.com',2);

UPDATE setor SET codigo_setor=100 WHERE codigo_setor=1;

SELECT * FROM setor;
SELECT * FROM empregado;
----------------------------------------------------------------------------------------------------

CREATE TABLE agencia(numero_banco int PRIMARY KEY ,numero_agencia int , nome_banco VARCHAR(30));
CREATE TABLE conta(numero_conta int  PRIMARY KEY, saldo NUMERIC, titular VARCHAR(40) NOT NULL, numero_banco int, 
					 FOREIGN KEY (numero_banco) REFERENCES agencia(numero_banco) ON UPDATE CASCADE ON DELETE CASCADE);

INSERT INTO agencia (numero_banco, numero_agencia, nome_banco) VALUES (123,326, 'SANTANDER' );
INSERT INTO agencia (numero_banco, numero_agencia, nome_banco) VALUES (124,478, 'ITAU' );
INSERT INTO agencia (numero_banco, numero_agencia, nome_banco) VALUES (125,326, 'BRADESCO' );
INSERT INTO conta (numero_conta, saldo, titular, numero_banco) VALUES (1234,32615372, 'JOÃO',123);
INSERT INTO conta (numero_conta, saldo, titular, numero_banco) VALUES (1235,2000, 'MARIA',124);
INSERT INTO conta (numero_conta, saldo, titular, numero_banco) VALUES (1236,3261, 'ANA',125);
INSERT INTO agencia (numero_banco,numero_agencia, nome_banco) VALUES (45451,123,'BANCO DO BRASIL');
INSERT INTO agencia (numero_banco,numero_agencia, nome_banco) VALUES (99992,456,'CAIXA');

UPDATE agencia set nome_banco = 'ITAÚ' WHERE numero_banco = 124;
UPDATE agencia set nome_banco = 'BRADESCO' WHERE numero_banco = 125;

SELECT * FROM agencia;
SELECT * FROM conta;

DELETE FROM agencia WHERE numero_banco=124;

SELECT * FROM agencia WHERE nome_banco LIKE 'B%'