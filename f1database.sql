create table car (
    car_id varchar(100) primary key,
    car_model varchar(100),
    car_year int,
    power_unit enum ('mercedes', 'ferrari', 'renault', 'honda'),
    engine_type varchar(100),
    car_weight int
);

create table circuit (
    circuit_id varchar(100) primary key,
    circuit_name varchar(100),
    circuit_country varchar(100),
    circuit_city varchar(100),
    drs_zones int,
    sectors int,
    turns int,
    circuit_type enum('street circuit', 'race track'),
    circuit_length_km int
);

create table pilots (
    pilot_id varchar(100) primary key,
    pilot_name varchar(100),
-- pilot_surname varchar(100),
    pilot_number int,
    pilot_birthdate date,
    pilot_age int,
    pilot_nationality varchar(100),
    pilot_height_cm int,
    pilot_weight int,
    pilot_wcs int,
    pilot_championship_index int unique,
    pilot_points int default 0
);

create table constructor (
    constructor_id varchar(100) primary key,
    constructor_name varchar(100),
    constructor_nationality varchar(100),
    constructors_points int default 0,
    team_principal varchar(100),

    constructor_type enum('builder', 'customer'),
    constructor_championship_index int unique,
    constructor_wcs int,
    pilot_id_1 varchar(100),
    pilot_id_2 varchar(100),
    car_id varchar(100),

    foreign key (pilot_id_1) references pilots(pilot_id),
    foreign key (pilot_id_2) references pilots(pilot_id),
    foreign key (car_id) references car(car_id)
);


create table race (
    race_id varchar(100) primary key,
    race_index int unique,
    race_time datetime,
    race_laps int,
    qualifying_time datetime,
    placeholder varchar(100),
    race_circuit varchar(100),
    foreign key (race_circuit) references circuit(circuit_id)
    
);

CREATE TABLE race_result (
    result_id varchar(100) PRIMARY KEY,
    race_id varchar(100),
    pilot_id varchar(100),
    final_position INT unique,
    initial_position INT unique,
    fastest_lap int default 0,
    points_earned INT default 0,

foreign key (pilot_id) references pilots(pilot_id),
foreign key (race_id) references race(race_id)
);

-- car is ready
INSERT INTO car VALUES
    ('CARM001', 'Mercedes AMG W14', 2023, 'mercedes', 'V6 Turbo', 740),
    ('CARF001', 'Ferrari SF-23', 2023, 'ferrari', 'V6 Turbo', 743),
    ('CARRB01', 'Red Bull RB19', 2023, 'honda', 'V6 Turbo', 738),
    ('CARMC01', 'McLaren MCL36', 2023, 'mercedes', 'V6 Turbo', 737),
    ('CARAR01', 'Alfa Romeo C43', 2023, 'ferrari', 'V6 Turbo', 742),
    ('CARAM01', 'Aston Martin AMR23', 2023, 'mercedes', 'V6 Turbo', 739),
    ('CARAT01', 'AlphaTauri AT04', 2023, 'honda', 'V6 Turbo', 736),
    ('CARW001', 'Williams FW45', 2023, 'mercedes', 'V6 Turbo', 736),
    ('CARA001', 'Alpine A523', 2023, 'renault', 'V6 Turbo', 736),
    ('CARH001', 'Haas VF-23', 2023, 'ferrari', 'V6 Turbo', 736);

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
    ('PLW44', 'Lewis Hamilton', 44, '1985-01-07', 38, 'British', 174, 70, 7, 3, 226),
    ('PVB77', 'Valtteri Bottas', 77, '1989-08-28', 34, 'Finnish', 179, 68, 0, 15, 10),
    ('PMV01', 'Max Verstappen', 1, '1997-09-30', 26, 'Dutch', 183, 68, 2, 1, 524),
    ('PSP11', 'Sergio Perez', 11, '1990-01-26', 33, 'Mexican', 173, 63, 0, 2, 258),
    ('PLN04', 'Lando Norris', 4, '1999-11-13', 24, 'British', 170, 63, 0, 5, 195),
    ('PCL16', 'Charles Leclerc', 16, '1997-10-16', 26, 'Monaco', 183, 68, 0, 7, 170),
    ('PCS55', 'Carlos Sainz', 55, '1994-09-01', 29, 'Spanish', 175, 68, 0, 6, 192),
    ('PFA14', 'Fernando Alonso', 14, '1981-07-29', 42, 'Spanish', 171, 68, 2, 4, 198),
    ('PEO31', 'Esteban Ocon', 31, '1996-09-17', 27, 'French', 186, 70, 0, 12, 46),
    ('PGS63', 'George Russell', 63, '1998-02-15', 25, 'British', 182, 70, 0, 8, 156),
    ('PDR03', 'Daniel Ricciardo', 3, '1989-07-01', 34, 'Australian', 182, 71, 0, 17, 6),
    ('PLS18', 'Lance Stroll', 18, '1998-10-29', 25, 'Canadian', 182, 74, 0, 10, 63),
    ('POP81', 'Oscar Piastri', 81, '2001-04-06', 22, 'Australian', 165, 61, 0, 9 ,87),
    ('PLS02', 'Logan Sargent', 2, '2000-12-31', 22, 'American', 173, 70, 0, 20, 1),
    ('PYT22', 'Yuki Tsunoda', 22, '2000-05-11', 23, 'Japanese', 162, 58, 0, 14, 13),
    ('PZG24', 'Zhou Guanyu', 24, '1999-05-30', 24, 'Chinese', 179, 70, 0,18,6),
    ('PKM20', 'Kevin Magnussen', 20, '1992-10-05', 31, 'Danish', 173, 74, 0, 19, 3),
    ('PNH27','Nico Hulkenberg', 27, '1987-08-19', 36, 'German', 183, 70, 0, 16, 9),
    ('PAA23','Alex Albon', 23, '1996-03-23', 27, 'Thai', 180, 68, 99,13,27),
    ('PPG10', 'Pierre Gasly', 10,'1996-02-07', 27, 'French', 174, 64,0,11,62),
    ('PNV21', 'Nick de Vries', 21, '1995-09-06', 28, 'Dutch', 180, 70, 0, 21, 0),
    ('PLL40', 'Liam Lawson', 40, '2002-01-11', 21, 'New Zealander', 170, 60, 0, 22, 0);

