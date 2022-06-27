-- Counties

INSERT INTO COUNTIES 
  VALUES ('CO01', 'Tyne and Wear');
INSERT INTO COUNTIES 
  VALUES ('CO02', 'Bedfordshire');
INSERT INTO COUNTIES 
  VALUES ('CO03', 'East Sussex');
INSERT INTO COUNTIES 
  VALUES ('CO04', 'West Yorkshire');

-- City 

INSERT INTO CITY 
  VALUES ('NE1', 'Newcastle-Upon-Tyne', 'CO01');
INSERT INTO CITY 
  VALUES ('LU', 'Luton', 'CO02');
INSERT INTO CITY 
  VALUES ('BN', 'Brighton', 'CO03');
INSERT INTO CITY 
  VALUES ('LS', 'Leeds', 'CO04');
INSERT INTO CITY 
  VALUES ('SR', 'Sunderland', 'CO05');
INSERT INTO CITY 
  VALUES ('NE2', 'Gateshead', 'CO06');

-- Location

INSERT INTO CITY_LOCATION 
  VALUES('CL0001', 'NE1', 'Jesmond');
INSERT INTO CITY_LOCATION 
  VALUES('CL0002', 'NE1', 'Fenham');
INSERT INTO CITY_LOCATION 
  VALUES('CL0003', 'NE1', 'Heaton');
INSERT INTO CITY_LOCATION 
  VALUES('CL0004', 'LS', 'Burley');
INSERT INTO CITY_LOCATION 
  VALUES('CL0005', 'BN', 'Kemptown');
INSERT INTO CITY_LOCATION 
  VALUES('CL0006', 'LU', 'Bushmead');
INSERT INTO CITY_LOCATION 
  VALUES('CL0007', 'LU', 'Warden Hill');
INSERT INTO CITY_LOCATION 
  VALUES ('CL0008', 'LS', 'Meanwood');
INSERT INTO CITY_LOCATION 
  VALUES ('CL0009', 'NE2', 'Felling');
INSERT INTO CITY_LOCATION 
  VALUES ('CL0010', 'LS', 'Hyde Park');
INSERT INTO CITY_LOCATION 
  VALUES ('CL0011', 'LS', 'City Centre');
INSERT INTO CITY_LOCATION 
  VALUES ('CL0012', 'NE2', 'Dunston');

-- Customers

INSERT INTO CUSTOMER
  VALUES ('C0001', 'Daniel Heery', 'M', '06-APR-1994');
INSERT INTO CUSTOMER
  VALUES ('C0002', 'Anna Heery', 'F', '26-JUN-1996');
INSERT INTO CUSTOMER
  VALUES ('C0003', 'Conn Heery', 'M', '03-DEC-1963');
INSERT INTO CUSTOMER
  VALUES ('C0004', 'Monique Heery', 'F', '13-NOV-1966');
INSERT INTO CUSTOMER
  VALUES ('C0005', 'Ryan Barker', 'M', '16-DEC-1995');
INSERT INTO CUSTOMER
  VALUES ('C0006', 'Vitoria Savy', 'F', '10-MAY-1950');
INSERT INTO CUSTOMER
  VALUES ('C0007', 'Beatrice Potter', 'F', '28-JUL-1966');
INSERT INTO CUSTOMER
  VALUES ('C0008', 'Rafa Benitez', 'M', '16-APR-1960');
INSERT INTO CUSTOMER
  VALUES ('C0009', 'Emily Clarke', 'F', '20-DEC-1982');
INSERT INTO CUSTOMER
  VALUES ('C0010', 'Antonio Banderas', 'M', '10-AUG-1960');
INSERT INTO CUSTOMER
  VALUES ('C0011', 'Edmund Dijkstra', 'M', '16-DEC-1995');
INSERT INTO CUSTOMER
  VALUES ('C0012', 'William Shakespeare', 'O', '23-APR-1964');

-- Customer Address

