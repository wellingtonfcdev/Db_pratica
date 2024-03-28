SELECT TOP 10 * FROM [dbo].[TB_OLIST_ORDER_ITEMS]


-- Criando tabela produ��o definindo os tipos de dados
CREATE TABLE TB_ACT_OLIST_ORDER_ITEMS
(
	ORDER_ID NVARCHAR(150),
	ORDER_ITEM_ID NVARCHAR(100),
	ORDER_PRODUCT_ID NVARCHAR(150),
	ORDER_SELLER_ID NVARCHAR(150),
	ORDER_SHIPPING_LIMIT_DATE DATETIME,
	ORDER_PRICE FLOAT,
	ORDER_FREIGTH_VALUE FLOAT
)

--Altera��o do tipo de dado de um campo
ALTER TABLE TB_OLIST_ORDER_ITEMS ALTER COLUMN SHIPPING_LIMIT_DATE DATE

SELECT * FROM TB_ACT_OLIST_ORDER_ITEMS

--Insert de uma tabela de carga para uma tabela produ��o com todos os campos
INSERT INTO TB_ACT_OLIST_ORDER_ITEMS
SELECT * FROM [dbo].[TB_OLIST_ORDER_ITEMS]