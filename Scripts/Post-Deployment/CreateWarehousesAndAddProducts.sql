INSERT INTO Warehouses (CodeName, Adress) VALUES ('WH_UA_Dnypro_1', 'Dnypro'), ('WH_UA_Kyiv_1', 'Kyiv')

EXECUTE AddProductToWarehouse 1, 1, 200
EXECUTE AddProductToWarehouse 1, 1, 300
EXECUTE AddProductToWarehouse 1, 3, 400
EXECUTE AddProductToWarehouse 2, 2, 300
EXECUTE AddProductToWarehouse 2, 4, 500
EXECUTE AddProductToWarehouse 1, 2, 400
EXECUTE AddProductToWarehouse 2, 3, 300

EXECUTE AddProductToWarehouse 2, 5, 300
EXECUTE DeleteProduct 5