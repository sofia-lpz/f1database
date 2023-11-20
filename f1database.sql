create table car (
    car_id varchar(10) primary key,
    car_model varchar(15),
    car_year int,
    power_unit enum ('mercedes', 'ferrari', 'renault', 'honda'),
    engine_type varchar(15),
    car_weight int
);

create table circuit (
    circuit_id varchar(5) primary key,
    circuit_name varchar(30),
    circuit_country varchar(30),
    circuit_city varchar(30),
    drs_zones int,
    sectors int,
    turns int,
    circuit_type enum('street circuit', 'race track'),
    circuit_length_km int
);

create table pilots (
    pilot_id varchar(5) primary key,
    pilot_name varchar(30),
    pilot_number int,
    pilot_birthdate date,
    pilot_age int,
    pilot_nationality varchar(30),
    pilot_height_cm int,
    pilot_weight int,
    pilot_wcs int,
    pilot_championship_index int,
    pilot_points int default 0,
    pilot_constructor varchar(5)
);

create table constructor (
    constructor_id varchar(5) primary key,
    constructor_name varchar(30),
    constructor_nationality varchar(30),
    constructors_points int default 0,
    team_principal varchar(30),
    num_engineers int,
    constructor_type enum('customer', 'builder'),
    constructor_championship_index int,
    constructor_wcs int,
    pilot_id_1 varchar(5),
    pilot_id_2 varchar(5),
    car_id varchar(5),

    foreign key (pilot_id_1) references pilots(pilot_id),
    foreign key (pilot_id_2) references pilots(pilot_id),
    foreign key (car_id) references car(car_id)
);

alter table pilots
add constraint pilot_constructor
foreign key (pilot_constructor) references constructor(constructor_id);


create table race (
    race_id varchar(5) primary key,
    race_index int,
    race_time datetime,
    race_laps int,
    qualifying_time datetime,
    race_fastest_lap_pilot varchar(5),
    race_circuit varchar(5),
    foreign key (race_circuit) references circuit(circuit_id),
    foreign key (race_fastest_lap_pilot) references pilots(pilot_id)
);

CREATE TABLE race_result (
    result_id varchar(5) PRIMARY KEY,
    race_id varchar(5),
    pilot_id varchar(5),
    final_position INT,
    points_earned INT,
foreign key (pilot_id) references pilots(pilot_id),
foreign key (race_id) references race(race_id)
);


-- car is ready
INSERT INTO car VALUES
  
    ('CARM001', 'Mercedes AMG W14', 2023, 'mercedes', 'V6 Turbo', 740),
    --('CARM002', 'Mercedes AMG W14', 2023, 'mercedes', 'V6 Turbo', 740),

    ('CARF001', 'Ferrari SF-23', 2023, 'ferrari', 'V6 Turbo', 743),
    --('CARF002', 'Ferrari SF-23', 2023, 'ferrari', 'V6 Turbo', 743),

    ('CARRB01', 'Red Bull RB19', 2023, 'honda', 'V6 Turbo', 738),
    --('CARRB02', 'Red Bull RB19', 2023, 'honda', 'V6 Turbo', 738),

    ('CARMC01', 'McLaren MCL36', 2023, 'mercedes', 'V6 Turbo', 737),
    --('CARMC02', 'McLaren MCL36', 2023, 'mercedes', 'V6 Turbo', 737),

    ('CARAR01', 'Alfa Romeo C43', 2023, 'ferrari', 'V6 Turbo', 742),
    --('CARAR02', 'Alfa Romeo C43', 2023, 'ferrari', 'V6 Turbo', 742),

    ('CARAM01', 'Aston Martin AMR23', 2023, 'mercedes', 'V6 Turbo', 739),
    --('CARAM02', 'Aston Martin AMR23', 2023, 'mercedes', 'V6 Turbo', 739),

    ('CARAT01', 'AlphaTauri AT04', 2023, 'honda', 'V6 Turbo', 736),
    --('CARAT02', 'AlphaTauri AT04', 2023, 'honda', 'V6 Turbo', 736),

    ('CARW001', 'Williams FW45', 2023, 'mercedes', 'V6 Turbo', 736),
    --('CARW002', 'Williams FW45', 2023, 'mercedes', 'V6 Turbo', 736),

    ('CARA001', 'Alpine A523', 2023, 'renault', 'V6 Turbo', 736),
    --('CARA002', 'Alpine A523', 2023, 'renault', 'V6 Turbo', 736),

    ('CARH001', 'Haas VF-23', 2023, 'ferrari', 'V6 Turbo', 736),
    --('CARH002', 'Haas VF-23', 2023, 'ferrari', 'V6 Turbo', 736);

