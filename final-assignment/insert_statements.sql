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

INSERT INTO AREAS
  VALUES('AR001', 'NE1', 'Jesmond');
INSERT INTO AREAS
  VALUES('AR002', 'NE1', 'Fenham');
INSERT INTO AREAS
  VALUES('AR003', 'NE1', 'Heaton');
INSERT INTO AREAS
  VALUES('AR004', 'LS', 'Burley');
INSERT INTO AREAS
  VALUES('AR005', 'BN', 'Kemptown');
INSERT INTO AREAS
  VALUES('AR006', 'LU', 'Bushmead');
INSERT INTO AREAS
  VALUES('AR007', 'LU', 'Warden Hill');
INSERT INTO AREAS
  VALUES ('AR008', 'LS', 'Meanwood');
INSERT INTO AREAS
  VALUES ('AR009', 'NE2', 'Felling');
INSERT INTO AREAS
  VALUES ('AR010', 'LS', 'Hyde Park');
INSERT INTO AREAS
  VALUES ('AR011', 'LS', 'City Centre');
INSERT INTO AREAS
  VALUES ('AR012', 'NE2', 'Dunston');
INSERT INTO AREAS
  VALUES ('AR013', 'SR', 'City Centre');
INSERT INTO AREAS
  VALUES ('AR014', 'SR', 'Seaburn');
INSERT INTO AREAS
  VALUES ('AR015', 'NE3', 'Stannington Vale');


REM Insert Customers 

INSERT INTO CUSTOMER
  VALUES ('C0001', 'Daniel', 'Heery', 'M', '06-APR-1994', 'heery@live.co.uk', '07437519714', '48 Wolseley Gardens, NE2 1HR');
INSERT INTO CUSTOMER
  VALUES ('C0002', 'Anna', 'Heery', 'F', '26-JUN-1996', 'annaheery@live.co.uk', '07437419714', '21 Knowle Road, LS4 2PJ,');
INSERT INTO CUSTOMER
  VALUES ('C0003', 'Conn', 'Heery', 'M', '03-DEC-1963',  'connheery@live.co.uk', '07217519714', '60 Wychwood Avenue, LU2 7HU');
INSERT INTO CUSTOMER
  VALUES ('C0004', 'Monique', 'Heery', 'F', '13-NOV-1966', 'moniqueheery@live.co.uk', '07431119714', '28 Grosvenor Gardens, NE4 5HT');
INSERT INTO CUSTOMER
  VALUES ('C0005', 'Ryan', 'Barker', 'M', '16-DEC-1995', 'ryanbarker@live.co.uk', '07437519774', '77 Sunderland Road, NE15 4PS');
INSERT INTO CUSTOMER
  VALUES ('C0006', 'Vitoria', 'Savy', 'F', '10-MAY-1950', 'vitoriasavy@live.co.uk', '07437512774', '37 Farmbrook close, LU2 7FS');
INSERT INTO CUSTOMER
  VALUES ('C0007', 'Beatrice', 'Potter', 'F', '28-JUL-1966', 'beatriceporter@live.co.uk', '07421519774', '18 Alphabet Street, BN4 2FA');
INSERT INTO CUSTOMER
  VALUES ('C0008', 'Rafa', 'Benitez', 'M', '16-APR-1960', 'rafabenitez@live.co.uk', '07743253777', '21 Poltergeist Avenue, LS5 22F');
INSERT INTO CUSTOMER
  VALUES ('C0009', 'Emily', 'Clarke', 'F', '20-DEC-1982', 'emilyclarke@live.co.uk', '07412519774', '30 Gordon Terrace, LS6 4HX');
INSERT INTO CUSTOMER
  VALUES ('C0010', 'Antonio', 'Banderas', 'M', '10-AUG-1960', 'abanderas@live.co.uk', '07437239774', '5 Smokehouse Street, BN42 5FS');
INSERT INTO CUSTOMER
  VALUES ('C0011', 'Edmund', 'Dijkstra', 'M', '16-DEC-1995', 'edijkstra@live.co.uk', '07437436774', '16 Pythagorus Close, LU3 3PJ');
INSERT INTO CUSTOMER
  VALUES ('C0012', 'William', 'Shakespeare', 'O', '23-APR-1964',  'willshakespeare@live.co.uk', '07477779774', '18 Sunderland Street, SR22 2TT');

