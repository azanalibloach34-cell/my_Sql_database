create table sales(
 sakesID int auto_increment primary key,
 product varchar(50),
 category varchar(50),
 Amount decimal(10,2),
 saledate date
 

);


insert into sales(product,category,Amount,saledate) values
("pen","stationary",25.00,"2025-03-01"),
("notebook","stationary",50.00,"2025-03-01"),
("Mouse","Electronics",500.00,"2025-03-02"),
("keyboard","Electronics",700.00,"2025-03-02"),
("charger","Electronics",300.00,"2025-03-03"),
("bag","accessories",3000.00,"2025-03-01");



with categorytotal as (
select category,sum(Amount) as totalsales from sales
group by category

)

select category,totalsales from categorytotal
where totalsales>1000;