USE [VAPEDB]

CREATE TABLE transactions(
	[transaction_id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[transaction_number] INTEGER NOT NULL,
	[transaction_product_id] INTEGER NOT NULL,
	[transaction_product_name] VARCHAR(255) NOT NULL,
	[transaction_product_brand] VARCHAR(255) NOT NULL,
	[transaction_product_description] VARCHAR(255) NOT NULL,
	[transaction_product_category] VARCHAR(255) NOT NULL,
	[transaction_product_quantity] INTEGER NOT NULL,
	[transaction_product_price] INTEGER NOT NULL,
	[transaction_product_total_price] INTEGER NOT NULL,
	[trsnsaction_product_revenue] INTEGER NOT NULL,
	[transaction_product_supplier_name] VARCHAR(255) NOT NULL,
	[transaction_product_supplier_address] VARCHAR(255) NOT NULL,
	[transaction_product_supplier_tin] VARCHAR(255) NOT NULL,
	[transaction_status] VARCHAR(255) NOT NULL,
	--use inner join to find name
	[transaction_made_by] INTEGER NOT NULL, 
	transaction_date_created DATETIME DEFAULT(getdate()) NOT NULL,

	FOREIGN KEY ([transaction_made_by])
    REFERENCES dbo.users ([user_id]) 
	ON DELETE CASCADE
    ON UPDATE CASCADE
)