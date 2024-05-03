create table car (
    carId varchar(50) default car auto_increment,
    model varchar(100),
    year year NOT NULL,
    power_unit enum ('mercedes', 'ferrari', 'renault', 'honda'),
    engine_type enum ('v6', 'v8', 'v10', 'v12'),
    weight int,
    primary key (carId)
); engine = InnoDB default charset = utf8;

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

create table pilot (
    pilot_id varchar(100) primary key,
    pilot_name varchar(100),
    pilot_surname varchar(100),
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

    foreign key (pilot_id_1) references pilot(pilot_id),
    foreign key (pilot_id_2) references pilot(pilot_id),
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
    final_position INT,
    initial_position INT,
    fastest_lap int default 0,
    points_earned INT default 0,

foreign key (pilot_id) references pilot(pilot_id),
foreign key (race_id) references race(race_id)
);
