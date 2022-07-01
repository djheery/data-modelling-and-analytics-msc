REM Counties

INSERT INTO COUNTIES 
  VALUES ('CO01', 'Tyne and Wear');
INSERT INTO COUNTIES 
  VALUES ('CO02', 'Bedfordshire');
INSERT INTO COUNTIES 
  VALUES ('CO03', 'East Sussex');
INSERT INTO COUNTIES 
  VALUES ('CO04', 'West Yorkshire');

REM City 

INSERT INTO TOWNS_AND_CITIES 
  VALUES ('NE1', 'Newcastle-Upon-Tyne', 'CO01');
INSERT INTO TOWNS_AND_CITIES 
  VALUES ('LU', 'Luton', 'CO02');
INSERT INTO TOWNS_AND_CITIES 
  VALUES ('BN', 'Brighton', 'CO03');
INSERT INTO TOWNS_AND_CITIES 
  VALUES ('LS', 'Leeds', 'CO04');
INSERT INTO TOWNS_AND_CITIES 
  VALUES ('SR', 'Sunderland', 'CO01');
INSERT INTO TOWNS_AND_CITIES 
  VALUES ('NE2', 'Gateshead', 'CO01');
INSERT INTO TOWNS_AND_CITIES 
  VALUES ('NE3', 'Cramlington', 'CO01');

REM Location

INSERT INTO TOWN_CITY_AREA
  VALUES('CL0001', 'NE1', 'Jesmond');
INSERT INTO TOWN_CITY_AREA
  VALUES('CL0002', 'NE1', 'Fenham');
INSERT INTO TOWN_CITY_AREA
  VALUES('CL0003', 'NE1', 'Heaton');
INSERT INTO TOWN_CITY_AREA
  VALUES('CL0004', 'LS', 'Burley');
INSERT INTO TOWN_CITY_AREA
  VALUES('CL0005', 'BN', 'Kemptown');
INSERT INTO TOWN_CITY_AREA
  VALUES('CL0006', 'LU', 'Bushmead');
INSERT INTO TOWN_CITY_AREA
  VALUES('CL0007', 'LU', 'Warden Hill');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0008', 'LS', 'Meanwood');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0009', 'NE2', 'Felling');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0010', 'LS', 'Hyde Park');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0011', 'LS', 'City Centre');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0012', 'NE2', 'Dunston');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0013', 'SR', 'City Centre');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0014', 'SR', 'Seaburn');
INSERT INTO TOWN_CITY_AREA
  VALUES ('CL0015', 'NE3', 'Stannington Vale');

REM Customer Address

INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0001', '48 Wolseley Gardens', NULL, 'NE2 1HR', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0002', '21 Knowle Road', NULL, 'LS4 2PJ', 'CL0004');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0003', '60 Wychwood Avenue', NULL, 'LU2 7HU', 'CL0006');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0004', '28 Grosvenor Gardens', NULL, 'NE4 5HT', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0005', '77 Sunderland Road', NULL, 'NE15 4PS', 'CL0009');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0006', '37 Farmbrook close', NULL, 'LU2 7FS', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0007', '18 Alphabet Street', NULL, 'BN4 2FA', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0008', '21 Poltergeist Avenue', NULL, 'LS5 22F', 'CL0011');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0009', '30 Gordon Terrace', NULL, 'LS2 2FA', 'CL0008');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0010', '5 Smokehouse Street', NULL, 'BN42 5FS', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0011', '16 Pythagorus Close', NULL, 'LU3 3PJ', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0012', '18 Sunderland Street', NULL, 'SR22 2TT', 'CL0013');


REM Insert Customers 

INSERT INTO CUSTOMER
  VALUES ('C0001', 'Daniel', 'Heery', 'M', '06-APR-1994', 'heery@live.co.uk', '07437519714', 'A0001');
INSERT INTO CUSTOMER
  VALUES ('C0002', 'Anna', 'Heery', 'F', '26-JUN-1996', 'annaheery@live.co.uk', '07437419714', 'A0002');
INSERT INTO CUSTOMER
  VALUES ('C0003', 'Conn', 'Heery', 'M', '03-DEC-1963',  'connheery@live.co.uk', '07217519714', 'A0003');
INSERT INTO CUSTOMER
  VALUES ('C0004', 'Monique', 'Heery', 'F', '13-NOV-1966', 'moniqueheery@live.co.uk', '07431119714', 'A0003');
