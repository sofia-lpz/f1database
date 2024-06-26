
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
INSERT INTO pilot VALUES
    ('PLH44', 'Lewis','Hamilton', 44, '1985-01-07', 38, 'British', 174, 70, 7, 3, 0),
    ('PVB77', 'Valtteri ','Bottas', 77, '1989-08-28', 34, 'Finnish', 179, 68, 0, 15, 0),
    ('PMV01', 'Max ','Verstappen', 1, '1997-09-30', 26, 'Dutch', 183, 68, 2, 1, 0),
    ('PSP11', 'Sergio',' Perez', 11, '1990-01-26', 33, 'Mexican', 173, 63, 0, 2, 0),
    ('PLN04', 'Lando ','Norris', 4, '1999-11-13', 24, 'British', 170, 63, 0, 5, 0),
    ('PCL16', 'Charles ','Leclerc', 16, '1997-10-16', 26, 'Monaco', 183, 68, 0, 7, 0),
    ('PCS55', 'Carlos',' Sainz', 55, '1994-09-01', 29, 'Spanish', 175, 68, 0, 6, 0),
    ('PFA14', 'Fernando',' Alonso', 14, '1981-07-29', 42, 'Spanish', 171, 68, 2, 4, 0),
    ('PEO31', 'Esteban',' Ocon', 31, '1996-09-17', 27, 'French', 186, 70, 0, 12, 0),
    ('PGR63', 'George ','Russell', 63, '1998-02-15', 25, 'British', 182, 70, 0, 8, 0),
    ('PDR03', 'Daniel ','Ricciardo', 3, '1989-07-01', 34, 'Australian', 182, 71, 0, 17, 0),
    ('PLS18', 'Lance ','Stroll', 18, '1998-10-29', 25, 'Canadian', 182, 74, 0, 10, 0),
    ('POP81', 'Oscar ','Piastri', 81, '2001-04-06', 22, 'Australian', 165, 61, 0, 9 ,0),
    ('PLS02', 'Logan ','Sargent', 2, '2000-12-31', 22, 'American', 173, 70, 0, 20, 0),
    ('PYT22', 'Yuki ','Tsunoda', 22, '2000-05-11', 23, 'Japanese', 162, 58, 0, 14, 0),
    ('PZG24', 'Zhou ','Guanyu', 24, '1999-05-30', 24, 'Chinese', 179, 70, 0,18,0),
    ('PKM20', 'Kevin ','Magnussen', 20, '1992-10-05', 31, 'Danish', 173, 74, 0, 19, 0),
    ('PNH27','Nico ','Hulkenberg', 27, '1987-08-19', 36, 'German', 183, 70, 0, 16, 0),
    ('PAA23','Alex ','Albon', 23, '1996-03-23', 27, 'Thai', 180, 68, 99,13,0),
    ('PPG10', 'Pierre ','Gasly', 10,'1996-02-07', 27, 'French', 174, 64,0,11,0),
    ('PNV21', 'Nick ','de Vries', 21, '1995-09-06', 28, 'Dutch', 180, 70, 0, 21, 0),
    ('PLL40', 'Liam ','Lawson', 40, '2002-01-11', 21, 'New Zealander', 170, 60, 0, 22, 0);

