USE [VAPEDB]

CREATE TABLE product(
	[product_id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[product_name] VARCHAR(255) NOT NULL,
	[product_brand] VARCHAR(255) NOT NULL,
	[product_description] VARCHAR(255) NOT NULL,
	[product_category] VARCHAR(255) NOT NULL,
	[product_stocks] VARCHAR(255) NOT NULL,
	[product_supplier_price] INTEGER NOT NULL,
	[product_store_price] INTEGER NOT NULL,
	[product_status] VARCHAR(255) NOT NULL,
	[product_supplier_name] VARCHAR(255) NOT NULL,
	[product_supplier_address] VARCHAR(255) NOT NULL,
	[product_supplier_tin] VARCHAR(255) NOT NULL,
	[product_modified_by] VARCHAR(255) NOT NULL,
	--use inner join to find name
	[product_added_by] INTEGER NOT NULL, 
	[product_date_modified] DATETIME DEFAULT(getdate()) NOT NULL,
	[product_date_created] DATETIME DEFAULT(getdate()) NOT NULL,

	FOREIGN KEY ([product_added_by])
    REFERENCES dbo.users ([user_id]) 
	ON DELETE CASCADE
    ON UPDATE CASCADE
)