INSERT INTO CUSTOMER
  VALUES ('C0005', 'Ryan', 'Barker', 'M', '16-DEC-1995', 'ryanbarker@live.co.uk', '07437519774', 'A0004');
INSERT INTO CUSTOMER
  VALUES ('C0006', 'Vitoria', 'Savy', 'F', '10-MAY-1950', 'vitoriasavy@live.co.uk', '07437512774', 'A0005');
INSERT INTO CUSTOMER
  VALUES ('C0007', 'Beatrice', 'Potter', 'F', '28-JUL-1966', 'beatriceporter@live.co.uk', '07421519774', 'A0006');
INSERT INTO CUSTOMER
  VALUES ('C0008', 'Rafa', 'Benitez', 'M', '16-APR-1960', 'rafabenitez@live.co.uk', '0743253777', 'A0007');
INSERT INTO CUSTOMER
  VALUES ('C0009', 'Emily', 'Clarke', 'F', '20-DEC-1982', 'emilyclarke@live.co.uk', '07412519774', 'A0008');
INSERT INTO CUSTOMER
  VALUES ('C0010', 'Antonio', 'Banderas', 'M', '10-AUG-1960', 'abanderas@live.co.uk', '07437239774', 'A0009');
INSERT INTO CUSTOMER
  VALUES ('C0011', 'Edmund', 'Dijkstra', 'M', '16-DEC-1995', 'edijkstra@live.co.uk', '07437436774', 'A0010');
INSERT INTO CUSTOMER
  VALUES ('C0012', 'William', 'Shakespeare', 'O', '23-APR-1964',  'willshakespeare@live.co.uk', '07477779774', 'A0011');

REM Staff Address

INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0013', '17 Grosvenor Gardens', NULL, 'NE2 2HR', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0014', '20 Wrangthorn Place', NULL, 'LS2 1HB', 'CL0010');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0015', '20 Delph Lane', NULL, 'LS24 8HX', 'CL0010');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0016', '250 Aspect 14', 'Elmwood Lane', 'LS2 8WG', 'CL0011');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0017', '20 Wolseley Gardens', NULL, 'NE2 1HR', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0018', '13 Osbourne Road', NULL, 'NE2 2TD', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0019', '10 Heaton Park Road', NULL, 'NE6 5PR', 'CL0003');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0020', '38 Sunderland Road', NULL, 'NE8 3HF', 'CL0009');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0021', '3 Gateway House', '15 North Lane', 'LS6 3HG', 'CL0008');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0022', '209 Marsh Road', NULL, 'LU3 2RT', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0023', '598 Hitchin Road', NULL, 'LU2 7UG', 'CL0006');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0024', '160 Hockwell Ring', NULL, 'LU4 9NL', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0025', '16 Hanover Street', NULL, 'BN2 9WD', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0026', '92 DitchlinG Road', NULL, 'BN1 4SE', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0027', '16 Market Street', NULL, 'BN1 1HH', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0028', '65 Church Road', NULL, 'BN3 2BD', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0029', '61 Wilson Avenue', NULL, 'BN2 5PA', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0030', '66 Bridge Street', NULL, 'LS27 0EZ', 'CL0011');


REM Staff

INSERT INTO STAFF 
  VALUES ('S00001', 'B0002', 'Bob', 'Dylan', 'bdylan@aol.co.uk', '07437523714', 'A0013');
INSERT INTO STAFF 
  VALUES ('S00002', 'B0001', 'Ryan', 'Phillips', 'rphilips@live.co.uk', '07437321971', 'A0006');
INSERT INTO STAFF 
  VALUES ('S00003', 'B0003', 'Gretchen' ,'Parlato', 'gparlato@live.com', '07212319714', 'A0009');
INSERT INTO STAFF 
  VALUES ('S00004', 'B0008','Mark','Guiliana', 'mguiliana@gmail.com', '07931998714', 'A0014');
INSERT INTO STAFF 
  VALUES ('S00005', 'B0001', 'Will','Stead',  'williestead@gmail.com', '07897183374', 'A0015');
INSERT INTO STAFF 
  VALUES ('S00006', 'B0012', 'Adam','Howard', 'ahoward@gmail.com', '07897119884', 'A0016');
INSERT INTO STAFF 
  VALUES ('S00007', 'B0004', 'Ian','Rush', 'ianrush@gmail.com', '07897119114', 'A0017');