INSERT INTO constructor VALUES
    ('MERC', 'Mercedes', 'German', 382, 'Toto Wolff', 'builder', 2, 2, 'PLH44', 'PGR63', 'CARM001'),
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
    ('R004', 4, '2023-05-07 12:30:00', 66, '2023-05-07 11:00:00', 'PGR63', 'CAZER'),
    ('R005', 5, '2023-05-21 14:00:00', 66, '2023-05-21 12:30:00', 'PMV01', 'CMIA'),
    ('R006', 6, '2023-06-04 13:30:00', 51, '2023-06-04 12:00:00', 'PLH44', 'CMON'),
    ('R007', 7, '2023-06-18 15:00:00', 71, '2023-06-18 13:30:00', 'PFA14', 'CESP'),
    ('R008', 8, '2023-07-02 14:30:00', 70, '2023-07-02 13:00:00', 'PSP11', 'CCAN'),
    ('R009', 9, '2023-07-16 16:00:00', 62, '2023-07-16 14:30:00', 'PMV01', 'COST'),
    ('R010', 10, '2023-07-30 13:30:00', 55, '2023-07-30 12:00:00', 'PGR63', 'CBRI'),
    ('R011', 11, '2023-08-13 15:00:00', 68, '2023-08-13 13:30:00', 'PMV01', 'CHUN'),
    ('R012', 12, '2023-08-27 14:30:00', 59, '2023-08-27 13:00:00', 'PLH44', 'CBEL'),
    ('R013', 13, '2023-09-10 13:00:00', 72, '2023-09-10 11:30:00', 'POP81', 'CNET'),
    ('R014', 14, '2023-09-24 15:30:00', 54, '2023-09-24 14:00:00', 'POP81', 'CITA'),
    ('R015', 15, '2023-10-08 12:30:00', 67, '2023-10-08 11:00:00', 'PLH44', 'CSIN'),
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
    ('RR05', 'R001', 'PLH44', 5, 7, 0, 10),
    ('RR06', 'R001', 'PLS18', 6, 8, 0, 8),
    ('RR07', 'R001', 'PGR63', 7, 6, 0, 6),
    ('RR08', 'R001', 'PVB77', 8, 12, 0, 4),
    ('RR09', 'R001', 'PPG10', 9, 20, 0, 2),
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
    ('RR26', 'R002', 'PGR63', 4, 3, 0, 12),
    ('RR27', 'R002', 'PLH44', 5, 7, 0, 10),
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
    ('RR46', 'R003', 'PLH44', 2, 3, 0, 18),
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
    ('RR63', 'R003', 'PGR63', NULL, 9, 0, 0),
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
    ('RR73', 'R004', 'PLH44', 6, 5, 0, 8),
    ('RR74', 'R004', 'PLS18', 7, 9, 0, 6),
    ('RR75', 'R004', 'PGR63', 8, 11, 1, 4),
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
    ('RR89', 'R004', 'PLL40', NULL, NULL, NULL, NULL),

