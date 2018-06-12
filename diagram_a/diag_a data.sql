--- insert data into guests-------------
insert into guests (LoginID,Password,Fname,Lname,Email,Phone,Address) 
values('1111','1111','Jan','Kwiatek','jan.kwiatek@o2.pl', '123-112-123','Kwiatowa 5 64-100 Warszawa');
insert into guests (LoginID,Password,Fname,Lname,Address) 
values('2222','2222','Ala','Kotek','Polna 5 64-100 Warszawa');
insert into guests (LoginID,Password,Fname,Lname,Email,Phone,Address) 
values('3333','fs33','Franek','Szpak','franek.szpak@o2.pl', '777-112-123','Kwiatowa 6 67-100 Opole');
insert into guests (LoginID,Password,Fname,Lname,Email) 
values('4444','jk44','Jan','Kowalski','jan.kowalski@o2.pl');

---insert data into rooms-------------

insert into rooms(Number,Level,Style,Viev,Beds,Smoking,LoginID)
values(1,3,'basic','park',3,'YES',1111);
insert into rooms(Number,Level,Style,Viev,Beds,Smoking,LoginID)
values(2,3,'premium','sea',4,'NO',2222);
insert into rooms(Number,Level,Style,Viev,Beds,Smoking,LoginID)
values(3,2,'basic','lake',2,'NO',2222);
insert into rooms(Number,LoginID)
values(4,2222);

----insert data into reservations------
insert into reservations(ResNumber,CheckIn,CheckOut,LoginID)
  values(11,'2018-06-01 10:00:00','2018-06-10 11:30:45',3333);
  insert into reservations(ResNumber,CheckIn,LoginID,Number)
  values(12,'2018-06-05 10:00:00',2222,2); 
insert into reservations(ResNumber,CheckIn,CheckOut,LoginID)
  values(13,'2018-04-09 10:00:00','2018-04-13 10:00:00',2222);




