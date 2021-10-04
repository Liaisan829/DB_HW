create table materialProd
(
    id         serial primary key,
    name       char(30),
    documentId int not null
);

create table goodProd
(
    id         serial primary key,
    name       char(30),
    documentID int not null,
    matProdID int,
    foreign key (matProdID) references materialProd(id)
);

create table matProd_goodProd
(
    matProdID  int,
    goodProdID int,
    foreign key (matProdID) references materialProd (id),
    foreign key (goodProdID) references goodProd (id)
);

create table supplier
(
    id          serial primary key,
    name        char(30),
    phoneNumber char(12),
    goodProdID  int,
    foreign key (goodProdID) references goodProd (id)
);

create table good
(
    id         serial primary key,
    title      char(20),
    goodProdID int,
    foreign key (goodProdID) references goodProd (id)
);

create table shop
(
    id         serial primary key,
    name       char(20),
    address    char(100),
    supplierID int,
    foreign key (supplierID) references supplier (id)
);

create table orders
(
    id         serial primary key,
    goodID     int,
    supplierID int,
    shopID     int,
    foreign key (goodID) references good (id),
    foreign key (supplierID) references supplier (id),
    foreign key (shopID) references shop (id)
);

create table good_order(
                           goodID int,
                           orderID int,
                           foreign key (goodID) references good(id),
                           foreign key (orderID) references orders(id)
);