-- circuit is ready
INSERT INTO circuit VALUES
    ('CAUS', 'Adelaide Street Circuit', 'Australia', 'Adelaide', 1, 3, 19, 'street circuit', 3.337),
    ('CBAH', 'Bahrain International Circuit', 'Bahrain', 'Sakhir', 2, 3, 15, 'race track', 5.412),
    ('CSAU', 'Jeddah Corniche Circuit', 'Saudi Arabia', 'Jeddah', 2, 3, 27, 'street circuit', 6.175),
    ('CAZER', 'Baku City Circuit', 'Azerbaijan', 'Baku', 2, 3, 20, 'street circuit', 6.003),
    ('CMIA', 'Miami International Autodrome', 'United States of America', 'Miami', 2, 3, 19, 'street circuit', 5.41),
    ('CMON', 'Circuit de Monaco', 'Monaco', 'Monte Carlo', 1, 3, 19, 'street circuit', 3.337),
    ('CESP', 'Circuit de Barcelona-Catalunya', 'Spain', 'Montmelo', 1, 3, 16, 'race track', 4.675),
    ('CCAN', 'Circuit Gilles Villeneuve', 'Canada', 'Montreal', 1, 3, 14, 'street circuit', 4.361),
    ('COST', 'Red Bull Ring', 'Austria', 'Spielberg', 1, 3, 10, 'race track', 4.318),
    ('CBRI', 'Silverstone Circuit', 'Great Britain', 'Silverstone', 2, 3, 18, 'race track', 5.891),
    ('CHUN', 'Hungaroring', 'Hungary', 'Budapest', 1, 3, 14, 'race track', 4.381),
    ('CBEL', 'Circuit de Spa-Francorchamps', 'Belgium', 'Stavelot', 1, 3, 19, 'race track', 7.004),
    ('CNET', 'Circuit Zandvoort', 'Netherlands', 'Zandvoort', 1, 3, 14, 'race track', 4.259),
    ('CITA', 'Autodromo Nazionale Monza', 'Italy', 'Monza', 1, 3, 11, 'race track', 5.793),
    ('CSIN', 'Marina Bay Street Circuit', 'Singapore', 'Singapore', 2, 3, 23, 'street circuit', 5.063),
    ('CJAP', 'Suzuka International Racing Course', 'Japan', 'Suzuka', 1, 3, 18, 'race track', 5.807),
    ('CQAT', 'Losail International Circuit', 'Qatar', 'Lusail', 1, 3, 16, 'race track', 5.38),
    ('CTEX', 'Circuit of The Americas', 'United States of America', 'Austin', 2, 3, 20, 'race track', 5.513),
    ('CMEX', 'Autodromo Hermanos Rodriguez', 'Mexico', 'Mexico City', 1, 3, 17, 'race track', 4.304),
    ('CBRA', 'Autodromo Jose Carlos Pace', 'Brazil', 'Sao Paulo', 1, 3, 15, 'race track', 4.309),
    ('CVEG', 'Las Vegas Street Circuit', 'United States of America', 'Las Vegas', 2, 3, 20, 'street circuit', 6.187),
    ('CABU', 'Yas Marina Circuit', 'United Arab Emirates', 'Abu Dhabi', 2, 3, 21, 'street circuit', 5.554);

