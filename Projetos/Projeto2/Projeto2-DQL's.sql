--Mostra a média da quantidade de produtos e a média dos preços
SELECT ROUND(AVG(QTD_produto),2) media_produto ,ROUND(AVG(valor_un),2) media_preco FROM produto;

--Mostra o valor unitário de cada produto em ordem decrescente
SELECT descricao, valor_un from produto GROUP by codigo_produto
ORDER BY valor_un DESC;

--Mostra a quantidade de produtos cadastrados a cada uma das categorias
SELECT c.nome_categoria categoria, COUNT(c.codigo_categoria) quantidade from produto p, categoria c
WHERE p.codigo_categoria = c.codigo_categoria GROUP BY c.codigo_categoria;

--Mostra o nome do cliente e o quanto ele gastou
SELECT c.nome_cliente, v.valor_venda, v.qtd, v.valor_venda * v.qtd AS total  FROM cliente c, pedido p, venda v
WHERE c.id_cliente = p.id_cliente AND p.id_pedido = v.id_pedido;

--Nota fiscal
SELECT pe.id_pedido, c.nome_cliente, c.cpf_cliente, e.rua, e.numero,
e.complemento, e.bairro, e.cidade,e.uf, pe.data_pedido, pr.nome_produto,
v.qtd, pr.valor_un, v.desconto as desconto_unidade,v.qtd * v.valor_venda as total 
FROM pedido pe
JOIN cliente c ON c.id_cliente = pe.id_cliente
JOIN endereco e ON e.id_cliente = c.id_cliente
JOIN venda v ON pe.id_pedido = v.id_pedido 
JOIN produto pr ON v.codigo_produto = pr.codigo_produto
WHERE c.id_cliente=1;


