SELECT  Warehouses.CodeName As Warehouse,
        SUM(WarehouseProduct.Quantity) AS Product_quantity,
        Producers.ProducerName AS Producer
FROM Products JOIN Producers ON Products.ProducerId = Producers.Id
              JOIN WarehouseProduct ON Products.Id = WarehouseProduct.ProductId
              JOIN Warehouses ON WarehouseProduct.WarehouseId = Warehouses.Id
GROUP BY Producer