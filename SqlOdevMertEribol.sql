SELECT *  from customers  where country='UK' ;

 --Ülkesi Birleşik krallık olan 7 adet müşteri vardır...(İngiltere diye aratınca ilk başta bulamamıştım...)

SELECT * from orders where ship_country='Germany' ;

--Almanyaya giden 122 adet spiriş var

SELECT * from products  where  category_id=2 and unit_price >20 ;

-- category_id'si 2 olan ve fiyatı 20$'dan yüksek olan  7 adet ürün vardır.

SELECT * from suppliers where country='Italy'; 
--italyadan mal alan 2 adet tedarikçi vardır.