INSERT INTO CUSTOMER_ADDR
  VALUES ('C0001', '48 Wolseley Gardens', NULL, 'NE2 1HR', 'NE');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0002', '21 Knowle Road', NULL, 'LS4 2PJ', 'LS');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0003', '60 Wychwood Avenue', NULL, 'LU2 7HU', 'LU');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0004', '28 Grosvenor Gardens', NULL, 'NE4 5HT', 'NE');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0005', '77 Sunderland Road', NULL, 'NE15 4PS', 'NE');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0006', '10 Farmbrook close', NULL, 'LU2 7FS', 'LU');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0007', '18 Alphabet Street', NULL, 'BN4 2FA', 'BN');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0008', '21 Poltergeist Avenue', NULL, 'LS5 22F', 'LS');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0009', '12 Gordon Terrace', NULL, 'LS2 2FA', 'LS');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0010', '5 Smokehouse Street', NULL, 'BN42 5FS', 'BN');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0011', '16 Pythagorus Close', NULL, 'LU3 3PJ', 'LU');
INSERT INTO CUSTOMER_ADDR
  VALUES ('C0012', '18 Whitehall Avenue', NULL, 'NE22 2TT', 'NE');

-- Customer Contact Details 

INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0001', 'heery@live.co.uk', '07437519714', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0002', 'annaheery@live.co.uk', '07437419714', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0003', 'connheery@live.co.uk', '07217519714', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0004', 'moniqueheery@live.co.uk', '07431119714', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0005', 'ryanbarker@live.co.uk', '07437519774', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0006', 'vitoriasavy@live.co.uk', '07437512774', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0007', 'beatriceporter@live.co.uk', '07421519774', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0008', 'rafabenitez@live.co.uk', '0743253777', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0009', 'emilyclarke@live.co.uk', '07412519774', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0010', 'abanderas@live.co.uk', '07437239774', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0011', 'edijkstra@live.co.uk', '07437436774', NULL);
INSERT INTO CUSTOMER_CONTACT 
  VALUES ('C0012', 'willshakespeare@live.co.uk', '07477779774', NULL);

-- Staff

INSERT INTO STAFF 
  VALUES ('S00001', 'B0002', 'Bob Dylan');
INSERT INTO STAFF 
  VALUES ('S00002', 'B0001', 'Ryan Phillips');
INSERT INTO STAFF 
  VALUES ('S00003', 'B0003', 'Gretchen Parlato');
INSERT INTO STAFF 
  VALUES ('S00004', 'B0008','Mark Guiliana');
INSERT INTO STAFF 
  VALUES ('S00005', 'B0001', 'Will Stead');
INSERT INTO STAFF 
  VALUES ('S00006', 'B0012', 'Adam Howard');
INSERT INTO STAFF 
  VALUES ('S00007', 'B0004', 'Ian Rush');
INSERT INTO STAFF 
  VALUES ('S00008', 'B0005', 'Chuck Norris');
INSERT INTO STAFF 
  VALUES ('S00009', 'B0007', 'Conor Magi');
INSERT INTO STAFF 
  VALUES ('S00010', 'B0011', 'Avashi Cohen');
INSERT INTO STAFF 
  VALUES ('S00011', 'B0006', 'Tigran Hamassyan');
INSERT INTO STAFF 
  VALUES ('S00012', 'B0009', 'John Coltrane');
INSERT INTO STAFF 
  VALUES ('S00013', 'B0010', 'Lauren Woods');
INSERT INTO STAFF 
  VALUES ('S00014', 'B0002', 'Georgina Stakes');
INSERT INTO STAFF 
  VALUES ('S00015', 'B0003', 'Rebecca Frodsham');
INSERT INTO STAFF 
  VALUES ('S00016', 'B0004', 'Kieron Dyer');
INSERT INTO STAFF 
  VALUES ('S00017', 'B0005', 'David Blane');
INSERT INTO STAFF 
  VALUES ('S00018', 'B0006', 'Ciara Miller');
INSERT INTO STAFF 
  VALUES ('S00019', 'B0007', 'Julie Andrews');