INSERT INTO STAFF 
  VALUES ('S00008', 'B0005', 'Chuck','Norris', 'cn@chucknorris.co.uk', '07897119334', 'A0018');
INSERT INTO STAFF 
  VALUES ('S00009', 'B0007', 'Conor','Magi', 'cmagi@gmail.com', '07897119444', 'A0019');
INSERT INTO STAFF 
  VALUES ('S00010', 'B0011', 'Avashi','Cohen', 'achoen@gmail.com', '07227119444', 'A0020');
INSERT INTO STAFF 
  VALUES ('S00011', 'B0006', 'Tigran','Hamassyan', 'tha@gmail.com', '07897119144', 'A0021');
INSERT INTO STAFF 
  VALUES ('S00012', 'B0009', 'John','Coltrane', 'jcoltrane@gmail.com', '07893129444', 'A0022');
INSERT INTO STAFF 
  VALUES ('S00013', 'B0010', 'Lauren','Woods', 'lwoods@gmail.com', '07897119555', 'A0023');
INSERT INTO STAFF 
  VALUES ('S00014', 'B0002', 'Georgina','Stakes', 'gstakes@gmail.com', '07895669444', 'A0024');
INSERT INTO STAFF 
  VALUES ('S00015', 'B0003', 'Rebecca','Frodsham','rfrodsha@gmail.com', '07897239444', 'A0025');
INSERT INTO STAFF 
  VALUES ('S00016', 'B0004', 'Kieron','Dyer', 'kierondyer@gmail.com', '07907119444', 'A0026');
INSERT INTO STAFF 
  VALUES ('S00017', 'B0005', 'David','Blane', 'davidblane@gmail.com', '07876681040', 'A0027');
INSERT INTO STAFF 
  VALUES ('S00018', 'B0006', 'Ciara','Miller', 'ciaramiller@gmail.com', '07897788844', 'A0028');
INSERT INTO STAFF 
  VALUES ('S00019', 'B0007', 'Julie','Andrews', 'jandrews@gmail.com', '07896616444', 'A0029');
INSERT INTO STAFF 
  VALUES ('S00020', 'B0008', 'Manny','Gambureon', 'mgambur@gmail.com', '07899119444', 'A0030');


REM Payroll Details

INSERT INTO PAYROLL_DETAILS
  VALUES ('S00001', 'HR512563B','018237', '45374893');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00002', 'HR522563B','183721', '45787786');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00003', 'HR122563B','283722', '65783783');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00004', 'HR512522B','183723', '76783784');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00005', 'HR521663B','683724', '78783782');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00006', 'HR522222B','384725', '45783781');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00007', 'HR512563C','281726', '21783781');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00008', 'JR662563B','682327', '23783789');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00009', 'LA512263B','283428', '12783732');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00010', 'HO111563B','683729', '00783743');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00011', 'PP512563B','789210', '05483721');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00012', 'HR513333B','987311', '00683787');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00013', 'RB511563B','986412', '58983712');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00014', 'DP123563B','981214', '51483745');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00015', 'CB112563B','482315', '12383744');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00016', 'HR512588B','387616', '64383744');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00017', 'JZ114563B','384517', '46483712');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00018', 'JZ442263B','681218', '34483723');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00019', 'JZ113567B','782319', '55683712');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S00020', 'JZ122363B','283420', '12383711');



REM Branch Address

INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0031', '123 Heaton Road', NULL, 'NE6 2BB', 'CL0003');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0032', '28 Gordon Terrace', NULL, 'LS6 4HX', 'CL0008');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0033', '30 Elmwood Lane', NULL, 'LS8 2HJ', 'CL0011');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0034', '21 Dove Tail Road', NULL, 'BN5 6TT', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0035', '40 Warden Crescent', NULL, 'LU5 2P8', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0036', '20 Osbourne Road', NULL, 'NE4 5FR', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0037', '13 Sunderland Road', NULL, 'NE4 5FR', 'CL0012');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0038', '20 Hockwel Ring', NULL, 'LU23 4HR', 'CL0006');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0039', '12 Briggate Street', NULL, 'LS10 1FB', 'CL0011');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0040', '37 Wiseman Close', NULL, 'LU3 25S', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0041', '89 St Georges Terrace', NULL, 'NE7 2DN', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES ('A0042', '80 St James Boulevord', NULL, 'NE1 4BN', 'CL0003');

