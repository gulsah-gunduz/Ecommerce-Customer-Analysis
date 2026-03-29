--bana sadece toplam harcamasý 1000'den fazla olan müþterileri (CUSTOMER_UNIQUE_ID) getir. 
--Ama sadece PRICE deðeri 100'den büyük olan sipariþleri dikkate al.

SELECT CUSTOMER_UNIQID,
FORMAT(SUM(PRICE),'N','tr-TR') AS TOTAL_REVENUE
FROM order_customer
WHERE PRICE>100
GROUP BY CUSTOMER_UNIQID
HAVING SUM(PRICE)>1000
ORDER BY TOTAL_REVENUE