CREATE USER IF NOT EXISTS 'univesp24'@'localhost' IDENTIFIED WITH mysql_native_password BY 'univesp24';
GRANT ALL PRIVILEGES ON univesp24.* TO 'univesp24'@'localhost';
FLUSH PRIVILEGES;