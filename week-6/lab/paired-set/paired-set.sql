SET ECHO ON; 

DROP TABLE Customer CASCADE CONSTRAINTS PURGE;
DROP TABLE Rental CASCADE CONSTRAINTS PURGE;
DROP TABLE Rental_Car CASCADE CONSTRAINTS PURGE;
DROP TABLE Car CASCADE CASCADE CONSTRAINTS PURGE;
DROP TABLE Servicing CASCADE CONSTRAINTS PURGE;
DROP TABLE Garage CASCADE CONSTRAINTS PURGE;
DROP TABLE Driver CASCADE CONSTRAINTS PURGE;

CREATE TABLE Customer (
  CustNo 
)