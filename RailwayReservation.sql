create database RailwayReservation

use RailwayReservation;

---create User table---

create table users(User_id int primary key not null,
                   User_name varchar(20),
		   Email varchar(20),
		   password varchar(20),
                   phone int);

--- create station table--

 create table Station(Staion_id int primary key,
		      Station_name varchar(20),
		      Address varchar(30),
		      platform_no varchar(20));

---create Trains table---

create table Trains(Train_id int primary key, 
	            Train_name varchar(20),
                    Destination varchar(50),
                    Source varchar(50),
                    noOfseats int);

---create Schedules table---

 create table schedules(Schedule_id int primary key,
			Train_id int,
			Date date,
			Departure_time varchar(10),
			Arrival_time varchar(10),
		        foreign key (Train_id) references trains(Train_id));

--- create TicketBook table---

create table TicketBook(Booking_id int primary key,
			User_id int,
			train_id int,
			Schedule_id int,
                        Booking_date date,
			statusOfbooking varchar(20),
			seat_number int,
                        foreign key (user_id) references users(user_id),
			foreign key (train_id) references trains(train_id),
                        foreign key (schedule_id) references Schedules(schedule_id));

---create payments table---
create table Payments(pay_id int primary key,
		      Booking_id int,
		      StatusOfPayment varchar(20),
		      paymentDate date,
		      amount int,
 		      foreign key (Booking_id) references ticketBook(Booking_id));