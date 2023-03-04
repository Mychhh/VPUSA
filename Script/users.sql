USE [VAPEDB]

CREATE TABLE users(
	[user_id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[user_name] VARCHAR(255) NOT NULL,
	[user_password] VARCHAR(255) NOT NULL,
	[user_type] VARCHAR(255) NOT NULL,
	[user_status] VARCHAR(255) NOT NULL,
	[user_last_login] DATETIME DEFAULT(getdate()) NOT NULL,
	[user_last_logout] DATETIME DEFAULT(getdate()) NOT NULL,
	[user_date_modified] DATETIME DEFAULT(getdate()) NOT NULL,
	[user_date_created] DATETIME DEFAULT(getdate()) NOT NULL,

)