INSERT INTO STAFF 
  VALUES ('S00020', 'B0008', 'Manny Gambureon');


-- Staff Contact 

INSERT INTO STAFF_CONTACT 
  VALUES ('S00001', 'bdylan@aol.co.uk', '07437523714');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00002', 'rphilips@live.co.uk', '07437321971');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00003', 'gretchenpar@live.com', '07212319714');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00004', 'mguiliana@gmail.com', '07931998714');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00005', 'williestead@gmail.com', '07897183374');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00006', 'ahoward@gmail.com', '07897119884');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00007', 'ianrush@gmail.com', '07897119114');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00008', 'chucknorris@chucknorris.co.uk', '07897119334');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00009', 'cmagi@gmail.com', '07897119444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00010', 'achoen@gmail.com', '07227119444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00011', 'tigranhamssyan@gmail.com', '07897119144');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00012', 'jcoltrane@gmail.com', '07893129444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00013', 'lwoods@gmail.com', '07897119555');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00014', 'gstakes@gmail.com', '07895669444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00015', 'rfrodsham@gmail.com', '07897239444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00016', 'kierondyer@gmail.com', '07907119444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00017', 'davidblane@gmail.com', '07876681040');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00018', 'ciaramiller@gmail.com', '07897788844');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00019', 'julieandrews@gmail.com', '07896616444');
INSERT INTO STAFF_CONTACT 
  VALUES ('S00020', 'mgambureon@gmail.com', '07899119444');

-- Staff Address

INSERT INTO STAFF_ADDR
  VALUES ('S00001', '17 Grosvenor Gardens', NULL, 'NE2 2HR', 'NE');
INSERT INTO STAFF_ADDR
  VALUES ('S00002', '37 Farmbrook', NULL, 'LU4 2J1', 'LU');
INSERT INTO STAFF_ADDR
  VALUES ('S00003', '30 Gordon Terrace', NULL, 'LS6 4HX', 'LS');
INSERT INTO STAFF_ADDR
  VALUES ('S00004', '20 Wrangthorn Place', NULL, 'LS2 1HB', 'LS');
INSERT INTO STAFF_ADDR
  VALUES ('S00005', '20 Delph Lane', NULL, 'LS24 8HX', 'LS');
INSERT INTO STAFF_ADDR
  VALUES ('S00006', '250 Aspect 14', 'Elmwood Lane', 'LS2 8WG', 'LS');
INSERT INTO STAFF_ADDR
  VALUES ('S00007', '20 Wolseley Gardens', NULL, 'NE2 1HR', 'NE');
INSERT INTO STAFF_ADDR
  VALUES ('S00008', '13 Osbourne Road', NULL, 'NE2 2TD', 'NE');
INSERT INTO STAFF_ADDR
  VALUES ('S00009', '10 Heaton Park Road', NULL, 'NE6 5PR', 'NE');
INSERT INTO STAFF_ADDR
  VALUES ('S00010', '38 Sunderland Road', NULL, 'NE8 3HF', 'NE');
INSERT INTO STAFF_ADDR
  VALUES ('S00011', '3 Gateway House', '15 North Lane', 'LS6 3HG', 'LS');
INSERT INTO STAFF_ADDR
  VALUES ('S00012', '209 Marsh Road', NULL, 'LU3 2RT', 'LU');
INSERT INTO STAFF_ADDR
  VALUES ('S00013', '598 Hitchin Road', NULL, 'LU2 7UG', 'LU');
INSERT INTO STAFF_ADDR
  VALUES ('S00014', '160 Hockwell Ring', NULL, 'LU4 9NL', 'LU');
INSERT INTO STAFF_ADDR
  VALUES ('S00015', '16 Hanover Street', NULL, 'BN2 9WD', 'BN');
INSERT INTO STAFF_ADDR
  VALUES ('S00016', '92 DitchlinG Road', NULL, 'BN1 4SE', 'BN');
INSERT INTO STAFF_ADDR
  VALUES ('S00017', '16 Market Street', NULL, 'BN1 1HH', 'BN');