INSERT INTO constructor VALUES
    ('MERC', 'Mercedes', 'German', 382, 'Toto Wolff', 'builder', 2, 2, 'PLW44', 'PGS63', 'CARM001'),
    ('RBRA', 'Red Bull Racing', 'Austrian', 782, 'Christian Horner', 'customer', 1, 1, 'PMV01', 'PSP11', 'CARRB01'),
    ('FERR', 'Ferrari', 'Italian', 362, 'Frederic Vasseur', 'builder', 3, 3, 'PCL16', 'PCS55', 'CARF001'),
    ('ALPI', 'Alpine', 'French', 108, 'Otmar Szafnauer', 'builder', 6, 6, 'PEO31', 'PPG10', 'CARA001'),
    ('ATAU', 'AlphaTauri', 'Italian', 21, 'Franz Tost', 'customer', 8, 8, 'PDR03', 'PYT22', 'CARAT01'),
    ('WILL', 'Williams Racing', 'British', 28, 'James Vowles', 'customer', 7, 7, 'PAA23', 'PLS02', 'CARW001'),
    ('ASTO', 'Aston Martin', 'British', 261, 'Mike Krack', 'customer', 5, 5, 'PLS18', 'PFA14', 'CARAM01'),
    ('ALFA', 'Alfa Romeo Racing', 'Italy', 16, 'Alessandro Alunni Bravi', 'customer', 9, 9, 'PZG24', 'PVB77', 'CARAR01'),
    ('MCLA', 'Mclaren', 'British', 282, 'Andrea Stella', 'customer', 4, 4, 'PLN04', 'POP81', 'CARMC01'),
    ('HAAS', 'Haas F1 Team', 'American', 12, 'Guenther Steiner', 'customer', 10, 10, 'PKM20', 'PNH27', 'CARH001');