REM Branch 

INSERT INTO BRANCH 
  VALUES ('B0001', 'S00005', 'EA001', 'info@propertynewcastle.co.uk', '07876671020', 'A0031');
INSERT INTO BRANCH 
  VALUES ('B0002', 'S00001', 'EA004', 'info@mymoveleeds.co.uk', '07876671111', 'A0032');
INSERT INTO BRANCH 
  VALUES ('B0003', 'S00003', 'EA001', 'info@propertyleeds.co.uk', '07777771020', 'A0033');
INSERT INTO BRANCH 
  VALUES ('B0004', 'S00007', 'EA002', 'info@iliketomoveitbri.co.uk', '07876634563', 'A0034');
INSERT INTO BRANCH 
  VALUES ('B0005', 'S00008', 'EA003', 'info@helloworldluton.co.uk', '07876667182', 'A0035');
INSERT INTO BRANCH 
  VALUES ('B0006', 'S00011', 'EA003', 'info@helloworldnewcast.co.uk', '07876671634', 'A0036');
INSERT INTO BRANCH 
  VALUES ('B0007', 'S00009', 'EA005', 'info@newcastlehomes.co.uk', '07876098220', 'A0037');
INSERT INTO BRANCH
  VALUES ('B0008', 'S00004', 'EA008', 'info@moveoutofmyway.co.uk', '07878877652', 'A0038');
INSERT INTO BRANCH 
  VALUES ('B0009', 'S00012', 'EA007', 'info@homelyhomesleeds.co.uk', '07832435643', 'A0039');
INSERT INTO BRANCH 
  VALUES ('B0010', 'S00013', 'EA007', 'info@homelyhomesluton.co.uk', '07876887766', 'A0040');
INSERT INTO BRANCH 
  VALUES ('B0011', 'S00010', 'EA002', 'info@iliketomoveitnew.co.uk', '07876091823', 'A0041');
INSERT INTO BRANCH 
  VALUES ('B0012', 'S00006', 'EA006', 'info@movemeplease.co.uk', '07876839201', 'A0042');

REM Property Addresses

INSERT INTO PORTAL_ADDRESSES
  VALUES('A0043', '20 Wolseley Gardens', NULL, 'NE2 1HR', 'CL0001');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0044', '15 Knowle Road', 'Flat A', 'LS4 2PJ', 'CL0004');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0045', '20 Wiseman Close', NULL, 'LU3 12H', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0046', '1 Heaton Road', NULL, 'NE3 1HB', 'CL0003');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0047', '10 Felling Gate', NULL, ' NE10 0AA', 'CL0009');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0048', '15 Felling Gate', NULL, ' NE10 0AA', 'CL0009');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0049', '221 Aspect 14', 'Elmwood Lane', 'LS2 8WG', 'CL0012');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0050', '14 Knowle Mount', NULL, 'LS4 2PG', 'CL0004');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0051', '46 Gordon Terrace', NULL, 'LS6 4HX', 'CL0008');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0052', '16 College Road', NULL, 'BN6 4HR', 'CL0005');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0053', '26 Bexton Mount', NULL, 'LS6 2PQ', 'CL0010');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0054', '16 Stickwell Close', NULL, 'NE15 4FF', 'CL0002');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0055', '15 Heaton Road', NULL, 'NE3 1HB', 'CL0003');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0056', '12 Farmbrook', NULL, 'LU2 3FR', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0057', '10 Leagrave Road', NULL, 'LU24 4TT', 'CL0006');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0058', '21 Marsh Road', NULL, 'LU28 4FR', 'CL0007');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0059', '10 Stick Well Close', NULL, 'NE15 4FF', 'CL0002');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0060', '27 Heaton Road', NULL, 'NE15 4FF', 'CL0003');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0061', '27 Fenham Road', NULL, 'NE15 32P', 'CL0002');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0062', '15 Aldern Tower', 'Flat 4', 'SR3 3AT', 'CL0013');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0063', '10 Aldelaide Close', NULL, 'SR1 2JN', 'CL0014');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0064', '27 Stannington Vale', NULL, 'NE15 32P', 'CL0015');
INSERT INTO PORTAL_ADDRESSES
  VALUES('A0065', '28 Sunderland Road', NULL, 'NE15 32P', 'CL0009');


REM Prop Owner