INSERT INTO STAFF_ADDR
  VALUES ('S00018', '65 Church Road', NULL, 'BN3 2BD', 'BN');
INSERT INTO STAFF_ADDR
  VALUES ('S00019', '61 Wilson Avenue', NULL, 'BN2 5PA', 'BN');
INSERT INTO STAFF_ADDR
  VALUES ('S00020', '66 Bridge Street', NULL, 'LS27 0EZ', 'LS');

-- Payroll Details

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


-- Branch 

INSERT INTO BRANCH 
  VALUES ('B0001', 'S00005', 'EA001');
INSERT INTO BRANCH 
  VALUES ('B0002', 'S00001', 'EA004');
INSERT INTO BRANCH 
  VALUES ('B0003', 'S00003', 'EA001');
INSERT INTO BRANCH 
  VALUES ('B0004', 'S00007', 'EA002');
INSERT INTO BRANCH 
  VALUES ('B0005', 'S00008', 'EA003');
INSERT INTO BRANCH 
  VALUES ('B0006', 'S00011', 'EA003');
INSERT INTO BRANCH 
  VALUES ('B0007', 'S00009', 'EA005');
INSERT INTO BRANCH
  VALUES ('B0008', 'S00004', 'EA008');
INSERT INTO BRANCH 
  VALUES ('B0009', 'S00012', 'EA007');
INSERT INTO BRANCH 
  VALUES ('B0010', 'S00013', 'EA007');
INSERT INTO BRANCH 
  VALUES ('B0011', 'S00010', 'EA002');
INSERT INTO BRANCH 
  VALUES ('B0012', 'S00006', 'EA006');

-- Branch Contact Details

INSERT INTO BRANCH_CONTACT
  VALUES ('B0001', 'info@propertynewcastle.co.uk', '07876671020');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0002', 'info@mymoveleeds.co.uk', '07876671111');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0003', 'info@propertyleeds.co.uk', '07777771020');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0004', 'info@iliketomoveitbrighton.co.uk', '07876634563');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0005', 'info@helloworldluton.co.uk', '07876667182');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0006', 'info@helloworldnewcastle.co.uk', '07876671634');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0007', 'info@newcastlehomes.co.uk', '07876098220');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0008', 'info@moveoutofmyway.co.uk', '07878877652');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0009', 'info@homelyhomesleeds.co.uk', '07832435643');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0010', 'info@homelyhomesluton.co.uk', '07876887766');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0011', 'info@iliketomoveitnewcastle.co.uk', '07876091823');
INSERT INTO BRANCH_CONTACT
  VALUES ('B0012', 'info@movemeplease.co.uk', '07876839201');

-- Branch Address

INSERT INTO BRANCH_ADDR
  VALUES ('B0001', '123 Heaton Road', NULL, 'NE6 2BB', 'NE');
INSERT INTO BRANCH_ADDR
  VALUES ('B0002', '28 Gordon Terrace', NULL, 'LS6 4HX', 'LS');
INSERT INTO BRANCH_ADDR
  VALUES ('B0003', '30 Elmwood Lane', NULL, 'LS8 2HJ', 'LS');
INSERT INTO BRANCH_ADDR
  VALUES ('B0004', '21 Dove Tail Road', NULL, 'BN5 6TT', 'BN');
INSERT INTO BRANCH_ADDR
  VALUES ('B0005', '40 Warden Crescent', NULL, 'LU5 2P8', 'LU');
INSERT INTO BRANCH_ADDR
  VALUES ('B0006', '20 Osbourne Road', NULL, 'NE4 5FR', 'NE');
INSERT INTO BRANCH_ADDR
  VALUES ('B0007', '13 Sunderland Road', NULL, 'NE4 5FR', 'NE');
INSERT INTO BRANCH_ADDR
  VALUES ('B0008', '20 Hockwel Ring', NULL, 'LU23 4HR', 'LU');
INSERT INTO BRANCH_ADDR
  VALUES ('B0009', '12 Briggate Street', NULL, 'LS10 1FB', 'LS');
