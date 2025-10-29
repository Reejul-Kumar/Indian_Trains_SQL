# Indian Trains Schedule Database
**OVERVIEW** <br>
<p>This project is an SQL-based train schedule and reservation management system that simulates
core data operations for Indian Railways. It provides database tables, sample data, and common
queries for train schedules, stations, and reservations.</p>

**Features**
<ul>
<li>Train schedule management (details, timings, stations, types) </li>
<li>Station information storage </li>
<li>Train reservation tracking (passengers, seats, booking status) </li>
<li>Sample data for schedules, stations, and reservations </li>
<li>SQL queries for data analysis </li>
</ul>
<br>

**Database Structure**
TrainSchedule
TrainNo (INT, Primary Key)
TrainName (VARCHAR, Unique)
DepartureTime (TIME)
ArrivalTime (TIME)
SourceStation (VARCHAR)
Destination (VARCHAR)
TrainType (VARCHAR)
DaysOperating (VARCHAR)
