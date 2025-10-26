CREATE DATABASE Indian_Trains ;
USE Indian_trains ;

-- Train Schedule table 
CREATE TABLE Train_Schedule (
    Train_No INT PRIMARY KEY ,
    Train_Name VARCHAR(50) UNIQUE ,
    Departure_Time TIME ,
    Arrival_Time TIME ,
    Source_Station VARCHAR(50) NOT NULL ,
    Destination VARCHAR(100) NOT NULL ,
    Train_Type VARCHAR(50) ,
    Days_Operating VARCHAR(50)
) ;

-- Information (locaiton) of Station 
CREATE TABLE Stations (
    Station_ID INT PRIMARY KEY AUTO_INCREMENT ,
    Station_Name VARCHAR(50) NOT NULL ,
    Location VARCHAR(50) NOT NULL 
);

--
CREATE TABLE Train_Reservations (
    Reservation_ID INT PRIMARY KEY AUTO_INCREMENT ,
    Train_No INT ,
    Passenger_Name VARCHAR(50) ,
    Seat_No VARCHAR(10) ,
    Booking_Status VARCHAR(20) ,
    Booking_Date DATE ,
    FOREIGN KEY (Train_No) REFERENCES train_schedule(Train_No)
);



INSERT INTO Train_Schedule 
(Train_No, Train_Name, Departure_Time, Arrival_Time, Source_Station, Destination, Train_Type, Days_Operating)
VALUES
(12001, 'Rajdhani Express', '05:00:00', '10:00:00', 'New Delhi', 'Mumbai', 'Superfast', 'Mon, Tue, Fri'),
(12002, 'Shatabdi Express', '06:30:00', '10:00:00', 'New Delhi', 'Chandigarh', 'Superfast', 'Daily'),
(12301, 'Howrah - New Delhi Express', '08:00:00', '14:00:00', 'Howrah', 'New Delhi', 'Express', 'Mon, Wed, Fri'),
(12902, 'Mumbai Rajdhani', '14:00:00', '22:30:00', 'Mumbai', 'New Delhi', 'Rajdhani', 'Tue, Thu, Sat'),
(15228, 'Satyagrah Express', '12:00:00', '20:00:00', 'Patna', 'Delhi', 'Express', 'Daily'),
(14682, 'Jammu Tawi - Amritsar Express', '16:30:00', '20:45:00', 'Jammu Tawi', 'Amritsar', 'Express', 'Mon, Wed, Fri'),
(15232, 'Patna - Rajendranagar Express', '18:00:00', '21:15:00', 'Patna', 'Rajendranagar', 'Passenger', 'Daily'),
(14512, 'Delhi - Amritsar Express', '19:00:00', '23:00:00', 'Delhi', 'Amritsar', 'Express', 'Tue, Thu, Sat'),
(22691, 'Coimbatore - Chennai Express', '07:30:00', '09:45:00', 'Coimbatore', 'Chennai', 'Express', 'Daily'),
(22006, 'Duronto Express', '21:00:00', '03:00:00', 'Mumbai', 'Kolkata', 'Duronto', 'Mon, Wed, Fri');


INSERT INTO Stations 
(Station_Name, Location) 
VALUES
('New Delhi', 'Delhi'),
('Mumbai', 'Maharashtra'),
('Chandigarh', 'Chandigarh'),
('Howrah', 'Kolkata'),
('Patna', 'Bihar'),
('Jammu Tawi', 'Jammu & Kashmir'),
('Amritsar', 'Punjab'),
('Rajendranagar', 'Bihar'),
('Coimbatore', 'Tamil Nadu'),
('Chennai', 'Tamil Nadu');


INSERT INTO Train_Reservations 
(Train_No, Passenger_Name, Seat_No, Booking_Status, Booking_Date) 
VALUES
(12001, 'John Doe', 'A1-1', 'Confirmed', '2023-10-10'),
(12001, 'Alice Smith', 'A1-2', 'Cancelled', '2023-10-11'),
(12002, 'Robert Brown', 'B1-3', 'Confirmed', '2023-10-10'),
(12301, 'Sara Johnson', 'C1-1', 'Confirmed', '2023-10-12'),
(12902, 'Michael Davis', 'D1-4', 'Pending', '2023-10-13'),
(15228, 'Linda Williams', 'E1-5', 'Confirmed', '2023-10-14'),
(14682, 'James Miller', 'F1-6', 'Confirmed', '2023-10-12'),
(15232, 'Elizabeth Wilson', 'G1-2', 'Confirmed', '2023-10-15'),
(14512, 'David Lee', 'H1-7', 'Cancelled', '2023-10-10'),
(22006, 'Sophia Taylor', 'I1-8', 'Confirmed', '2023-10-14');


-- Q.1 Select all data from table Train_Schedule. 
SELECT * FROM Train_Schedule ;

-- Q.2 Select all data from table Stations. 
SELECT * FROM Stations ;

-- Q.3 Select all data from table Train_Reservations. 
SELECT * FROM Train_Reservations ;

-- Q.4 Find all trains that depart from 'New Delhi' to 'Mumbai' from table Train_Schedule.
SELECT * FROM Train_Schedule
WHERE Source_Station = "New Delhi" AND Destination = "Mumbai" ;

-- Q.5 How many trains operate on daily basis.
SELECT COUNT(*) AS No_of_trains 
FROM Train_Schedule
WHERE Days_Operating = "Daily" ;

-- Q.6 Find the earliest departure time for any train from 'Patna'.
SELECT MIN(Departure_Time) AS Earliest_departure
FROM Train_Schedule
WHERE Source_Station = "Patna" ;
