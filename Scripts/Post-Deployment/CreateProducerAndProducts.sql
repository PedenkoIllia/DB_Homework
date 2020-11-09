DECLARE @ProductTable ProductTable
DECLARE @ProducerCode int
DECLARE	@ProducerName nvarchar(100)

SET @ProducerCode = 123
SET @ProducerName = 'Sum Sang'

INSERT INTO @ProductTable VALUES ('Telephone')
INSERT INTO @ProductTable VALUES ('Brick')

EXECUTE CreateProducerAndHisProducts @ProducerCode, @ProducerName, @ProductTable

DELETE FROM @ProductTable

SET @ProducerCode = 456
SET @ProducerName = 'Unknown production'

INSERT INTO @ProductTable VALUES ('Balloon')
INSERT INTO @ProductTable VALUES ('Banana')

EXECUTE CreateProducerAndHisProducts @ProducerCode, @ProducerName, @ProductTable