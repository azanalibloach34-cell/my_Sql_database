create table shopdata(
  productid int auto_increment primary key,
  product varchar(100),
  category varchar(100),
  Amount decimal(10,2),
  Saledate date


);


insert into shopdata(product,category,Amount,Saledate)
values  ("pen","stationary",25,"2024-03-01"),
        ("Notebook","stationary",50,"2024-03-01"),
        ("Mouse","ELectronics",500,"2024-03-02"),
        ("keyboard","ELectronics",700,"2024-03-02"),
        ("Chargar","ELectronics",300,"2024-03-03"),
        ("Bag","Accesories",1000,"2024-03-04");

select*from shopdata;

-- count function in sql
select count(*) from shopdata;

-- sum of all in sql
select sum(Amount) from shopdata;

-- avg in sql
select avg (Amount) from shopdata;

-- min and max value
select min(Amount) from shopdata;
select max(Amount) from shopdata;


-- grouping data

select category , sum(Amount) from shopdata
group by category;