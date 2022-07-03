REM COUNTIES id checks 

-- Id Checks
INSERT INTO COUNTIES 
  VALUES ('1L14', 'West Yorkshire');
INSERT INTO COUNTIES 
  VALUES ('COA5', 'West Yorkhire');

REM AREAS id checks 

INSERT INTO AREAS
  VALUES('AR00A', 'NE1', 'Jesmond');
INSERT INTO AREAS
  VALUES('1P022', 'NE1', 'Jesmond');

CUSTOMERS id checks 

INSERT INTO CUSTOMER
  VALUES ('P0001', 'Daniel', 'Heery', 'M', '06-APR-1994', 'heery@live.co.uk', '07437519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('CA001', 'Daniel', 'Heery', 'M', '06-APR-1994', 'heery1@live.co.uk', '07437519714', '48 Wolseley Gardens, NE2 1HR');

REM Dissallowed Email Checks

INSERT INTO CUSTOMER
  VALUES ('C0002', 'Daniel', 'Heery', 'M', '06-APR-1994', '@live.co.uk', '07437519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0005', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r.@hotmail.com', '07437519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0005', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r@@hotmail.com', '07437519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0005', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r@hot@mail.com', '07437519714', '48 Wolseley Gardens, NE2 1HR');

REM Allowed Email Checks 

INSERT INTO CUSTOMER
  VALUES ('C0002', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r@hotmail.com', '07437519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0003', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r.a@hotmail.co.uk', '07437519714', '48 Wolseley Gardens, NE2 1HR');

REM Dissallowed Tel Checks 

INSERT INTO CUSTOMER
  VALUES ('C0003', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r2@hotmail.com', '07aZ7519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0003', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r2@hotmail.com', 'ASDKFJEsdre', '48 Wolseley Gardens, NE2 1HR');

REM Allowed Tel Checks 

INSERT INTO CUSTOMER
  VALUES ('C0002', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r@hotmail.com', '01482518339', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0001', 'Daniel', 'Heery', 'M', '06-APR-1994', 'r2@hotmail.com', '07437519714', '48 Wolseley Gardens, NE2 1HR');

REM STAFF id checks 

INSERT INTO STAFF 
  VALUES ('S00A1', 'B0002', 'Bob', 'Dylan', 'bdylaa@aol.co.uk', '07437523714', 
  '17 Grosvenor Gardens NE2 2HR');

INSERT INTO STAFF 
  VALUES ('10001', 'B0002', 'Bob', 'Dylan', 'bdylaa@aol.co.uk', '07437523714', 
  '17 Grosvenor Gardens NE2 2HR');

REM BRANCH 
REM branch commission checks

INSERT INTO BRANCH 
  VALUES ('B0001', 'S0001', 'EA001', 'info@propertynewcastle.co.uk', '07876671020', '123 Heaton Road, NE6 2BB', 0.26);

REM branch id checks

INSERT INTO BRANCH 
  VALUES ('A0001', 'S0001', 'EA001', 'info@propertynewcastle.co.uk', '07876671020', '123 Heaton Road, NE6 2BB', 0.24);
INSERT INTO BRANCH 
  VALUES ('BA001', 'S0001', 'EA001', 'info@propertynewcastle.co.uk', '07876671020', '123 Heaton Road, NE6 2BB', 0.24);

REM Property Id Checks 

INSERT INTO PROPERTIES 
  VALUES ('P00A1', 'B0001', 125000, 
          'FS', 'Semi-Detached', '01-APR-2022',
          'Beautiful property with a nice seat', 3000);
INSERT INTO PROPERTIES 
  VALUES ('A0001', 'B0001', 125000, 
          'FS', 'Semi-Detached', '01-APR-2022',
          'Beautiful property with a nice seat', 3000);

REM DPS id checks 

INSERT INTO DPS
  VALUES ('D2S04', 'National Deposit Security', 'info@nds.com');

INSERT INTO DPS
  VALUES ('DPSA9', 'National Deposit Security', 'info@nds.com');

REM VIEWING Id checks

INSERT INTO VIEWING
  VALUES ('P0001', 'P0001', 'B0001', 'C0002', '10-MAY-2022 10:00:00');
INSERT INTO VIEWING
  VALUES ('V0.01', 'P0001', 'B0001', 'C0002', '10-MAY-2022 10:00:00');

REM ESTATE_AGENT Id checks

INSERT INTO ESTATE_AGENT 
  VALUES ('EP001', 'B0001', 'https://property.co.uk', 'Property');

INSERT INTO ESTATE_AGENT 
  VALUES ('EATA1', 'B0001', 'https://property.co.uk', 'Property');