use learnsql;
select current_date() as date;
select current_timestamp()as "time and date";
select current_time();

select day(current_timestamp());
select month(current_timestamp());
select year(current_date()); 
select  hour(current_time());
select dayname(current_date());
select monthname(current_date());
select date_add(current_date(),interval 20 year);
select date_sub(current_date(),interval 2 month);
select datediff('2001-01-02','2024-01-02') ;
select date_add(date_add(date_add(current_date(),interval 8 year),interval  3 month ),interval 10 day)as added;