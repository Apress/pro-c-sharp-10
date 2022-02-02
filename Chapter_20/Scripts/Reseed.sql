USE AutoLot;  
GO  
DBCC CHECKIDENT ('dbo.Inventory',reseed,1);  
GO  
DBCC CHECKIDENT ('dbo.Inventory');  
GO  