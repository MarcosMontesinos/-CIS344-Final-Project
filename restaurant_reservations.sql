create database restaurant_reservations;
use restaurant_reservations;

create table customers(
	customerId Int not null primary key auto_increment,
    customerName varchar(45) not null,
    contactInfo varchar(200)
);

create table reservations (
	reservationId Int not null primary key auto_increment,
    customerId Int not null,
    reservationTime datetime not null,
    numberoFGuests int not null,
    specialRequests varchar(200),
    foreign key (customerId) references customers(customerId)
);

create table dinningPreferences (
	preferenceId int not null primary key auto_increment,
    customerId int not null,
    favoriteTable varchar(45),
    dietaryRestrictions varchar(200),
    foreign key (customerId) references customers(customerId)
);

insert into customers(customerName, contactInfo) values
	("Brandon Shelton", '3497089032'),
    ("Colby Booth", '9637489034'),
    ("Kimber Haley", '2857340483');
    
insert into reservations(reservationTime, numberOfGuests, specialRequests, customerId) values
	("2024-08-15 18:26:56", 4, "Red table theme; indoors", 3),
    ("2024-05-14 14:30:45", 2, "Have table next to window; indoors", 2),
    ("2024-03-12 10:15:37", 3, "Cake for birthday celebration; indoors", 1);
    
insert into dinningPreferences(favoriteTable, dietaryRestrictions, customerId) values
	(5, 'lactose intolerance', 3),
    (3, 'Diabetes', 2),
    (8, 'Allergy', 1);
    
    select * from customers;
    select * from reservations;
    select * from dinningPreferences;