REM Staff

INSERT INTO STAFF 
  VALUES ('S0001', 'B0002', 'Bob', 'Dylan', 'bdylan@aol.co.uk', '07437523714', 
  '17 Grosvenor Gardens NE2 2HR');
INSERT INTO STAFF 
  VALUES ('S0002', 'B0001', 'Ryan', 'Phillips', 'rphilips@live.co.uk', '07437321971', '20 Wrangthorn Place, LS2 1HB');
INSERT INTO STAFF 
  VALUES ('S0003', 'B0003', 'Gretchen' ,'Parlato', 'gparlato@live.com', '07212319714', '20 Delph Lane, LS24 8HX');
INSERT INTO STAFF 
  VALUES ('S0004', 'B0008','Mark','Guiliana', 'mguiliana@gmail.com', '07931998714', '250 Aspect 14, Elmwood Lane, LS2 8WG');
INSERT INTO STAFF 
  VALUES ('S0005', 'B0001', 'Will','Stead',  'williestead@gmail.com', '07897183374', '20 Wolseley Gardens, NE2 1HR');
INSERT INTO STAFF 
  VALUES ('S0006', 'B0012', 'Adam','Howard', 'ahoward@gmail.com', '07897119884', '13 Osbourne Road, NE2 2TD');
INSERT INTO STAFF 
  VALUES ('S0007', 'B0004', 'Ian','Rush', 'ianrush@gmail.com', '07897119114', '10 Heaton Park Road, NE6 5PR');
INSERT INTO STAFF 
  VALUES ('S0008', 'B0005', 'Chuck','Norris', 'cn@chucknorris.co.uk', '07897119334', 'A38 Sunderland Road, NE8 3HF');
INSERT INTO STAFF 
  VALUES ('S0009', 'B0007', 'Conor','Magi', 'cmagi@gmail.com', '07897119444', '3 Gateway House, 15 North Lane, LS6 3HG');
INSERT INTO STAFF 
  VALUES ('S0010', 'B0011', 'Avashi','Cohen', 'achoen@gmail.com', '07227119444', '209 Marsh Road, LU3 2RT');
INSERT INTO STAFF 
  VALUES ('S0011', 'B0006', 'Tigran','Hamassyan', 'tha@gmail.com', '07897119144', '598 Hitchin Road, LU2 7UG');
INSERT INTO STAFF 
  VALUES ('S0012', 'B0009', 'John','Coltrane', 'jcoltrane@gmail.com', '07893129444', '160 Hockwell Ring, LU4 9NL');
INSERT INTO STAFF 
  VALUES ('S0013', 'B0010', 'Lauren','Woods', 'lwoods@gmail.com', '07897119555', '16 Hanover Street, BN2 9WD');
INSERT INTO STAFF 
  VALUES ('S0014', 'B0002', 'Georgina','Stakes', 'gstakes@gmail.com', '07895669444', 'A0024');
INSERT INTO STAFF 
  VALUES ('S0015', 'B0003', 'Rebecca','Frodsham','rfrodsha@gmail.com', '07897239444', '92 DitchlinG Road, BN1 4SE');
INSERT INTO STAFF 
  VALUES ('S0016', 'B0004', 'Kieron','Dyer', 'kierondyer@gmail.com', '07907119444', '16 Market Street, BN1 1HH');
INSERT INTO STAFF 
  VALUES ('S0017', 'B0005', 'David','Blane', 'davidblane@gmail.com', '07876681040', '65 Church Road, BN3 2BD');
INSERT INTO STAFF 
  VALUES ('S0018', 'B0006', 'Ciara','Miller', 'ciaramiller@gmail.com', '07897788844', '61 Wilson Avenue, BN2 5PA');
INSERT INTO STAFF 
  VALUES ('S0019', 'B0007', 'Julie','Andrews', 'jandrews@gmail.com', '07896616444', '66 Bridge Street, LS27 0EZ');
INSERT INTO STAFF 
  VALUES ('S0020', 'B0008', 'Manny','Gambureon', 'mgambur@gmail.com', '07899119444', '69 Bridge Street, LS27 0EZ');


REM Payroll Details

