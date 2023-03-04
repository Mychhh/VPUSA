USE [VAPEDB]

CREATE TABLE sales(
	[sales_id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[sales_transaction_id] INTEGER NOT NULL,
	[sales_product_id] INTEGER NOT NULL,
	[sales_product_name] VARCHAR(255) NOT NULL,
	[sales_product_brand] VARCHAR(255) NOT NULL,
	[sales_product_description] VARCHAR(255) NOT NULL,
	[sales_product_category] VARCHAR(255) NOT NULL,
	[sales_product_quantity] INTEGER NOT NULL,
	[sales_product_price] INTEGER NOT NULL,
	[sales_product_total_price] INTEGER NOT NULL,
	[sales_product_revenue] INTEGER NOT NULL,
	[sales_product_supplier_name] VARCHAR(255) NOT NULL,
	[sales_product_supplier_address] VARCHAR(255) NOT NULL,
	[sales_product_supplier_tin] VARCHAR(255) NOT NULL,
	[sales_date_created] DATETIME DEFAULT(getdate()) NOT NULL,

	FOREIGN KEY ([sales_transaction_id])
    REFERENCES transactions([transaction_id]) 
	ON DELETE CASCADE
    ON UPDATE CASCADE
)