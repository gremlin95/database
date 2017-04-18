CREATE TABLE customers(
Customer_ID 		    NUMBER(4), 
Customer_firstName 	VARCHAR2(20), 
Coustomer_LastName 	VARCHAR2(20),
Passport_No 		    VARCHAR2(12)NOT NULL,
Tel_No 				      NUMBER(15) NOT NULL,
Street				      VARCHAR2(10),
City				        VARCHAR2(15),
Country 			      VARCHAR2(20)DEFAULT 'SRI LANKA',
Nationality 		    VARCHAR2(20),
Email_Address 		  VARCHAR2(30),
Gender 				      VARCHAR2(10),
Added_Date 			    DATE);

CREATE TABLE payment_methods(
PaymentMethod_ID	  NUMBER(4),
Method_Type 		    VARCHAR2(50));,


CREATE TABLE coustomer_payments(
Payment_ID 			    NUMBER(5),
Coustomer_ID 		    NUMBER(4),
PaymentMethod_ID  	NUMBER(4),
Payment_Amount 		  NUMBER(10,2),
Payment_Currency 	  VARCHAR2(10)DEFAULT 'USD',
Payment_Date 		    DATE);

CREATE TABLE billings(
Billing_ID 			NUMBER(5),
Bill_Ammount 		NUMBER(10,2),
Payment_ID 			NUMBER(5),
Bill_Date 			DATE);

CREATE TABLE team_info(
Team_ID 			  NUMBER(5)
Department  		VARCHAR2(20)
Memeber_NO 			NUMBER(2));

CREATE TABLE sales_reps(
SalesRep_ID 		    NUMBER(5),
SalesRep_FirstName 	VARCHAR(20),
SalesRep_LastName 	VARCHAR2(20),
SalesRep_Telephone 	NUMBER(15),
SalesRep_Email 		  VARCHAR2(50),
Team_ID 			      NUMBER(5));

CREATE TABLE holiday_Reservations(
Reservation_ID 		NUMBER(5),
Customer_ID 		  NUMBER(4),
SalesRep_ID  		  NUMBER(5),
Billing_ID 			  NUMBER(5)); 

CREATE TABLE locations(
location_ID  		    NUMBER(5),
Destination_Area 	  VARCHAR(20),
Country 			      VARCHAR(20)NOT NULl,
City 				        VARCHAR2(20));

CREATE TABLE hotel_details(
Hotel_ID 			  NUMBER(5),
Hotel_Name 			VARCHAR2(20),
Location_ID 		NUMBER(5),
Star_NO 			  NUMBER,
Room_Type 			VARCHAR(20));

CREATE TABLE flight_info(
Flight_ID 			  VARCHAR2(100),
Flight_NO 			  VARCHAR2(10),
Airline 			    VARCHAR2(100),
Arrival_Time 		  TIMESTAMP,
Depart_Time 		  TIMESTAMP,
Arrival_Location 	VARCHAR2(100),
Depart_Location 	VARCHAR2(100));

CREATE TABLE board_info(
Board_ID 			  NUMBER(5),
Board_Type 			VARCHAR2(20),
Board_rate 			NUMBER(10,2));

CREATE TABLE holiday_details(
HolidayInfo_ID 		  NUMBER(5),
HolidayDescription 	VARCHAR2(100),
Holiday_Amount N	  NUMBER(5,2),
Flight_ID 			    VARCHAR2(100),
Hotel_ID 			      NUMBER(5),
Reservation_ID		  NUMBER(5),
Board_ID 			      NUMBER(5));








