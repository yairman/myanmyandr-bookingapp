CREATE TABLE staff (
    id INTEGER PRIMARY KEY, 
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    phone TEXT NOT NULL,
    email TEXT,
    hospital_name TEXT NOT NULL,
    position TEXT,
    hospital_address TEXT NOT NULL,
    FOREIGN KEY (hospital_name) REFERENCES hospitals(name),
    FOREIGN KEY (hospital_address) REFERENCES hospitals(address),
)

CREATE TABLE hospitals (
    id INTEGER,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    phone TEXT NOT NULL,
    departments TEXT NOT NULL,
)

CREATE TABLE doctors (
    id INTEGER,
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    NRC TEXT NOT NULL,
    password TEXT NOT NULL,
    hospital_name TEXT NOT NULL,
    hospital_address TEXT NOT NULL,
    operating_hours TEXT NOT NULL,
    specilization TEXT NOT NULL,
    uuid TEXT,
    FOREIGN KEY (hospital_name) REFERENCES hospitals(name),
    FOREIGN KEY (hospital_address) REFERENCES hospitals(address),
)

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    password TEXT NOT NULL,
    address TEXT NOT NULL,
    NRC TEXT NOT NULL,
    uuid TEXT NOT NULL,
)   