-- List of manufacture countrys and count of types of stockitems of each country (json)
json_value(CustomFields, '$.CountryOfManufacture') as ManufactureCountry, 
count(CustomFields)
from Warehouse.StockItems
group by json_value(CustomFields, '$.CountryOfManufacture')