-- (weights and heights might be off)
INSERT INTO pilots VALUES
    ('PLW44', 'Lewis Hamilton', 44, '1985-01-07', 38, 'British', 174, 70, 7, 3, 226, 'MERC'),
    ('PVB77', 'Valtteri Bottas', 77, '1989-08-28', 34, 'Finnish', 179, 68, 0, 15, 10, 'ALFA'),
    ('PMV01', 'Max Verstappen', 1, '1997-09-30', 26, 'Dutch', 183, 68, 2, 1, 524, 'RBRA'),
    ('PSP11', 'Sergio Perez', 11, '1990-01-26', 33, 'Mexican', 173, 63, 0, 2, 258, 'RBRA'),
    ('PLN04', 'Lando Norris', 4, '1999-11-13', 24, 'British', 170, 63, 0, 5, 195, 'MCLA'),
    ('PCL16', 'Charles Leclerc', 16, '1997-10-16', 26, 'Monaco', 183, 68, 0, 7, 170, 'FERR'),
    ('PCS55', 'Carlos Sainz', 55, '1994-09-01', 29, 'Spanish', 175, 68, 0, 6, 192, 'FERR'),
    ('PFA14', 'Fernando Alonso', 14, '1981-07-29', 42, 'Spanish', 171, 68, 2, 4, 198, 'ASTO'),
    ('PEO31', 'Esteban Ocon', 31, '1996-09-17', 27, 'French', 186, 70, 0, 12, 46, 'ALPI'),
    ('PGS63', 'George Russell', 63, '1998-02-15', 25, 'British', 182, 70, 0, 8, 156, 'MERC'),
    ('PDR03', 'Daniel Ricciardo', 3, '1989-07-01', 34, 'Australian', 182, 71, 0, 17, 6, 'ATAU'),
    ('PLS18', 'Lance Stroll', 18, '1998-10-29', 25, 'Canadian', 182, 74, 0, 10, 63, 'ASTO'),
    ('POP81', 'Oscar Piastri', 81, '2001-04-06', 22, 'Australian', 165, 61, 0, 9 ,87, 'MCLA'),
    ('PLS02', 'Logan Sargent', 2, '2000-12-31', 22, 'American', 173, 70, 0, 20, 1, 'WILL'),
    ('PYT22', 'Yuki Tsunoda', 22, '2000-05-11', 23, 'Japanese', 162, 58, 0, 14, 13, 'ATAU'),
    ('PZG24', 'Zhou Guanyu', 24, '1999-05-30', 24, 'Chinese', 179, 70, 0,18,6, 'ALFA'),
    ('PKM20', 'Kevin Magnussen', 20, '1992-10-05', 31, 'Danish', 173, 74, 0, 19, 3, 'HAAS'),
    ('PNH27','Nico Hulkenberg', 27, '1987-08-19', 36, 'German', 183, 70, 0, 16, 9, 'HAAS'),
    ('PAA23','Alex Albon', 23, '1996-03-23', 27, 'Thai', 180, 68, 99,13,27, 'WILL'),
    ('PPG10', 'Pierre Gasly', 10,'1996-02-07', 27, 'French', 174, 64,0,11,62, 'ALPI');

--num of engineers is fictional, 
INSERT INTO constructor VALUES
    ('MERC', 'Mercedes', 'German', 382, 'Toto Wolff', 50, 'builder', 2, 2, 'PLW44', 'PGS63', 'CARM001'),
    ('RBRA', 'Red Bull Racing', 'Austrian', 782, 'Christian Horner', 45, 'costumer', 1, 1, 'PMV01', 'PSP11', 'CARRB01'),
    ('FERR', 'Ferrari', 'Italian', 362, 'Frederic Vasseur', 52, 'builder', 3, 3, 'PCL16', 'PCS55', 'CARF001'),
    ('ALPI', 'Alpine', 'French', 108, 'Otmar Szafnauer', 43, 'builder', 6, 6, 'PEO31', 'PPG10', 'CARA001'),
    ('ATAU', 'AlphaTauri', 'Italian', 21, 'Franz Tost', 65, 'customer', 8, 8, 'PDR03', 'PYT22', 'CARAT01'),
    ('WILL', 'Williams Racing', 'British', 28, 'James Vowles', 63, 'customer', 7, 7, 'PAA23', 'PLG02', 'CARW001'),
    ('ASTO', 'Aston Martin', 'British', 261, 'Mike Krack', 58, 'costumer', 5, 5, 'PLS18', 'PFA14', 'CARAM01'),
    ('ALFA', 'Alfa Romeo Racing', 'Italy', 16, 'Alessandro Alunni Bravi', 53, 'customer', 9, 9, 'PZG24', 'PVB77', 'CARAR01'),
    ('MCLA', 'Mclaren', 'British', 282, 'Andrea Stella', 53, 'customer', 4, 4, 'PLN04', 'POP81', 'CARMC01'),
    ('HAAS', 'Haas F1 Team', 'American', 12, 'Guenther Steiner', 56, 'costumer', 10, 10, 'PKM20', 'PNH27', 'CARH001');