INSERT INTO PAYROLL_DETAILS
  VALUES ('S0001', 'HR512563B','018237', '45374893');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0002', 'HR522563B','183721', '45787786');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0003', 'HR122563B','283722', '65783783');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0004', 'HR512522B','183723', '76783784');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0005', 'HR521663B','683724', '78783782');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0006', 'HR522222B','384725', '45783781');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0007', 'HR512563C','281726', '21783781');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0008', 'JR662563B','682327', '23783789');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0009', 'LA512263B','283428', '12783732');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0010', 'HO111563B','683729', '00783743');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0011', 'PP512563B','789210', '05483721');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0012', 'HR513333B','987311', '00683787');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0013', 'RB511563B','986412', '58983712');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0014', 'DP123563B','981214', '51483745');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0015', 'CB112563B','482315', '12383744');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0016', 'HR512588B','387616', '64383744');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0017', 'JZ114563B','384517', '46483712');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0018', 'JZ442263B','681218', '34483723');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0019', 'JZ113567B','782319', '55683712');
INSERT INTO PAYROLL_DETAILS
  VALUES ('S0020', 'JZ122363B','283420', '12383711');


REM Branch 

INSERT INTO BRANCH 
  VALUES ('B0001', 'S0005', 'EA001', 'info@propertynewcastle.co.uk', '07876671020', '123 Heaton Road, NE6 2BB', 0.03);
INSERT INTO BRANCH 
  VALUES ('B0002', 'S0001', 'EA004', 'info@mymoveleeds.co.uk', '07876671111', '28 Gordon Terrace, LS6 4HX', 0.05);
INSERT INTO BRANCH 
  VALUES ('B0003', 'S0003', 'EA001', 'info@propertyleeds.co.uk', '07777771020', '30 Elmwood Lane, LS8 2HJ', 0.09);
INSERT INTO BRANCH 
  VALUES ('B0004', 'S0007', 'EA002', 'info@iliketomoveitbri.co.uk', '07876634563', '21 Dove Tail Road, BN5 6TT', 0.04);
INSERT INTO BRANCH 
  VALUES ('B0005', 'S0008', 'EA003', 'info@helloworldluton.co.uk', '07876667182', '40 Warden Crescent, LU5 2P8', 0.1);
INSERT INTO BRANCH 
  VALUES ('B0006', 'S0011', 'EA003', 'info@helloworldnewcast.co.uk', '07876671634', '20 Osbourne Road, NE4 5FR', 0.06);
INSERT INTO BRANCH 
  VALUES ('B0007', 'S0009', 'EA005', 'info@newcastlehomes.co.uk', '07876098220', '13 Sunderland Road, NE4 5FR', 0.04);
INSERT INTO BRANCH
  VALUES ('B0008', 'S0004', 'EA008', 'info@moveoutofmyway.co.uk', '07878877652', '20 Hockwel Ring, LU23 4HR', 0.12);
INSERT INTO BRANCH 
  VALUES ('B0009', 'S0012', 'EA007', 'info@homelyhomesleeds.co.uk', '07832435643', '12 Briggate Street, LS10 1FB', 0.06);
INSERT INTO BRANCH 
  VALUES ('B0010', 'S0013', 'EA007', 'info@homelyhomesluton.co.uk', '07876887766', '37 Wiseman Close, LU3 25S', 0.07);
INSERT INTO BRANCH 
  VALUES ('B0011', 'S0010', 'EA002', 'info@iliketomoveitnew.co.uk', '07876091823', '89 St Georges Terrace, NE7 2DN', 0.04);
INSERT INTO BRANCH 
  VALUES ('B0012', 'S0006', 'EA006', 'info@movemeplease.co.uk', '07876839201', '80 St James Boulevord, NE1 4BN', 0.17);


REM Properties 

INSERT INTO PROPERTIES 
  VALUES ('P0001', 'B0001', 125000, 
          'FS', 'Semi-Detached', '01-APR-2022',
          'Beautiful property with a nice seat', 3000);
INSERT INTO PROPERTIES 
  VALUES ('P0002', 'B0002', 175000, 
          'S', 'Terraced', '30-JUN-2022',
          'Nice house with friendly neighbours', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0003', 'B0005', 225000, 
          'FS', 'Flat', '15-JUN-2022',
          'Nice flat pet friendly', 3000);
INSERT INTO PROPERTIES 
  VALUES ('P0004', 'B0007', 145000, 
          'FS', 'Semi-Detached', '02-JUN-2022',
          'Beautiful semi-detached house with modern furnishings', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0005', 'B0007', 600200, 
          'FS', 'Detached', '06-MAR-2022',
          'Large detached house with amazing views and stables', 5500);
