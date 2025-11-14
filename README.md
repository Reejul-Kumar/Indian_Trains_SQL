# Indian Trains Schedule Database
**OVERVIEW** <br>
<p>This project is an SQL-based train schedule and reservation management system that simulates
core data operations for Indian Railways. It provides database tables, sample data, and common
queries for train schedules, stations, and reservations.</p>

**FEATURES**
<ul>
  <li>Train schedule management (details, timings, stations, types) </li>
  <li>Station information storage </li>
  <li>Train reservation tracking (passengers, seats, booking status) </li>
  <li>Sample data for schedules, stations, and reservations </li>
  <li>SQL queries for data analysis </li>
</ul>
<br>

**DATABASE STRUCTURE**
<ul>
  <li><b>TrainSchedule</b>
    <ul>
      <li>TrainNo (INT, Primary Key)</li>
      <li>TrainName (VARCHAR, Unique)</li>
      <li>DepartureTime (TIME)</li>
      <li>ArrivalTime (TIME)</li>
      <li>SourceStation (VARCHAR)</li>
      <li>Destination (VARCHAR)</li>
      <li>TrainType (VARCHAR)</li>
      <li>DaysOperating (VARCHAR)</li>
    </ul>
  </li>
  <li><b>Stations</b>
    <ul>
      <li>StationID (INT, Primary Key, Auto Increment)</li>
      <li>StationName (VARCHAR)</li>
      <li>Location (VARCHAR)</li>
    </ul>  
  </li>
  <li><b>TrainReservations</b>
    <ul>
      <li>ReservationID (INT, Primary Key, Auto Increment)</li>
      <li>TrainNo (INT, Foreign Key)</li>
      <li>PassengerName (VARCHAR)</li>
      <li>SeatNo (VARCHAR)</li>
      <li>BookingStatus (VARCHAR)</li>
      <li>BookingDate (DATE)</li>
    </ul>
  </li>
</ul>

**HOW TO RUN**
<ol>
<li>Import the .sql file to your MySQL server.</li>
<li>Use the provided table definitions and sample data.</li>
<li>Execute queries for analysis and exploration.</li>
</ol>

**AUTHOR**
<p>~~Reejul Kumar~~</p>