-- (dates are wrong)
INSERT INTO race VALUES
    ('R001', 1, '2023-04-09 13:00:00', 71, '2023-04-09 11:30:00', 'PZG24', 'CBAH'),
    ('R002', 2, '2023-04-23 15:30:00', 53, '2023-04-23 14:00:00', 'PSP11', 'CSAU'),
    ('R003', 3, '2023-03-26 14:00:00', 58, '2023-03-26 12:00:00', 'PSP11', 'CAUS'),
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
    ('R018', 18, '2023-11-19 15:00:00', 70, '2023-11-19 13:30:00', 'PYT22', 'CTEX'),
    ('R019', 19, '2023-12-03 14:30:00', 69, '2023-12-03 13:00:00', 'PMV01', 'CMEX'),
    ('R020', 20, '2023-12-17 16:00:00', 61, '2023-12-17 14:30:00', 'PLS02', 'CBRA'),
    ('R021', 21, '2024-01-07 13:30:00', 56, '2024-01-07 12:00:00', 'PLS02', 'CVEG'),
    ('R022', 22, '2024-01-21 15:00:00', 69, '2024-01-21 13:30:00', 'PVB77', 'CABU');

INSERT INTO race_result VALUES 
/*race result id, race id, pilot id, final pos, initial pos, fastest lap, pilot points earned*/
--NULL for DNF in final pos
--initial position is not necesarily qualifying position (penalties)
-- NULL for pitlane start