INSERT INTO PROPERTIES 
  VALUES ('P0006', 'B0007', 1200, 
          'FL', 'Semi-Detached', '25-MAY-2022',
          'Large property with 3 Bedrooms', 3000);
INSERT INTO PROPERTIES 
  VALUES ('P0007', 'B0002', 1800, 
          'L', 'Flat', '22-MAY-2022',
          'Great property close to the centre', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0008', 'B0002', 120000, 
          'FL', 'Semi-Detached', '05-MAY-2022',
          'Lovely small semi-detatched house', 1500);
INSERT INTO PROPERTIES 
  VALUES ('P0009', 'B0002', 920500, 
          'FS', 'Detached', '20-JUN-2022', 
          'Large house with plenty of land', 6000);
INSERT INTO PROPERTIES 
  VALUES ('P0010', 'B0004', 850, 
          'FL', 'Terraced', '20-JUN-2022', 
          'Small terraced house to rent', 1500);
INSERT INTO PROPERTIES 
  VALUES ('P0011', 'B0003', 500000, 
          'S', 'Semi-Detached', '10-JUN-2022', 
          'Great property, will surely be sold fast', 4500);
INSERT INTO PROPERTIES 
  VALUES ('P0012', 'B0006', 145000, 
          'S', 'Terraced', '30-MAY-2022', 
          'Small terraced house in a good area', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0013', 'B0007', 250000, 
          'FS', 'Detached', '30-JUN-2022',
          'Medium size flat for rent, perfect for a couple or for multiple tennants',3000);
INSERT INTO PROPERTIES 
  VALUES ('P0014', 'B0008', 177500, 
          'FS', 'Terraced', '05-MAR-2022', 
          'Terraced house for sale, complete with modern bathroom', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0015', 'B0008', 3400, 
          'L', 'Detached', '13-JUN-2022',
          'Detached house for sale, beautiful views', 4000);
INSERT INTO PROPERTIES 
  VALUES ('P0016', 'B0010', 
          1400, 'L', 'Flat', '02-JUN-2022',
          'Medium size flat for let', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0017', 'B0006', 330000, 
          'FS', 'Semi-Detached', '01-JUL-2022', 
          'Small terraced house in a good area', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0018', 'B0006', 324000, 
          'FS', 'Detached', '01-JUL-2022', 
          'Large Detached house in a good area', 3000);
INSERT INTO PROPERTIES 
  VALUES ('P0019', 'B0006', 220000, 
          'FS', 'Semi-Detached', '30-JUN-2022', 
          'Large Detached house in a good area', 3000);
INSERT INTO PROPERTIES 
  VALUES ('P0020', 'B0001', 210000, 
          'S', 'Flat', '30-JUN-2022', 
          'Large flat close to the centre', 2000);
INSERT INTO PROPERTIES 
  VALUES ('P0021', 'B0001', 195000, 
          'S', 'Terraced', '30-JUN-2019', 
          'Medium sized terraced house', 3000);
INSERT INTO PROPERTIES 
  VALUES ('P0022', 'B0003', 320000, 
          'S', 'Semi-Detached', '30-JUN-2019', 
          'Large Detached house', 5000);
INSERT INTO PROPERTIES 
  VALUES ('P0023', 'B0002', 300000, 
          'S', 'Semi-Detached', '30-JUN-2018', 
          'Large Semi-Detached house', 3000);

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

REM PROP_ADDR 

INSERT INTO PROP_ADDR
  VALUES('P0001', '20 Wolseley Gardens', NULL, 'NE2 1HR', 'AR001');
INSERT INTO PROP_ADDR
  VALUES('P0002', '15 Knowle Road', 'Flat A', 'LS4 2PJ', 'AR004');
INSERT INTO PROP_ADDR
  VALUES('P0003', '20 Wiseman Close', NULL, 'LU3 12H', 'AR007');
INSERT INTO PROP_ADDR
  VALUES('P0004', '1 Heaton Road', NULL, 'NE3 1HB', 'AR003');
INSERT INTO PROP_ADDR
  VALUES('P0005', '10 Felling Gate', NULL, ' NE10 0AA', 'AR009');
