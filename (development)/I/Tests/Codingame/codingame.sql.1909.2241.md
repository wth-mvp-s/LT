-- SQL request(s)​​​​​​‌​‌​​‌​​​‌‌​‌‌​‌​​‌‌​​​​​ below
SELECT *
FROM tbl_Bakery_Order_Facts
INNER JOIN tbl_Items ON tbl_Bakery_Order_Facts.Item_ID = tbl_Items.Item_ID
INNER JOIN tbl_Departments ON tbl_Bakery_Order_Facts.Department_ID = tbl_Departments.Department_ID
INNER JOIN tbl_OrderType ON tbl_Bakery_Order_Facts.Order_Type = tbl_OrderType.Order_Type


-- SQL request(s)​​​​​​‌​‌​​‌​​​‌‌​‌‌​‌​​‌‌​​​​​ below
SELECT *
FROM tbl_Bakery_Order_Facts
INNER JOIN tbl_Departments ON tbl_Bakery_Order_Facts.Department_ID = tbl_Departments.Department_ID
INNER JOIN tbl_OrderType ON tbl_Bakery_Order_Facts.Order_Type = tbl_OrderType.Order_Type

