update goodProd set matProdID = 3 where id = 1;
update goodProd set matProdID = 1 where id = 2;
update goodProd set matProdID = 4 where id = 3;
update goodProd set matProdID = 2 where id = 4;

insert into good_order
values (1, 1), (2, 2), (3, 3);