use ftips;
select * from project1;

#1.
select item_identifier from project1;

#2.
select count(item_identifier) from project1;

#3.
select max(item_weight) from project1;
#or
select item_identifier, item_weight from project1 where item_weight in (select max(item_weight) from project1);

#4.
select min(item_weight) from project1;

#5.
select avg(item_weight) from project1;

#6. 
select count(item_fat_content) from project1 where item_fat_content = "Low Fat";

#7.
select count(item_fat_content) from project1 where item_fat_content = "regular";

#8.
select max(item_mrp) from project1;

#9.
select min(item_mrp) from project1;

#10.
select item_identifier, item_fat_content, item_type, item_mrp from project1 where item_mrp > 200;

#11.
select max(item_mrp) from project1 where item_fat_content = "Low Fat";

#12.
select min(item_mrp) from project1 where item_fat_content = "Low Fat";

#13.
select * from project1 where item_mrp between 50 and 100;

#14.
select distinct item_fat_content from project1;

#15.
select distinct item_type from project1;

#16.
select * from project1 order by item_mrp desc;

#17.
select * from project1 order by item_outlet_sales;

#18.
select * from project1 order by item_type;

#19.
select * from project1 where item_type in ("dairy", "meat");

#20.
select distinct outlet_size from project1;

#21.
select distinct outlet_location_type from project1;

#22.
select distinct outlet_type from project1;

#23.
select item_type, count(item_identifier) from project1 group by item_type order by count(item_identifier) desc;

#24.
select outlet_size, count(item_identifier) from project1 group by outlet_size order by count(item_identifier);

#25.
select outlet_establishment_year, count(item_identifier) from project1 group by outlet_establishment_year order by count(item_identifier);

#26.
select outlet_type, count(item_identifier) from project1 group by outlet_type order by count(item_identifier) desc;

#27.
select outlet_location_type, count(item_identifier) from project1 group by outlet_location_type order by count(item_identifier) desc;

#28.
select item_type, max(item_mrp) from project1 group by item_type;

#29. 
select item_type, min(item_mrp) from project1 group by item_type;

#30.
select outlet_establishment_year, min(item_mrp) from project1 group by outlet_establishment_year order by min(item_mrp) desc;

#31.
select outlet_establishment_year, max(item_mrp) from project1 group by outlet_establishment_year order by max(item_mrp) desc;

#32.
select outlet_size, avg(item_mrp) from project1 group by outlet_size order by avg(item_mrp) desc;

#33. 
select outlet_size, avg(item_mrp) from project1 group by outlet_size;

#34.
select outlet_type, avg(item_mrp) from project1 group by outlet_type order by avg(item_mrp);

#35.
select outlet_type, max(item_mrp) from project1 group by outlet_type;

#36.
select item_type, max(item_weight) from project1 group by item_type;

#37. 
select outlet_establishment_year, max(item_mrp) from project1 group by outlet_establishment_year;

#38.
select outlet_type, min(item_weight) from project1 group by outlet_type;

#39.
select outlet_location_type, avg(item_weight) from project1 group by outlet_location_type order by avg(item_weight) desc;

#40.
select item_type, max(item_outlet_sales) from project1 group by item_type;

#41.
select item_type, min(item_outlet_sales) from project1 group by item_type;

#42.
select outlet_establishment_year, min(item_outlet_sales) from project1 group by outlet_establishment_year;

#43.
select outlet_establishment_year, max(item_outlet_sales) from project1 group by outlet_establishment_year order by max(item_outlet_sales)
desc;

#44.
select outlet_size, avg(item_outlet_sales) from project1 group by outlet_size order by avg(item_outlet_sales) desc;

#45.
select outlet_size, avg(item_outlet_sales) from project1 group by outlet_size;

#46.
select outlet_type, avg(item_outlet_sales) from project1 group by outlet_type;

#47.
select outlet_type, max(item_outlet_sales) from project1 group by outlet_type;

#48.
select outlet_establishment_year, sum(item_outlet_sales) from project1 group by outlet_establishment_year;

#49.
select item_type, sum(item_outlet_sales) from project1 group by item_type;

#50.
select outlet_location_type, sum(item_outlet_sales) from project1 group by outlet_location_type;

#51.
select item_fat_content, sum(item_outlet_sales) from project1 group by item_fat_content;

#52.
select item_type, max(item_visibility) from project1 group by item_type;

#53.
select item_type, min(item_visibility) from project1 group by item_type;

#54.
select outlet_type, sum(item_outlet_sales) from project1 where outlet_location_type = "Tier 1" group by outlet_type;

#55.
select outlet_type, sum(item_outlet_sales) from project1 where item_fat_content in ("Low Fat", "LF") group by outlet_type;