CREATE TABLE shopdata(
  productID INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10,2),
  total_sale DECIMAL(10,2)
  



);


INSERT INTO shopdata(product_name,price,total_sale)
VALUES("pokra",200,23);

SELECT * FROM shopdata;