-- Insert data into the race table
INSERT INTO race VALUES
    ('R003', 3, '2023-03-26 14:00:00', 58, '2023-03-26 12:00:00', 'PSP11', 'CAUS'),
    ('R001', 1, '2023-04-09 13:00:00', 71, '2023-04-09 11:30:00', 'PZG24', 'CBAH'),
    ('R002', 2, '2023-04-23 15:30:00', 53, '2023-04-23 14:00:00', 'PSP11', 'CSAU'),
    ('R004', 4, '2023-05-07 12:30:00', 66, '2023-05-07 11:00:00', 'PGS63', 'CAZER'),
    ('R005', 5, '2023-05-21 14:00:00', 66, '2023-05-21 12:30:00', 'PMV01', 'CMIA'),
    ('R006', 6, '2023-06-04 13:30:00', 51, '2023-06-04 12:00:00', 'PLW44', 'CMON'),
    ('R007', 7, '2023-06-18 15:00:00', 71, '2023-06-18 13:30:00', 'PFA14', 'CESP'),
    ('R008', 8, '2023-07-02 14:30:00', 70, '2023-07-02 13:00:00', 'PSP11', 'CCAN'),
    ('R009', 9, '2023-07-16 16:00:00', 62, '2023-07-16 14:30:00', 'PMV01', 'COST'),
    ('R010', 10, '2023-07-30 13:30:00', 55, '2023-07-30 12:00:00', 'PGS63', 'CBRI'),
    ('R011', 11, '2023-08-13 15:00:00', 68, '2023-08-13 13:30:00', 'PMV01', 'CHUN'),
    ('R012', 12, '2023-08-27 14:30:00', 59, '2023-08-27 13:00:00', 'PLW44', 'CBEL'),
    ('R013', 13, '2023-09-10 13:00:00', 72, '2023-09-10 11:30:00', 'POP81', 'CNET'),
    ('R014', 14, '2023-09-24 15:30:00', 54, '2023-09-24 14:00:00', 'POP81', 'CITA'),
    ('R015', 15, '2023-10-08 12:30:00', 67, '2023-10-08 11:00:00', 'PLW44', 'CSIN'),
    ('R016', 16, '2023-10-22 14:00:00', 67, '2023-10-22 12:30:00', 'PMV01', 'CJAP'),
    ('R017', 17, '2023-11-05 13:30:00', 50, '2023-11-05 12:00:00', 'PMV01', 'CQAT'),
    ('R018', 18, '2023-11-19 15:00:00', 70, '2023-11-19 13:30:00', 'PYT09', 'CTEX'),
    ('R019', 19, '2023-12-03 14:30:00', 69, '2023-12-03 13:00:00', 'PMV01', 'CMEX'),
    ('R020', 20, '2023-12-17 16:00:00', 61, '2023-12-17 14:30:00', 'PLS02', 'CBRA'),
    ('R021', 21, '2024-01-07 13:30:00', 56, '2024-01-07 12:00:00', 'PLS02', 'CVEG'),
    ('R022', 22, '2024-01-21 15:00:00', 69, '2024-01-21 13:30:00', 'PVB77', 'CABU');


