create table marca (cod_marca serial primary key, nome varchar(30));

insert into marca (nome) values('Hyunday');
insert into marca (nome) values('Ford');
insert into marca (nome) values('Renault');
insert into marca (nome) values('Nissan');
insert into marca (nome) values('Kia');
insert into marca (nome) values('Fiat');
insert into marca (nome) values('VW');

create table modelo (cod_modelo serial primary key, descricao varchar(40),
preco numeric, cod_marca int,
foreign key (cod_marca) references marca(cod_marca) on update cascade on delete cascade);
insert into modelo (descricao,preco,cod_marca) values('Gol',30000,7);
insert into modelo (descricao,preco,cod_marca) values('HB20',32000,1);
insert into modelo (descricao,preco,cod_marca) values('HB20S',36000,1);
insert into modelo (descricao,preco,cod_marca) values('Cerato',26200,5);
insert into modelo (descricao,preco,cod_marca) values('Ka',23500,2);
insert into modelo (descricao,preco,cod_marca) values('ECO SPORT',5500,2);
insert into modelo (descricao,preco,cod_marca) values('SIENA',45000,6)

SELECT  mo.descricao, mo.preco, ma.nome FROM marca AS ma, modelo AS mo
WHERE mo.cod_marca = ma.cod_marca;

select round(avg(preco),2) media from modelo;

SELECT  mo.descricao, mo.preco, ma.nome FROM marca ma, modelo mo
WHERE mo.cod_marca = ma.cod_marca;

select round(avg(preco),2) media from modelo WHERE cod_marca=1;

--modelos acima da média de preço

select m.descricao, m.preco from modelo m 
where preco >(select  ROUND(AVG(preco),2) Media from modelo);

--agrupamento e exibir menor preço

SELECT cod_marca, min(preco) from modelo group by cod_marca, descricao;

--todos os modelos acima de 25000

SELECT cod_marca, min(preco) from modelo GROUP by cod_marca HAVING min(preco)>25000;

--todas as marcas que não tem modelo cadastrado
SELECT * FROM marca WHERE not exists(
SELECT * FROM modelo WHERE modelo.cod_marca = marca.cod_marca);
