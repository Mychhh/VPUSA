--users
INSERT INTO users ([user_name], [user_password], [user_type], [user_status])
VALUES ('admin', 'admin', 'admin', 'active');

UPDATE users
SET [user_date_modified] = GETDATE()
WHERE [user_id] = 1

--product

INSERT INTO products ([product_name], [product_brand], [product_description], [product_category], 
					  [product_stocks], [product_supplier_price], [product_store_price],
					  [product_status], [product_supplier_name], [product_supplier_address],
					  [product_supplier_tin],
					  [product_modified_by],
					  [product_added_by])
VALUES ('product', 'product', 'product', 'product', 1, 1, 1, 'active', 'product', 'product', 1, 1, 1);

UPDATE products
SET [product_store_price] = 2
WHERE [product_id] = 1

--transactions

INSERT INTO transactions ( [transaction_number],[transaction_product_id],
						   [transaction_product_name], [transaction_product_brand], 
						   [transaction_product_description], [transaction_product_category],
						   [transaction_product_quantity], [transaction_product_price], 
						   [transaction_product_total_price], [trsnsaction_product_revenue],
						   [transaction_product_supplier_name],
						   [transaction_product_supplier_address], 
						   [transaction_product_supplier_tin],
						   [transaction_status],
						   [transaction_made_by] )
VALUES (1, 1, 
		'product', 'product', 'product', 'product', 
		1, 1, 1, 1, 'product', 'product', 'product', 'active', 1);

UPDATE transactions
SET [transaction_product_quantity] = 2
WHERE [transaction_id] = 1

--sales

INSERT INTO sales (  [sales_transaction_id]
					,[sales_product_id]

					,[sales_product_name]
					,[sales_product_brand]
					,[sales_product_description]
					,[sales_product_category]

					,[sales_product_quantity]
					,[sales_product_price]
					,[sales_product_total_price]
					,[sales_product_revenue]

					,[sales_product_supplier_name]
					,[sales_product_supplier_address]
					,[sales_product_supplier_tin])
VALUES (1, 1, 'product', 'product', 'product', 'product', 
		2, 2, 1, 1, 'product', 'product', '1');

UPDATE sales
SET [sales_product_quantity] = 1
WHERE [sales_id] = 1