INSERT INTO PROP_ADDR
  VALUES('P0006', '15 Felling Gate', NULL, ' NE10 0AA', 'AR009');
INSERT INTO PROP_ADDR
  VALUES('P0007', '221 Aspect 14', 'Elmwood Lane', 'LS2 8WG', 'AR012');
INSERT INTO PROP_ADDR
  VALUES('P0008', '14 Knowle Mount', NULL, 'LS4 2PG', 'AR004');
INSERT INTO PROP_ADDR
  VALUES('P0009', '46 Gordon Terrace', NULL, 'LS6 4HX', 'AR008');
INSERT INTO PROP_ADDR
  VALUES('P0010', '16 College Road', NULL, 'BN6 4HR', 'AR005');
INSERT INTO PROP_ADDR
  VALUES('P0011', '26 Bexton Mount', NULL, 'LS6 2PQ', 'AR010');
INSERT INTO PROP_ADDR
  VALUES('P0012', '16 Stickwell Close', NULL, 'NE15 4FF', 'AR002');
INSERT INTO PROP_ADDR
  VALUES('P0013', '15 Heaton Road', NULL, 'NE3 1HB', 'AR003');
INSERT INTO PROP_ADDR
  VALUES('P0014', '12 Farmbrook', NULL, 'LU2 3FR', 'AR007');
INSERT INTO PROP_ADDR
  VALUES('P0015', '10 Leagrave Road', NULL, 'LU24 4TT', 'AR006');
INSERT INTO PROP_ADDR
  VALUES('P0016', '21 Marsh Road', NULL, 'LU28 4FR', 'AR007');
INSERT INTO PROP_ADDR
  VALUES('P0017', '10 Stick Well Close', NULL, 'NE15 4FF', 'AR002');
INSERT INTO PROP_ADDR
  VALUES('P0018', '27 Heaton Road', NULL, 'NE15 4FF', 'AR003');
INSERT INTO PROP_ADDR
  VALUES('P0019', '27 Fenham Road', NULL, 'NE15 32P', 'AR002');
INSERT INTO PROP_ADDR
  VALUES('P0020', '15 Aldern Tower', 'Flat 4', 'SR3 3AT', 'AR013');
INSERT INTO PROP_ADDR
  VALUES('P0021', '10 Aldelaide Close', NULL, 'SR1 2JN', 'AR014');
INSERT INTO PROP_ADDR
  VALUES('P0022', '27 Stannington Vale', NULL, 'NE15 32P', 'AR015');
INSERT INTO PROP_ADDR
  VALUES('P0023', '28 Sunderland Road', NULL, 'NE15 32P', 'AR009');

REM PROP_OWNERS 

REM Prop Owner

INSERT INTO PROP_OWNER 
  VALUES('P0001','C0004', 'B0001');
INSERT INTO PROP_OWNER 
  VALUES('P0002','C0008', 'B0009');
INSERT INTO PROP_OWNER 
  VALUES('P0003','C0011', 'B0004');
INSERT INTO PROP_OWNER 
  VALUES('P0004','C0009', 'B0004');
INSERT INTO PROP_OWNER 
  VALUES('P0005','C0002', 'B0001');
INSERT INTO PROP_OWNER 
  VALUES('P0006','C0005', 'B0002');
INSERT INTO PROP_OWNER 
  VALUES('P0007','C0004', 'B0002');
INSERT INTO PROP_OWNER 
  VALUES('P0008','C0008', 'B0003');
INSERT INTO PROP_OWNER 
  VALUES('P0009','C0011', 'B0005');
INSERT INTO PROP_OWNER 
  VALUES('P0010','C0009', 'B0006');
INSERT INTO PROP_OWNER 
  VALUES('P0011','C0002', 'B0007');
INSERT INTO PROP_OWNER 
  VALUES('P0012','C0005', 'B0008');
INSERT INTO PROP_OWNER 
  VALUES('P0013','C0004', 'B0008');
INSERT INTO PROP_OWNER 
  VALUES('P0014','C0008', 'B0001');
INSERT INTO PROP_OWNER 
  VALUES('P0015','C0011', 'B0002');
INSERT INTO PROP_OWNER 
  VALUES('P0016','C0009', 'B0003');
INSERT INTO PROP_OWNER 
  VALUES('P0017','C0002', 'B0004');
INSERT INTO PROP_OWNER 
  VALUES('P0018','C0005', 'B0005');

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