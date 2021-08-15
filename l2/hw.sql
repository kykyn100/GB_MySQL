-- Создание БД и таблицы
create database if not exists example;
create table if not exists example.users (
    id INT,
    name varchar(255)
);

-- Создание базы для развертывания бекапа
create database if not exists sample;


/*
Бекап бази и восстановление в другую:

mysqldump example > dump_example.sql && mysql sample < dump_example.sql

Бекап 100 строк таблицы mysql.help_keyword:

mysqldump mysql help_keyword --order-by-primary --where="help_keyword_id < 100" > test.sql

*/