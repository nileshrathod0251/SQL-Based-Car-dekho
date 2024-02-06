create schema cars;
use cars;
-- READ DATA--
select * from car_dekho;
-- Total car: to get a count of total recors--
select count(*) from car_dekho;
-- how many car avalibale in 2023?--
select count(*) from car_dekho where year = 2023;
-- how many car avalibale in 2020,2021,2022?--
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
 -- GROUP BY FOR 2020,2021,2023--
 select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- print the total of all cars by year. do not shoe all details--
select year ,count(*) from car_dekho group by year;
-- how many car diesel cars will there be in 2020?--
select count(*) from car_dekho where year = 2020 and fuel = "Diesel"; #20
-- how many car Petro cars will there be in 2020? --
select count(*) from car_dekho where year = 2020 and fuel = "Petrol"; #51
-- print All the fuel car(petrol,diesel,CNG) come by all year--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;
-- there were more than 100 cars in given year, which year had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;
-- All cars count details between 2015 and 2023,--
select count(*) from car_dekho where year between 2015 and 2023; #4124
-- All cars count details between 2015 and 2023 we need complete list--
select * from car_dekho where year between 2015 and 2023;

-- END-- 