create generator cont_produto;
create table tab_produto (
   cod_produto int not null primary key,
   des_nomeproduto varchar(100),
   des_descricao varchar(100),
   val_preco float
  );
create trigger tab_produto_gnr for tab_produto
active before insert position 0
as
begin
  if (new.cod_produto is null) then
    new.cod_produto = gen_ID(cont_produto, 1);
end;

insert into tab_produto (des_nomeproduto, des_descricao, val_preco) values ('HD EXTERNO SEAGATE 1 TB', 'HD EXTERNO', 550);
insert into tab_produto (des_nomeproduto, des_descricao, val_preco) values ('PEN DRIVE 16 GB', 'PEN DRIVE', 21.50);

select * from tab_produto

create generator cont_venda;
create table tab_venda (
   cod_venda int not null primary key,
   dta_venda date,
   des_nomecliente varchar(100),
   des_cep varchar(10),
   des_endereco varchar(100),
   des_complemento varchar(50),
   des_bairro varchar(100),
   des_cidade varchar(100),
   des_estado varchar(2),
   val_total_venda float
  );
create trigger tab_venda_gnr for tab_venda
active before insert position 0
as
begin
  if (new.cod_venda is null) then
    new.cod_venda = gen_ID(cont_venda, 1);
end;

insert into tab_venda (cod_venda, dta_venda, des_nomecliente, des_cep, des_endereco, des_complemento, des_bairro, des_cidade, des_estado)
values (1, '2024-01-01', 'ALVARO VIEIRA DA SILVA', '34004-645', 'RUA MANOEL MOREIRA DA SILVA 70', 'APTO 202', 'PAU POMBO', 'NOVA LIMA', 'MG');
insert into tab_venda (cod_venda, dta_venda, des_nomecliente, des_cep, des_endereco, des_complemento, des_bairro, des_cidade, des_estado)
values (2, '2024-01-01', 'JOICE AMORIM', '34002-465', 'ALAMEDA DAS TAMAREIRAS 36', 'CASA', 'OURO VELHO', 'NOVA LIMA', 'MG');


select * from tab_venda

create generator cont_itens;
create table tab_venda_item (
   id_venda int not null,
   cod_venda int not null,
   cod_produto int not null,
   des_descricao varchar(100),
   val_quantidade int not null,
   val_preco_unitario float,
   val_total_venda float
);
create trigger tab_venda_item_gnr for tab_venda_item
active before insert position 0
as
begin
  if (new.id_venda is null) then
    new.id_venda = gen_ID(cont_itens, 1);
end;

insert into tab_venda_item (cod_venda, cod_produto, des_descricao, val_quantidade, val_preco_unitario, val_total_venda)
values (1, 1, 'HD EXTERNO SEAGATE 2 TB', 1, 760, 760)

insert into tab_venda_item (cod_venda, cod_produto, des_descricao, val_quantidade, val_preco_unitario, val_total_venda)
values (2, 2, 'PEN DRIVE 16 GB', 2, 22, 44)

select * from tab_produto
select * from tab_venda
select * from tab_venda_item

