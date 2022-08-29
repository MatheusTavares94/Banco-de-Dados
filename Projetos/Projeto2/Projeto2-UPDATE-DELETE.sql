--UPDATE de categorias alocadas aos produtos
UPDATE produto SET codigo_categoria=4 WHERE codigo_categoria=5;
UPDATE produto SET codigo_categoria=3 WHERE codigo_categoria=4;
UPDATE produto SET codigo_categoria=2 WHERE codigo_categoria=3;
UPDATE produto SET codigo_categoria=6 WHERE codigo_categoria=2;

--DELETE de um produto da tabela
DELETE FROM produto WHERE codigo_produto=7;