INSERT INTO BRANCH_ADDR
  VALUES ('B0010', '37 Wiseman Close', NULL, 'LU3 25S', 'LU');
INSERT INTO BRANCH_ADDR
  VALUES ('B0011', '89 St Georges Terrace', NULL, 'NE7 2DN', 'NE');
INSERT INTO BRANCH_ADDR
  VALUES ('B0012', '80 St Jamess Boulevord', NULL, 'NE1 4BN', 'NE');


-- Prop Owner

INSERT INTO PROP_OWNER 
  VALUES('PO001', 'C0004', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO002', 'C0008', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO003', 'C0011', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO004', 'C0009', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO005', 'C0002', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('PO006', 'C0005', 'B0009');

-- Properties 

INSERT INTO PROPERTIES 
  VALUES ('P0001', 'B0001', 'PO001', 125000, 'FS', 'Semi-Detatched', '01-APR-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0002', 'B0002', 'PO001', 175000, 'S', 'Terraced', '30-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0003', 'B0005', 'PO004', 225000, 'FS', 'Flat', '15-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0004', 'B0007', 'PO001', 145000, 'FS', 'Semi-Detatched', '02-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0005', 'B0007', 'PO006', 600200, 'FS', 'Detatched', '06-MAR-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0006', 'B0007', 'PO002', 1200, 'FL', 'Semi-Detatched', '25-MAY-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0007', 'B0002', 'PO002', 1800, 'L', 'Flat', '22-MAY-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0008', 'B0002', 'PO003', 120000, 'FL', 'Semi-Detatched', '05-MAY-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0009', 'B0002', 'PO003', 920500, 'FS', 'Detatched', '20-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0010', 'B0004', 'PO004', 850, 'FL', 'Terraced', '20-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0011', 'B0003', 'PO001', 500000, 'S', 'Semi-Detatched', '10-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0012', 'B0006', 'PO005', 145000, 'S', 'Terraced', '30-MAY-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0013', 'B0007', 'PO002', 1600, 'FL', 'Flat', '06-APR-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0014', 'B0008', 'PO002', 177500, 'FS', 'Terraced', '05-MAR-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0015', 'B0008', 'PO003', 3400, 'L', 'Detatched', '13-JUN-2022');
INSERT INTO PROPERTIES 
  VALUES ('P0016', 'B0010', 'PO003', 1400, 'L', 'Flat', '02-JUN-2022');

-- Property Addresses

INSERT INTO PROP_ADDR
  VALUES('P0001', '20 Wolseley Gardens', NULL, 'NE2 1HR', 'CL0001');
INSERT INTO PROP_ADDR
  VALUES('P0002', '15 Knowle Road', 'Flat A', 'LS4 2PJ', 'CL0004');
INSERT INTO PROP_ADDR
  VALUES('P0003', '20 Wiseman Close', NULL, 'LU3 12H', 'CL0007');
INSERT INTO PROP_ADDR
  VALUES('P0004', '1 Heaton Road', NULL, 'NE3 1HB', 'CL0003');
INSERT INTO PROP_ADDR
  VALUES('P0005', '10 Felling Gate', NULL, ' NE10 0AA', 'CL0009');
INSERT INTO PROP_ADDR
  VALUES('P0006', '15 Felling Gate', NULL, ' NE10 0AA', 'CL0009');
INSERT INTO PROP_ADDR
  VALUES('P0007', '221 Aspect 14', 'Elmwood Lane', 'LS2 8WG', 'CL0012');
INSERT INTO PROP_ADDR
  VALUES('P0008', '14 Knowle Mount', NULL, 'LS4 2PG', 'CL0004');
INSERT INTO PROP_ADDR
  VALUES('P0009', '46 Gordon Terrace', NULL, 'LS6 4HX', 'CL0008');
INSERT INTO PROP_ADDR
  VALUES('P0010', '16 College Road', NULL, 'BN6 4HR', 'CL0005');
INSERT INTO PROP_ADDR
  VALUES('P0011', '26 Bexton Mount', NULL, 'LS6 2PQ', 'CL0011');
INSERT INTO PROP_ADDR
  VALUES('P0012', '16 Stickwell Close', NULL, 'NE15 4FF', 'CL0002');
INSERT INTO PROP_ADDR
  VALUES('P0013', '15 Heaton Road', NULL, 'NE3 1HB', 'CL0002');
INSERT INTO PROP_ADDR
  VALUES('P0014', '12 Farmbrook', NULL, 'LU2 3FR', 'CL0007');
INSERT INTO PROP_ADDR
  VALUES('P0015', '10 Leagrave Road', NULL, 'LU24 4TT', 'CL0006');
INSERT INTO PROP_ADDR
  VALUES('P0016', '21 March Road', NULL, 'LU28 4FR', 'CL0007');

-- Prop Rooms 

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
  VALUES('P0013', 'A Small bedroom', 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', NULL, 'Bedroom');
INSERT INTO PROP_ROOMS
  VALUES('P0013', 'A nice bedroom', 'Bedroom');
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

-- Sold Property

INSERT INTO SOLD_PROPERTIES
  VALUES('C0001', 'P0002', 177500, '10-MAR-2018');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0002', 'P0011', 650000 '20-APR-2019');
INSERT INTO SOLD_PROPERTIES
  VALUES('C0003', 'P0012', 185000 '30-JUN-2020');

-- Sold Property

INSERT INTO SOLD_PROPERTIES
  VALUES('C0001', 'P0002', 177500);
INSERT INTO SOLD_PROPERTIES
  VALUES('C0002', 'P0011', 650000);
INSERT INTO SOLD_PROPERTIES
  VALUES('C0003', 'P0012', 185000);

-- DPS

INSERT INTO DPS
  VALUES ('DPS01', 'Secure My Deposit', 'info@smd.com');
INSERT INTO DPS
  VALUES ('DPS02', 'Deposit Locker', 'info@depositlocker.com');
INSERT INTO DPS
  VALUES ('DPS03', 'Saftey Box', 'info@safteybox.com');
INSERT INTO DPS
  VALUES ('DPS04', 'National Deposit Security', 'info@nds.com');

-- Tennants 

INSERT INTO TENNANTS 
  VALUES ('C0002', 'P0007', 2000, '10-MAY-2022', '10-MAY-2023', 'DPS01');
INSERT INTO TENNANTS 
  VALUES ('C0003', 'P0007', 2000, '11-MAR-2022', '11-JUL-2023', 'DPS01');
INSERT INTO TENNANTS 
  VALUES ('C0005', 'P0015', 800, '12-JAN-2022', '10-MAY-2023', 'DPS02');
INSERT INTO TENNANTS 
  VALUES ('C0002', 'P0016', 1250, '01-JUL-2022', '01-JUL-2023', 'DPS03');
INSERT INTO TENNANTS 
  VALUES ('C0004', 'P0016', 1250, '01-JUL-2022', '01-JUL-2023', 'DPS03');
INSERT INTO TENNANTS 
  VALUES ('C0012', 'P0016', 1250, '01-JUL-2022', '01-JUL-2023', 'DPS03');

-- Viewings 

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

-- Comments 

INSERT INTO COMMENTS 
  VALUES ('V0001', 'Liked the place, but a little small', 'During');
INSERT INTO COMMENTS 
  VALUES ('V0001', 'Has decided not to go ahead due to size', 'After');
INSERT INTO COMMENTS 
  VALUES ('V0002', 'At the top of the customers price range', 'Before');
INSERT INTO COMMENTS 
  VALUES ('V0002', 'Is going to place an offer', 'After');
INSERT INTO COMMENTS 
  VALUES ('V0004', 'Customer does not like the property', 'During');
INSERT INTO COMMENTS 
  VALUES ('V0005', 'Property is too small', 'After');
INSERT INTO COMMENTS 
  VALUES ('V0006', 'Loves the property, bigger than expected', 'During');

-- Estate Agents 

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