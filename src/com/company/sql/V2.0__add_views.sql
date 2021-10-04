create view DnsShop
as select *
   from shop
   where name = 'DNS' and address like '%Aznakayevo%'
        with local check option;

select * from DnsShop;


create view supplier_Tom_elder18
as select * from supplier
   where name = 'Tom'
        with cascaded check option;

select * from supplier_Tom_elder18;
