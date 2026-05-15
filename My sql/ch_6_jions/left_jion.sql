CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);


CREATE TABLE payment (
    amount DECIMAL(10, 2) NOT NULL,
    payment_mode VARCHAR(50),
    payment_date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);


INSERT INTO customer VALUES 
(1,'John', 'Doe'),
(2,'Jane', 'Smith'),
(3,'Michael', 'Brown'),
(4,'Emily', 'Davis');

INSERT INTO payment VALUES 
(150.00, 'Credit Card', '2026-04-10',1),
( 45.50, 'PayPal', '2026-04-12',2),
( 200.00, 'Cash', '2026-04-15',4),
( 12.99, 'Credit Card', '2026-04-16',1);


select*from customer AS c
inner join payment as p 
on c.customer_id=p.customer_id