-- Insert data into the race_result table
INSERT INTO race_result VALUES 
/*race result id, race id, pilot id, pilot final position, pilot points earned*/
    ('RR21', 'R003', 'PMV01', 1, 25),
    ('RR22', 'R003', 'PLW44', 2, 18),
    ('RR23', 'R003', 'PFA14', 3, 15),
    ('RR24', 'R003', 'PLS18', 4, 12),
    ('RR25', 'R003', 'PSP11', 5, 11),
    ('RR26', 'R003', 'PLN04', 6, 8),
    ('RR27', 'R003', 'PNH27', 7, 6),
    ('RR28', 'R003', 'POP81', 8, 4),
    ('RR29', 'R003', 'PZG24', 9, 2),
    ('RR30', 'R003', 'PYT22', 10, 1),
    ('RR31', 'R003', 'PVB77', 11, 0),
    ('RR32', 'R003', 'PCS55', 12, 0),
    ('RR33', 'R003', 'PPG10', 13, 0),
    ('RR34', 'R003', 'PEO31', 14, 0),
    ('RR35', 'R003', 'PLS02', 15, 0),
    ('RR36', 'R003', 'PLS02', 16, 0),
    ('RR37', 'R003', 'PLS02', 17, 0),
    ('RR38', 'R003', 'PLS02', 18, 0),
    ('RR39', 'R003', 'PLS02', 19, 0),
    ('RR40', 'R003', 'PLS02', 20, 0),



    ('RR01', 'R001', 'PMV01', 1, 25),
    ('RR02', 'R001', 'PSP11', 2, 18),
    ('RR03', 'R001', 'PFA14', 3, 15),
    ('RR04', 'R001', 'PCS55', 4, 12),
    ('RR05', 'R001', 'PLW44', 5, 10),
    ('RR06', 'R001', 'PLS18', 6, 8),
    ('RR07', 'R001', 'PGS63', 7, 6),
    ('RR08', 'R001', 'PVB77', 8, 4),
    ('RR09', 'R001', 'PPG10', 9, 2),
    ('RR10', 'R001', 'PAA23', 10, 1),
    ('RR11', 'R001', 'PYT09', 11, 0),
    ('RR12', 'R001', 'PLS02', 12, 0),
    ('RR13', 'R001', 'POP81', 13, 0),
    ('RR14', 'R001', 'PLS02', 14, 0),
    ('RR15', 'R001', 'PLN04', 15, 0),
    ('RR16', 'R001', 'PZG24', 16, 0),
    ('RR17', 'R001', 'PNH27', 17, 0),
    ('RR18', 'R001', 'PLS02', 18, 0),
    ('RR19', 'R001', 'PKM20', 19, 0),
    ('RR20', 'R001', 'PDR03', 20, 0);


    ('RR01', 'R002', 'PSP11', 1, 25),
    ('RR02', 'R002', 'PMV01', 2, 19),
    ('RR03', 'R002', 'PFA14', 3, 15),
    ('RR04', 'R002', 'PGS63', 4, 12),
    ('RR05', 'R002', 'PLW44', 5, 10),
    ('RR06', 'R002', 'PCS55', 6, 8),
    ('RR07', 'R003', 'PCL16', 7, 6),
    ('RR08', 'R002', 'PEO31', 8, 4),
    ('RR09', 'R002', 'PPG10', 9, 2),
    ('RR10', 'R002', 'PKM20', 10, 1),
    ('RR11', 'R002', 'PYT09', 11, 0),
    ('RR12', 'R002', 'PNH27', 12, 0),
    ('RR13', 'R002', 'PZG24', 13, 0),
    ('RR14', 'R002', 'PLS02', 14, 0),
    ('RR15', 'R002', 'POP81', 15, 0),
    ('RR16', 'R002', 'PLS02', 16, 0),
    ('RR17', 'R002', 'PLN04', 17, 0),
    ('RR18', 'R002', 'PVB77', 18, 0),
    ('RR19', 'R002', 'PEO31', NULL, NULL), -- Placeholder for DNF (Did Not Finish)
    ('RR20', 'R002', 'PLS18', NULL, NULL); -- Placeholder for DNF


    ('RR01', 'R004', 'PSP11', 1, 25),
    ('RR02', 'R004', 'PMV01', 2, 18),
    ('RR03', 'R004', 'PLS18', 3, 15),
    ('RR04', 'R004', 'PFA14', 4, 12),
    ('RR05', 'R004', 'PCS55', 5, 10),
    ('RR06', 'R004', 'PLW44', 6, 8),
    ('RR07', 'R004', 'PLS18', 7, 6),
    ('RR08', 'R004', 'PGS63', 8, 5),
    ('RR09', 'R004', 'PLN04', 9, 2),
    ('RR10', 'R004', 'PYT09', 10, 1),
    ('RR11', 'R004', 'POP81', 11, 0),
    ('RR12', 'R004', 'PLS02', 12, 0),
    ('RR13', 'R004', 'PEO31', 13, 0),
    ('RR14', 'R004', 'PPG10', 14, 0),
    ('RR15', 'R004', 'PCS55', 15, 0),
    ('RR16', 'R004', 'PLS02', 16, 0),
    ('RR17', 'R004', 'PNH27', 17, 0),
    ('RR18', 'R004', 'PVB77', 18, 0),
    ('RR19', 'R004', 'PZG24', 'NC', 0),
    ('RR20', 'R004', 'PLS02', 'NC', 0);

 