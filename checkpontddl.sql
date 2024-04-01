CREATE TABLE Customer (
    Customer_Id VARCHAR(20) PRIMARY KEY,
    Customer_name VARCHAR(20) NOT NULL,
    Customer_tel INT
);

CREATE TABLE Product (
    Product_Id VARCHAR(20) PRIMARY KEY,
    Product_name VARCHAR(20) NOT NULL,
    Price INT NOT NULL,
    Category VARCHAR(20)
);

CREATE TABLE Orders (
    Customer_Id VARCHAR(20),
    Product_Id VARCHAR(20),
    Quantity INT,  -- Corrected typo here
    Total_amount INT,
    OrderDate DATE DEFAULT CURRENT_DATE(),
    CONSTRAINT fk1_Customer_Id FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
    CONSTRAINT fk2_Product_Id FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
);






