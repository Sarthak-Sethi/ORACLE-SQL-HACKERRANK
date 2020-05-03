create table hotel_2
(
sr_no number(3) constraint sn Primary key,
customer_name varchar2(20) constraint cn not null,
days_of_stay number(2) constraint dos not null,
date_of_checkin date constraint doc not null,
buffet_included varchar2(3)constraint bi
 check( buffet_included in ('yes','no')),
mobile_no char(10)  constraint mn not null, 
email_id varchar2(20) constraint ei not null
);
select * from hotel_2 ;
insert into hotel_2 (sr_no,customer_name, days_of_stay, date_of_checkin, buffet_included,
mobile_no ,email_id)
values (6,'choda',67,sysdate,'no',987366788,'money@gmail.com');
