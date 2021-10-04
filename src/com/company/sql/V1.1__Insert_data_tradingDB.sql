insert into materialProd (name, documentId)
values ('factA', 11), ('factB', 12), ('factC', 13), ('factD', 14);

insert into goodProd (name, documentID)
values ('compA', 21), ('compB', 22), ('compC', 23), ('compD', 24);

insert into matprod_goodprod (matProdID, goodProdID)
values (1, 2), (3, 1), (4, 3), (2, 4), (1, 3);

insert into supplier (name, phoneNumber, goodProdID)
values ('Ron', '89172947889', 2), ('Alex', '89174278739', 3), ('Tom', '89274839274', 1), ('Harry', '89198764827', 4);

insert into good (title, goodProdID)
values ('OPPO Reno 5', 2), ('Apple iPhone 12', 3), ('Samsung S20', 1), ('Samsung S21', 1);

insert into shop (name, address, supplierID)
values ('DNS', 'Kazan, Zakieva, 1', 2), ('DNS', 'Kazan, Ershova, 78B', 1), ('Citilink', 'Kazan, Sadikovoy, 30', 3);

insert into orders (goodID, supplierID, shopID)
values (1, 3, 3), (2, 1, 2), (3, 2, 1);