--bahrain gp
    ('RR01', 'R001', 'PMV01', 1, 1, 0, 25),
    ('RR02', 'R001', 'PSP11', 2, 2, 0, 18),
    ('RR03', 'R001', 'PFA14', 3, 5, 0, 15),
    ('RR04', 'R001', 'PCS55', 4, 4, 0, 12),
    ('RR05', 'R001', 'PLW44', 5, 7, 0, 10),
    ('RR06', 'R001', 'PLS18', 6, 8, 0, 8),
    ('RR07', 'R001', 'PGS63', 7, 20, 0, 6),
    ('RR08', 'R001', 'PVB77', 8, 12, 0, 4),
    ('RR09', 'R001', 'PPG10', 9, 2, 0, 2),
    ('RR10', 'R001', 'PAA23', 10, 15, 0, 1),
    ('RR11', 'R001', 'PYT22', 11, 14, 0, 0),
    ('RR12', 'R001', 'PLS02', 12, 16, 0, 0),
    ('RR13', 'R001', 'PKM20', 13, 17, 0, 0),
    ('RR14', 'R001', 'PNV21', 14, 19, 0, 0),
    ('RR15', 'R001', 'PNH27', 15, 10, 0, 0),
    ('RR16', 'R001', 'PZG24', 16, 13, 1, 0),
    ('RR17', 'R001', 'PLN04', 17, 11, 0, 0),
    ('RR18', 'R001', 'PEO31', NULL, 9, 0, 0),
    ('RR19', 'R001', 'PCL16', NULL, 3, 0, 0),
    ('RR20', 'R001', 'POP81', NULL, 18, 0, 0),
    ('RR21', 'R001', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR22', 'R001', 'PLL40', NULL, NULL, NULL, NULL),

--saudi gp
    ('RR23', 'R002', 'PSP11', 1, 1, 0, 25),
    ('RR24', 'R002', 'PMV01', 2, 15, 1, 18),
    ('RR25', 'R002', 'PFA14', 3, 2, 0, 15),
    ('RR26', 'R002', 'PGS63', 4, 3, 0, 12),
    ('RR27', 'R002', 'PLW44', 5, 7, 0, 10),
    ('RR28', 'R002', 'PCS55', 6, 4, 0, 8),
    ('RR29', 'R002', 'PCL16', 7, 12, 0, 6),
    ('RR30', 'R002', 'PEO31', 8, 6, 0, 4),
    ('RR31', 'R002', 'PPG10', 9, 9, 0, 2),
    ('RR32', 'R002', 'PKM20', 10, 13, 0, 1),
    ('RR33', 'R002', 'PYT22', 11, 16, 0, 0),
    ('RR34', 'R002', 'PNH27', 12, 10, 0, 0),
    ('RR35', 'R002', 'PZG24', 13, 11, 0, 0),
    ('RR36', 'R002', 'PNV21', 14, 18, 0, 0),
    ('RR37', 'R002', 'POP81', 15, 8, 0, 0),
    ('RR38', 'R002', 'PLS02', 16, 20, 0, 0),
    ('RR39', 'R002', 'PLN04', 17, 19, 0, 0),
    ('RR40', 'R002', 'PVB77', 18, 14, 0, 0),
    ('RR41', 'R002', 'PAA23', NULL, 17, 0, 0),
    ('RR42', 'R002', 'PLS18', NULL, 5, 0, 0),
    ('RR43', 'R002', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR44', 'R002', 'PLL40', NULL, NULL, NULL, NULL),

--Australian gp
    ('RR45', 'R003', 'PMV01', 1, 1, 0, 25),
    ('RR46', 'R003', 'PLW44', 2, 3, 0, 18),
    ('RR48', 'R003', 'PFA14', 3, 4, 0, 15),
    ('RR49', 'R003', 'PLS18', 4, 6, 0, 12),
    ('RR50', 'R003', 'PSP11', 5, NULL, 1, 10),
    ('RR51', 'R003', 'PLN04', 6, 13, 0, 8),
    ('RR52', 'R003', 'PNH27', 7, 10, 0, 6),
    ('RR53', 'R003', 'POP81', 8, 16, 0, 4),
    ('RR54', 'R003', 'PZG24', 9, 17, 0, 2),
    ('RR55', 'R003', 'PYT22', 10, 12, 0, 1),
    ('RR56', 'R003', 'PVB77', 11, NULL, 0, 0),
    ('RR57', 'R003', 'PCS55', 12, 5, 0, 0),
    ('RR58', 'R003', 'PPG10', NULL, 11, 0, 0),
    ('RR59', 'R003', 'PEO31', NULL, 11, 0, 0),
    ('RR60', 'R003', 'PNV21', NULL, 15, 0, 0),
    ('RR61', 'R003', 'PLS02', NULL, 20, 0, 0),
    ('RR62', 'R003', 'PKM20', NULL, 14, 0, 0),
    ('RR63', 'R003', 'PGS63', NULL, 9, 0, 0),
    ('RR64', 'R003', 'PAA23', NULL, 8, 0, 0),
    ('RR65', 'R003', 'PCL16', NULL, 7, 0, 0),
    ('RR66', 'R003', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR67', 'R003', 'PLL40', NULL, NULL, NULL, NULL),

--Azerbajian gp
    ('RR68', 'R004', 'PSP11', 1, 3, 0, 25),
    ('RR69', 'R004', 'PMV01', 2, 2, 0, 18),
    ('RR70', 'R004', 'PCL16', 3, 1, 0, 15),
    ('RR71', 'R004', 'PFA14', 4, 6, 0, 12),
    ('RR72', 'R004', 'PCS55', 5, 4, 0, 10),
    ('RR73', 'R004', 'PLW44', 6, 5, 0, 8),
    ('RR74', 'R004', 'PLS18', 7, 9, 0, 6),
    ('RR75', 'R004', 'PGS63', 8, 11, 0, 4),
    ('RR76', 'R004', 'PLN04', 9, 7, 0, 2),
    ('RR77', 'R004', 'PYT22', 10, 8, 0, 1),
    ('RR78', 'R004', 'POP81', 11, 10, 0, 0),
    ('RR79', 'R004', 'PAA23', 12, 12, 0, 0),
    ('RR80', 'R004', 'PKM20', 13, 16, 0, 0),
    ('RR81', 'R004', 'PPG10', 14, 17, 0, 0),
    ('RR82', 'R004', 'PEO31', 15, NULL, 0, 0),
    ('RR83', 'R004', 'PLS02', 16, 14, 0, 0),
    ('RR84', 'R004', 'PNH27', 17, NULL, 0, 0),
    ('RR85', 'R004', 'PVB77', 18, 13, 0, 0),
    ('RR86', 'R004', 'PZG24', NULL, 15, 0, 0),
    ('RR87', 'R004', 'PNV21', NULL, 18, 0, 0),
    ('RR88', 'R004', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR89', 'R004', 'PLL40', NULL, NULL, NULL, NULL);
--


UPDATE race_result
SET points_earned = points_earned + 1  
WHERE fastest_lap = 1;

/*longest circuit*/
select circuit_name from circuit where circuit_length_km = (select
max(circuit_length_km) from circuit);

/*amount and names of british drivers*/
SELECT COUNT(pilot_id), pilot_name, pilot_nationality
FROM pilots
GROUP BY pilot_nationality
having pilot_nationality = 'British';

/*List of winner pilot names when Charles Leclerc starts on pole*/
SELECT pilots.pilot_name
FROM race_result AS hola
INNER JOIN race_result ON hola.race_id = race_result.race_id
INNER JOIN pilots ON hola.pilot_id = pilots.pilot_id
WHERE race_result.initial_position = 1
    AND race_result.pilot_id = 'PCL16'
    AND hola.final_position = 1;