/*
--miami gp
    ('RR90', 'R005', 'PMV01', 1, 1, 0, 25),
    ('RR91', 'R005', 'PSP11', 2, 2, 0, 18),
    ('RR92', 'R005', 'PFA14', 3, 5, 0, 15),
    ('RR93', 'R005', 'PCS55', 4, 4, 0, 12),
    ('RR94', 'R005', 'PLH44', 5, 7, 0, 10),
    ('RR95', 'R005', 'PLS18', 6, 8, 0, 8),
    ('RR96', 'R005', 'PGR63', 7, 6, 0, 6),
    ('RR97', 'R005', 'PVB77', 8, 12, 0, 4),
    ('RR98', 'R005', 'PPG10', 9, 20, 0, 2),
    ('RR99', 'R005', 'PAA23', 10, 15, 0, 1),
    ('RR100', 'R005', 'PYT22', 11, 14, 0, 0),
    ('RR101', 'R005', 'PLS02', 12, 16, 0, 0),
    ('RR102', 'R005', 'PKM20', 13, 17, 0, 0),
    ('RR103', 'R005', 'PNV21', 14, 19, 0, 0),
    ('RR104', 'R005', 'PNH27', 15, 10, 0, 0),
    ('RR105', 'R005', 'PZG24', 16, 13, 1, 0),
    ('RR106', 'R005', 'PLN04', 17, 11, 0, 0),
    ('RR107', 'R005', 'PEO31', NULL, 9, 0, 0),
    ('RR108', 'R005', 'PCL16', NULL, 3, 0, 0),
    ('RR109', 'R005', 'POP81', NULL, 18, 0, 0),
    ('RR110', 'R005', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR111', 'R005', 'PLL40', NULL, NULL, NULL, NULL),

-- monaco gp
    ('RR112', 'R006', 'PMV01', 1, 1, 0, 25),
    ('RR113', 'R006', 'PSP11', 2, 2, 0, 18),
    ('RR114', 'R006', 'PFA14', 3, 5, 0, 15),
    ('RR115', 'R006', 'PCS55', 4, 4, 0, 12),
    ('RR116', 'R006', 'PLH44', 5, 7, 0, 10),
    ('RR117', 'R006', 'PLS18', 6, 8, 0, 8),
    ('RR118', 'R006', 'PGR63', 7, 6, 0, 6),
    ('RR119', 'R006', 'PVB77', 8, 12, 0, 4),
    ('RR120', 'R006', 'PPG10', 9, 20, 0, 2),
    ('RR121', 'R006', 'PAA23', 10, 15, 0, 1),
    ('RR122', 'R006', 'PYT22', 11, 14, 0, 0),
    ('RR123', 'R006', 'PLS02', 12, 16, 0, 0),
    ('RR124', 'R006', 'PKM20', 13, 17, 0, 0),
    ('RR125', 'R006', 'PNV21', 14, 19, 0, 0),
    ('RR126', 'R006', 'PNH27', 15, 10, 0, 0),
    ('RR127', 'R006', 'PZG24', 16, 13, 1, 0),
    ('RR128', 'R006', 'PLN04', 17, 11, 0, 0),
    ('RR129', 'R006', 'PEO31', NULL, 9, 0, 0),
    ('RR130', 'R006', 'PCL16', NULL, 3, 0, 0),
    ('RR131', 'R006', 'POP81', NULL, 18, 0, 0),
    ('RR132', 'R006', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR133', 'R006', 'PLL40', NULL, NULL, NULL, NULL),

--spanish gp
    ('RR134', 'R007', 'PMV01', 1, 1, 0, 25),
    ('RR135', 'R007', 'PSP11', 2, 2, 0, 18),
    ('RR136', 'R007', 'PFA14', 3, 5, 0, 15),
    ('RR137', 'R007', 'PCS55', 4, 4, 0, 12),
    ('RR138', 'R007', 'PLH44', 5, 7, 0, 10),
    ('RR139', 'R007', 'PLS18', 6, 8, 0, 8),
    ('RR140', 'R007', 'PGR63', 7, 6, 0, 6),
    ('RR141', 'R007', 'PVB77', 8, 12, 0, 4),
    ('RR142', 'R007', 'PPG10', 9, 20, 0, 2),
    ('RR143', 'R007', 'PAA23', 10, 15, 0, 1),
    ('RR144', 'R007', 'PYT22', 11, 14, 0, 0),
    ('RR145', 'R007', 'PLS02', 12, 16, 0, 0),
    ('RR146', 'R007', 'PKM20', 13, 17, 0, 0),
    ('RR147', 'R007', 'PNV21', 14, 19, 0, 0),
    ('RR148', 'R007', 'PNH27', 15, 10, 0, 0),
    ('RR149', 'R007', 'PZG24', 16, 13, 1, 0),
    ('RR150', 'R007', 'PLN04', 17, 11, 0, 0),
    ('RR151', 'R007', 'PEO31', None, 9, 0, 0),
    ('RR152', 'R007', 'PCL16', None, 3, 0, 0),
    ('RR153', 'R007', 'POP81', None, 18, 0, 0),
    ('RR154', 'R007', 'PDR03', None, None, None, None),
    ('RR155', 'R007', 'PLL40', None, None, None, None),

--canadian gp
    ('RR156', 'R008', 'PMV01', 1, 1, 0, 25),
    ('RR157', 'R008', 'PSP11', 2, 2, 0, 18),
    ('RR158', 'R008', 'PFA14', 3, 5, 0, 15),
    ('RR159', 'R008', 'PCS55', 4, 4, 0, 12),
    ('RR160', 'R008', 'PLH44', 5, 7, 0, 10),
    ('RR161', 'R008', 'PLS18', 6, 8, 0, 8),
    ('RR162', 'R008', 'PGR63', 7, 6, 0, 6),
    ('RR163', 'R008', 'PVB77', 8, 12, 0, 4),
    ('RR164', 'R008', 'PPG10', 9, 20, 0, 2),
    ('RR165', 'R008', 'PAA23', 10, 15, 0, 1),
    ('RR166', 'R008', 'PYT22', 11, 14, 0, 0),
    ('RR167', 'R008', 'PLS02', 12, 16, 0, 0),
    ('RR168', 'R008', 'PKM20', 13, 17, 0, 0),
    ('RR169', 'R008', 'PNV21', 14, 19, 0, 0),
    ('RR170', 'R008', 'PNH27', 15, 10, 0, 0),
    ('RR171', 'R008', 'PZG24', 16, 13, 1, 0),
    ('RR172', 'R008', 'PLN04', 17, 11, 0, 0),
    ('RR173', 'R008', 'PEO31', NULL, 9, 0, 0),
    ('RR174', 'R008', 'PCL16', NULL, 3, 0, 0),
    ('RR175', 'R008', 'POP81', NULL, 18, 0, 0),
    ('RR176', 'R008', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR177', 'R008', 'PLL40', NULL, NULL, NULL, NULL),

-- austrian gp
    ('RR178', 'R009', 'PMV01', 1, 1, 0, 25),
    ('RR179', 'R009', 'PSP11', 2, 2, 0, 18),
    ('RR180', 'R009', 'PFA14', 3, 5, 0, 15),
    ('RR181', 'R009', 'PCS55', 4, 4, 0, 12),
    ('RR182', 'R009', 'PLH44', 5, 7, 0, 10),
    ('RR183', 'R009', 'PLS18', 6, 8, 0, 8),
    ('RR184', 'R009', 'PGR63', 7, 6, 0, 6),
    ('RR185', 'R009', 'PVB77', 8, 12, 0, 4),
    ('RR186', 'R009', 'PPG10', 9, 20, 0, 2),
    ('RR187', 'R009', 'PAA23', 10, 15, 0, 1),
    ('RR188', 'R009', 'PYT22', 11, 14, 0, 0),
    ('RR189', 'R009', 'PLS02', 12, 16, 0, 0),
    ('RR190', 'R009', 'PKM20', 13, 17, 0, 0),
    ('RR191', 'R009', 'PNV21', 14, 19, 0, 0),
    ('RR192', 'R009', 'PNH27', 15, 10, 0, 0),
    ('RR193', 'R009', 'PZG24', 16, 13, 1, 0),
    ('RR194', 'R009', 'PLN04', 17, 11, 0, 0),
    ('RR195', 'R009', 'PEO31', None, 9, 0, 0),
    ('RR196', 'R009', 'PCL16', None, 3, 0, 0),
    ('RR197', 'R009', 'POP81', None, 18, 0, 0),
    ('RR198', 'R009', 'PDR03', None, None, None, None),
    ('RR199', 'R009', 'PLL40', None, None, None, None),

--british gp
    ('RR200', 'R010', 'PMV01', 1, 1, 0, 25),
    ('RR201', 'R010', 'PSP11', 2, 2, 0, 18),
    ('RR202', 'R010', 'PFA14', 3, 5, 0, 15),
    ('RR203', 'R010', 'PCS55', 4, 4, 0, 12),
    ('RR204', 'R010', 'PLH44', 5, 7, 0, 10),
    ('RR205', 'R010', 'PLS18', 6, 8, 0, 8),
    ('RR206', 'R010', 'PGR63', 7, 6, 0, 6),
    ('RR207', 'R010', 'PVB77', 8, 12, 0, 4),
    ('RR208', 'R010', 'PPG10', 9, 20, 0, 2),
    ('RR209', 'R010', 'PAA23', 10, 15, 0, 1),
    ('RR210', 'R010', 'PYT22', 11, 14, 0, 0),
    ('RR211', 'R010', 'PLS02', 12, 16, 0, 0),
    ('RR212', 'R010', 'PKM20', 13, 17, 0, 0),
    ('RR213', 'R010', 'PNV21', 14, 19, 0, 0),
    ('RR214', 'R010', 'PNH27', 15, 10, 0, 0),
    ('RR215', 'R010', 'PZG24', 16, 13, 1, 0),
    ('RR216', 'R010', 'PLN04', 17, 11, 0, 0),
    ('RR217', 'R010', 'PEO31', None, 9, 0, 0),
    ('RR218', 'R010', 'PCL16', None, 3, 0, 0),
    ('RR219', 'R010', 'POP81', None, 18, 0, 0),
    ('RR220', 'R010', 'PDR03', None, None, None, None),
    ('RR221', 'R010', 'PLL40', None, None, None, None),

--hungarian gp
    ('RR222', 'R011', 'PMV01', 1, 1, 0, 25),
    ('RR223', 'R011', 'PSP11', 2, 2, 0, 18),
    ('RR224', 'R011', 'PFA14', 3, 5, 0, 15),
    ('RR225', 'R011', 'PCS55', 4, 4, 0, 12),
    ('RR226', 'R011', 'PLH44', 5, 7, 0, 10),
    ('RR227', 'R011', 'PLS18', 6, 8, 0, 8),
    ('RR228', 'R011', 'PGR63', 7, 6, 0, 6),
    ('RR229', 'R011', 'PVB77', 8, 12, 0, 4),
    ('RR230', 'R011', 'PPG10', 9, 20, 0, 2),
    ('RR231', 'R011', 'PAA23', 10, 15, 0, 1),
    ('RR232', 'R011', 'PYT22', 11, 14, 0, 0),
    ('RR233', 'R011', 'PLS02', 12, 16, 0, 0),
    ('RR234', 'R011', 'PKM20', 13, 17, 0, 0),
    ('RR235', 'R011', 'PNV21', 14, 19, 0, 0),
    ('RR236', 'R011', 'PNH27', 15, 10, 0, 0),
    ('RR237', 'R011', 'PZG24', 16, 13, 1, 0),
    ('RR238', 'R011', 'PLN04', 17, 11, 0, 0),
    ('RR239', 'R011', 'PEO31', NULL, 9, 0, 0),
    ('RR240', 'R011', 'PCL16', NULL, 3, 0, 0),
    ('RR241', 'R011', 'POP81', NULL, 18, 0, 0),
    ('RR242', 'R011', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR243', 'R011', 'PLL40', NULL, NULL, NULL, NULL);

--belgian gp
    ('RR244', 'R012', 'PMV01', 1, 1, 0, 25),
    ('RR245', 'R012', 'PSP11', 2, 2, 0, 18),
    ('RR246', 'R012', 'PFA14', 3, 5, 0, 15),
    ('RR247', 'R012', 'PCS55', 4, 4, 0, 12),
    ('RR248', 'R012', 'PLH44', 5, 7, 0, 10),
    ('RR249', 'R012', 'PLS18', 6, 8, 0, 8),
    ('RR250', 'R012', 'PGR63', 7, 6, 0, 6),
    ('RR251', 'R012', 'PVB77', 8, 12, 0, 4),
    ('RR252', 'R012', 'PPG10', 9, 20, 0, 2),
    ('RR253', 'R012', 'PAA23', 10, 15, 0, 1),
    ('RR254', 'R012', 'PYT22', 11, 14, 0, 0),
    ('RR255', 'R012', 'PLS02', 12, 16, 0, 0),
    ('RR256', 'R012', 'PKM20', 13, 17, 0, 0),
    ('RR257', 'R012', 'PNV21', 14, 19, 0, 0),
    ('RR258', 'R012', 'PNH27', 15, 10, 0, 0),
    ('RR259', 'R012', 'PZG24', 16, 13, 1, 0),
    ('RR260', 'R012', 'PLN04', 17, 11, 0, 0),
    ('RR261', 'R012', 'PEO31', NULL, 9, 0, 0),
    ('RR262', 'R012', 'PCL16', NULL, 3, 0, 0),
    ('RR263', 'R012', 'POP81', NULL, 18, 0, 0),
    ('RR264', 'R012', 'PDR03', NULL, NULL, NULL, NULL),
    ('RR265', 'R012', 'PLL40', NULL, NULL, NULL, NULL),

--dutch gp
    ('RR266', 'R013', 'PMV01', 1, 1, 0, 25),
    ('RR267', 'R013', 'PSP11', 2, 2, 0, 18),
    ('RR268', 'R013', 'PFA14', 3, 5, 0, 15),
    ('RR269', 'R013', 'PCS55', 4, 4, 0, 12),
    ('RR270', 'R013', 'PLH44', 5, 7, 0, 10),
    ('RR271', 'R013', 'PLS18', 6, 8, 0, 8),
    ('RR272', 'R013', 'PGR63', 7, 6, 0, 6),
    ('RR273', 'R013', 'PVB77', 8, 12, 0, 4),
    ('RR274', 'R013', 'PPG10', 9, 20, 0, 2),
    ('RR275', 'R013', 'PAA23', 10, 15, 0, 1),
    ('RR276', 'R013', 'PYT22', 11, 14, 0, 0),
    ('RR277', 'R013', 'PLS02', 12, 16, 0, 0),
    ('RR278', 'R013', 'PKM20', 13, 17, 0, 0),
    ('RR279', 'R013', 'PNV21', 14, 19, 0, 0),
    ('RR280', 'R013', 'PNH27', 15, 10, 0, 0),
    ('RR281', 'R013', 'PZG24', 16, 13, 0, 0),
    ('RR282', 'R013', 'PLN04', 17, 11, 0, 0),
    ('RR283', 'R013', 'PEO31', 18, 9, 0, 0),
    ('RR284', 'R013', 'PCL16', 19, 3, 0, 0),
    ('RR285', 'R013', 'POP81', 20, 18, 0, 0),
    ('RR286', 'R013', 'PDR03', None, None, None, None),
    ('RR287', 'R013', 'PLL40', None, None, None, None),
*/

--italian gp
--singapore gp
--japanese gp
--qatar gp
--texas gp
--mexican gp
--brazilian gp
--las vegas gp
--abu dhabi gp


UPDATE race_result
SET points_earned = points_earned + 1  
WHERE fastest_lap = 1;

UPDATE pilot
SET pilot_points = (
    SELECT SUM(points_earned)
    FROM race_result
    WHERE pilot.pilot_id = race_result.pilot_id
);

/*longest circuit*/
select circuit_name from circuit where circuit_length_km = (select
max(circuit_length_km) from circuit);

/*amount and names of british drivers*/
SELECT COUNT(pilot_id), pilot_nationality
FROM pilot
GROUP BY pilot_nationality
having pilot_nationality = 'British';

/*List of winner pilot names when Charles Leclerc starts on pole*/
SELECT pilot.pilot_name
FROM race_result AS notclerc
INNER JOIN race_result ON notclerc.race_id = race_result.race_id
INNER JOIN pilot ON notclerc.pilot_id = pilot.pilot_id
WHERE race_result.initial_position = 1
    AND race_result.pilot_id = 'PCL16'
    AND notclerc.final_position = 1;


