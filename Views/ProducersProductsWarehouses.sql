CREATE VIEW ProducersProductsWarehouses AS
SELECT  Products.ProductName AS Product,
        Producers.ProducerName AS Producer, 
        Warehouses.CodeName As Warehouse
FROM Products JOIN Producers ON Products.ProducerId = Producers.Id
              JOIN WarehouseProduct ON Products.Id = WarehouseProduct.ProductId
              JOIN Warehouses ON WarehouseProduct.WarehouseId = Warehouses.Id