select * from guests;
select * from  rooms;
select* from reservations;

--show guests with rooms, one guest can have more than one room---
select  rooms.loginid as 'guest login', rooms.number, rooms.level
from rooms
where(select guests.loginid from guests where guests.loginid=rooms.loginid);

--show guests with room and reservations-----

select  rooms.loginid as 'guest login with room and res', rooms.number, rooms.level
from rooms
where(select guests.loginid from guests where guests.loginid=rooms.loginid)
and exists(select loginid from reservations where loginid=rooms.loginid);

--guests with reservations-----------------

select g.loginid, fname, lname
from guests
where(select r.loginid from reservations where r.loginid=g.loginid);


 --- room without guests empty, rooms must have guest------
 select number, level, style, viev, beds, smoking
from rooms where loginid not in(select distinct loginid from guests);


 --- reservation without guests empty, res must have guest------
 select resnumber, checkin, checkout
from reservations where loginid not in(select distinct loginid from guests);

 --- reservation without guests empty, res must have guest------
 select resnumber, checkin, checkout
from reservations where loginid not in(select distinct loginid from rooms);

---reservation with guests lname and fname--------------------
select reservations.resnumber, reservations.checkin, reservations.checkout, g.lname, g.fname
from reservations 
left join guests g on reservations.loginid=g.loginid
group by reservations.resnumber
order by count(g.loginid);

---rooms with guests lname and fname--------------------
select rooms.number, rooms.level, g.lname , g.fname
from rooms 
left join guests g on rooms.loginid=g.loginid
group by rooms.number
order by count(g.loginid);

---guest lname, fname with their rooms info------
select number, level, g.lname, g.fname
from rooms r
left join guests g on r.loginid=g.loginid
where g.loginid=r.loginid
order by g.lname, g.fname;