INSERT INTO PROP_OWNER 
  VALUES('PO001','C0004', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO002','C0008', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO003','C0011', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO004','C0009', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO005','C0002', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO006','C0005', 'B0009');

REM Properties 

INSERT INTO PROPERTIES 
  VALUES ('P0001', 'B0001', 'PO001', 125000, 
          'FS', 'Semi-Detached', '01-APR-2022',
          'Beautiful property with a nice seat', 3000,
          'A0043');
INSERT INTO PROPERTIES 
  VALUES ('P0002', 'B0002', 'PO001', 175000, 
          'S', 'Terraced', '30-JUN-2022',
          'Nice house with friendly neighbours', 2000,
          'A0044');
INSERT INTO PROPERTIES 
  VALUES ('P0003', 'B0005', 'PO004', 225000, 
          'FS', 'Flat', '15-JUN-2022',
          'Nice flat pet friendly', 3000,
          'A0045');
INSERT INTO PROPERTIES 
  VALUES ('P0004', 'B0007', 'PO001', 145000, 
          'FS', 'Semi-Detached', '02-JUN-2022',
          'Beautiful semi-detached house with modern furnishings', 2000,
          'A0046');
INSERT INTO PROPERTIES 
  VALUES ('P0005', 'B0007', 'PO006', 600200, 
          'FS', 'Detached', '06-MAR-2022',
          'Large detached house with amazing views and stables', 5500,
          'A0047');
INSERT INTO PROPERTIES 
  VALUES ('P0006', 'B0007', 'PO002', 1200, 
          'FL', 'Semi-Detached', '25-MAY-2022',
          'Large property with 3 Bedrooms', 3000,
          'A0048');
INSERT INTO PROPERTIES 
  VALUES ('P0007', 'B0002', 'PO002', 1800, 
          'L', 'Flat', '22-MAY-2022',
          'Great property close to the centre', 2000,
          'A0049');
INSERT INTO PROPERTIES 
  VALUES ('P0008', 'B0002', 'PO003', 120000, 
          'FL', 'Semi-Detached', '05-MAY-2022',
          'Lovely small semi-detatched house', 1500,
          'A0050');
INSERT INTO PROPERTIES 
  VALUES ('P0009', 'B0002', 'PO003', 920500, 
          'FS', 'Detached', '20-JUN-2022', 
          'Large house with plenty of land', 6000,
          'A0051');
INSERT INTO PROPERTIES 
  VALUES ('P0010', 'B0004', 'PO004', 850, 
          'FL', 'Terraced', '20-JUN-2022', 
          'Small terraced house to rent', 1500,
          'A0052');
INSERT INTO PROPERTIES 
  VALUES ('P0011', 'B0003', 'PO001', 500000, 
          'S', 'Semi-Detached', '10-JUN-2022', 
          'Great property, will surely be sold fast', 4500,
          'A0053');
INSERT INTO PROPERTIES 
  VALUES ('P0012', 'B0006', 'PO005', 145000, 
          'S', 'Terraced', '30-MAY-2022', 
          'Small terraced house in a good area', 2000,
          'A0054');
INSERT INTO PROPERTIES 
  VALUES ('P0013', 'B0007', 'PO002', 250000, 
          'FS', 'Detached', '30-JUN-2022',
          'Medium size flat for rent, perfect for a couple or for multiple tennants',3000, 
          'A0055');
INSERT INTO PROPERTIES 
  VALUES ('P0014', 'B0008', 'PO002', 177500, 
          'FS', 'Terraced', '05-MAR-2022', 
          'Terraced house for sale, complete with modern bathroom', 2000, 'A0056');
INSERT INTO PROPERTIES 
  VALUES ('P0015', 'B0008', 'PO003', 3400, 
          'L', 'Detached', '13-JUN-2022',
          'Detached house for sale, beautiful views', 4000, 'A0057');
INSERT INTO PROPERTIES 
  VALUES ('P0016', 'B0010', 'PO003', 
          1400, 'L', 'Flat', '02-JUN-2022',
          'Medium size flat for let', 2000, 'A0058');
INSERT INTO PROPERTIES 
  VALUES ('P0017', 'B0006', 'PO005', 330000, 
          'FS', 'Semi-Detached', '01-JUL-2022', 
          'Small terraced house in a good area', 2000,
          'A0059');
INSERT INTO PROPERTIES 
  VALUES ('P0018', 'B0006', 'PO001', 324000, 
          'FS', 'Detached', '01-JUL-2022', 
          'Large Detached house in a good area', 3000,
          'A0060');
INSERT INTO PROPERTIES 
  VALUES ('P0019', 'B0006', 'PO002', 220000, 
          'FS', 'Semi-Detached', '30-JUN-2022', 
          'Large Detached house in a good area', 3000,
          'A0061');
INSERT INTO PROPERTIES 
  VALUES ('P0020', 'B0006', 'PO004', 210000, 
          'S', 'Flat', '30-JUN-2022', 
          'Large flat close to the centre', 2000,
          'A0062');
INSERT INTO PROPERTIES 
  VALUES ('P0021', 'B0006', 'PO004', 195000, 
          'S', 'Terraced', '30-JUN-2019', 
          'Medium sized terraced house', 3000,
          'A0063');
INSERT INTO PROPERTIES 
  VALUES ('P0022', 'B0006', 'PO004', 320000, 
          'S', 'Semi-Detached', '30-JUN-2019', 
          'Large Detached house', 5000,
          'A0064');
INSERT INTO PROPERTIES 
  VALUES ('P0023', 'B0006', 'PO002', 300000, 
          'S', 'Semi-Detached', '30-JUN-2018', 
          'Large Semi-Detached house', 3000,
          'A0065');



REM Prop Rooms 

INSERT INTO PROP_ROOMS
  VALUES('P0001', 'A very nice bathroom', 'Bathroom');
INSERT INTO PROP_ROOMS
  VALUES('P0001', 'A very nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0001', 'A very nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0001', 'A large kitchen', 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0001', 'Small Cupboard', 'Other');
INSERT INTO PROP_ROOMS
  VALUES('P0002', 'A nice bathroom', 'Bathroom');
INSERT INTO PROP_ROOMS
  VALUES('P0002', 'A large bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0002', 'A medium size bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0002', 'A medium size bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0003', 'Large bedroom with ensuit', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0003', 'A medium bathroom', 'Bathroom');
INSERT INTO PROP_ROOMS
  VALUES('P0003', 'A large light bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0003', 'A medium dark size bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0003', 'A kitchen with island', 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0004', 'Small bedroom with ensuit', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0004', 'A small bathroom', 'Bathroom');
INSERT INTO PROP_ROOMS
  VALUES('P0004', 'A small kitchen', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0005', 'A medium size bedroom with desk', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0005', 'A medium size bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0005', 'A kitchen with all ameneities', 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0006', 'A small study', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0006', 'A medium size bedroom with ensuit', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0006', 'A kitchen with all ameneities', 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0006', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0006', 'A light airy livingroom', 'Living Room');
INSERT INTO PROP_ROOMS
  VALUES('P0006', 'A gym complete with swimming pool', 'Other');
INSERT INTO PROP_ROOMS
  VALUES('P0007', 'A medium size bedroom with ensuit', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0007', 'A kitchen with all ameneities', 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0007', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0007', 'A large bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0007', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0008', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0008', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0008', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0008', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0008', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0009', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0009', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0009', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0009', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0010', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0010', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0010', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0010', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0010', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0010', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0011', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0011', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0011', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0011', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0012', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0012', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0012', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0012', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0012', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A Small bathroom', 'Bathroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A bathroom', 'Bathroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A large bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0014', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0014', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0014', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0014', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0014', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0015', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0015', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0015', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0015', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0015', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0016', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0016', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0016', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0016', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0016', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0017', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0017', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0017', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0017', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0017', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0017', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0017', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0018', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0018', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0018', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0018', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0018', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0018', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0018', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0019', NULL, 'Kitchen');
INSERT INTO PROP_ROOMS
  VALUES('P0019', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0019', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0019', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0019', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0020', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0020', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0020', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0020', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0021', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0021', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0022', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0022', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0022', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0022', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0022', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0022', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0023', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0023', 'A nice bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0023', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0023', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0023', 'A nice bedroom', 'Bedroom');

REM Sold Property

INSERT INTO SOLD_PROPERTIES
  VALUES('C0001', 'P0002', 177500, '10-MAR-2018');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0002', 'P0011', 650000, '20-APR-2019');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0003', 'P0012', 185000, '30-JUN-2020');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0001', 'P0020', 230000, '10-MAR-2018');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0004', 'P0021', 210000, '20-APR-2019');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0005', 'P0022', 300000, '30-JUN-2020');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0006', 'P0023', 312000, '10-MAR-2018');

REM DPS

INSERT INTO DPS
  VALUES ('DPS01', 'Secure My Deposit', 'info@smd.com');
INSERT INTO DPS
  VALUES ('DPS02', 'Deposit Locker', 'info@depositlocker.com');
INSERT INTO DPS
  VALUES ('DPS03', 'Saftey Box', 'info@safteybox.com');
INSERT INTO DPS
  VALUES ('DPS04', 'National Deposit Security', 'info@nds.com');

REM Rented Properties

INSERT INTO RENTED_PROPERTIES 
  VALUES ('C0002', 'P0007', 2000, '10-MAY-2022', '10-MAY-2023', 'DPS01');
INSERT INTO RENTED_PROPERTIES 
  VALUES ('C0003', 'P0007', 2000, '11-MAR-2022', '11-JUL-2023', 'DPS01');
INSERT INTO RENTED_PROPERTIES 
  VALUES ('C0005', 'P0015', 800, '12-JAN-2022', '10-MAY-2023', 'DPS02');
INSERT INTO RENTED_PROPERTIES 
  VALUES ('C0002', 'P0016', 1250, '01-JUL-2022', '01-JUL-2023', 'DPS03');
INSERT INTO RENTED_PROPERTIES 
  VALUES ('C0004', 'P0016', 1250, '01-JUL-2022', '01-JUL-2023', 'DPS03');
INSERT INTO RENTED_PROPERTIES 
  VALUES ('C0012', 'P0016', 1250, '01-JUL-2022', '01-JUL-2023', 'DPS03');

REM Viewings 

INSERT INTO VIEWING
  VALUES ('V0001', 'P0001', 'B0001', 'C0002', '10-MAY-2022 10:00:00');
INSERT INTO VIEWING
  VALUES ('V0002', 'P0003', 'B0005', 'C0005', '10-MAY-2022 17:25:00');
INSERT INTO VIEWING
  VALUES ('V0003', 'P0014', 'B0008', 'C0006', '11-MAY-2022 14:00:00');
INSERT INTO VIEWING
  VALUES ('V0004', 'P0005', 'B0007', 'C0002', '20-APR-2022 11:20:00');
INSERT INTO VIEWING
  VALUES ('V0005', 'P0014', 'B0008', 'C0003', '13-MAR-2022 11:20:00');
INSERT INTO VIEWING
  VALUES ('V0006', 'P0004', 'B0007', 'C0004', '12-JAN-2022 12:30:00');
INSERT INTO VIEWING
  VALUES ('V0007', 'P0004', 'B0007', 'C0004', '10-MAY-2022 14:30:00');

REM Comments 

INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0001', 'Liked the place, but a little small', 'During');
INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0001', 'Has decided not to go ahead due to size', 'After');
INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0002', 'At the top of the customers price range', 'Before');
INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0002', 'Is going to place an offer', 'After');
INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0004', 'Customer does not like the property', 'During');
INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0005', 'Property is too small', 'After');
INSERT INTO VIEWING_COMMENTS 
  VALUES ('V0006', 'Loves the property, bigger than expected', 'During');

REM Estate Agents 

INSERT INTO ESTATE_AGENT 
  VALUES ('EA001', 'B0001', 'https://property.co.uk', 'Property');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA002', 'B0004', 'https://iliketomoveit.co.uk', 'I Like to Move It');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA003', 'B0005', 'https://helloworld.co.uk', 'Hello World');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA004', 'B0002', 'https://mymove.co.uk', 'My Move');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA005', 'B0007', 'https://newcastlehomes.co.uk', 'Newcastle Homes');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA006', 'B0012', 'https://movemeplease.co.uk', 'Move Me Please');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA007', 'B0009', 'https://homeleyhomes.co.uk', 'Homely Homes');
INSERT INTO ESTATE_AGENT 
  VALUES ('EA008', 'B0008', 'https://moveoutofmyway.co.uk', 'Move Out of My Way');

COMMIT;


ALTER TABLE BRANCH
  ADD CONSTRAINT BRANCH_EA_REF
    FOREIGN KEY (ea_id) REFERENCES ESTATE_AGENT;

ALTER TABLE STAFF 
  ADD CONSTRAINT STAFF_BRANCH_REF
    FOREIGN KEY (branch_id) REFERENCES BRANCH;

COMMIT;
/