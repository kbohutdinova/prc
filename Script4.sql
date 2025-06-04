CREATE USER 'store_manager'@'localhost' IDENTIFIED BY 'Password1/';
CREATE USER 'sales_clerk'@'localhost' IDENTIFIED BY 'Password2/';
CREATE USER 'analyst'@'localhost' IDENTIFIED BY 'Password3/';

GRANT ALL PRIVILEGES ON store.* TO 'store_manager'@'localhost';

GRANT SELECT ON store.products TO 'sales_clerk'@'localhost';
GRANT SELECT, INSERT ON store.orders TO 'sales_clerk'@'localhost';

GRANT SELECT, INSERT ON store.order_items TO 'sales_clerk'@'localhost';

GRANT SELECT ON store.* TO 'analyst'@'localhost';
