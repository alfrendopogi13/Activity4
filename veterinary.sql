<<<<<<< HEAD
CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(%50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    PRIMARY KEY (ownerid) REFERENCES owners(ownerid)
);
CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);
CREATE TABLE doctors(
    doctorid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    specialty VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE invoices (
  invoiceid INT PRIMARY KEY,
  appointid INT,
  totalamount DECIMAL(10,2),
  paymentdate TIME,
  FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);
CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes VARCHAR(500),
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);
INSERT INTO owners(ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Maria', 'Reyes', 'Quezon City', '09123456789', 'maria@example.com'),
(2, 'Juan', 'Santos', 'Manila', '09987654321', 'juan@example.com'),
(3, 'Ana', 'Torres', 'Cebu City', '09111222333', 'ana@example.com'),
(4, 'Mark', 'Dela Cruz', 'Davao City', '09223334444', 'mark@example.com'),
(5, 'Luis', 'Fernandez', 'Laguna', '09778889900', 'luis@example.com'),
(6, 'Ella', 'Gomez', 'Baguio City', '09334445566', 'ella@example.com'),
(7, 'Carlos', 'Dominguez', 'Pasig City', '09199887766', 'carlos@example.com'),
(8, 'Sofia', 'Lopez', 'Makati City', '09445556677', 'sofia@example.com'),
(9, 'Pedro', 'Garcia', 'Batangas', '09081112223', 'pedro@example.com'),
(10, 'Lara', 'Mendoza', 'Taguig City', '09221113344', 'lara@example.com');

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Whiskers', 'Cat', 'Persian', '2020-03-10', 'Female', 'White', 1),
(2, 'Buddy', 'Dog', 'Labrador', '2019-07-21', 'Male', 'Yellow', 2),
(3, 'Milo', 'Cat', 'Siamese', '2021-01-15', 'Male', 'Cream', 3),
(4, 'Bella', 'Dog', 'Shih Tzu', '2018-09-05', 'Female', 'Brown', 4),
(5, 'Simba', 'Cat', 'Bengal', '2020-11-30', 'Male', 'Orange', 5),
(6, 'Rocky', 'Dog', 'Bulldog', '2017-06-18', 'Male', 'Gray', 6),
(7, 'Luna', 'Cat', 'Ragdoll', '2021-02-12', 'Female', 'White/Gray', 7),
(8, 'Max', 'Dog', 'Beagle', '2019-04-03', 'Male', 'Tri-color', 8),
(9, 'Oreo', 'Cat', 'Domestic Shorthair', '2022-08-21', 'Male', 'Black/White', 9),
(10, 'Chloe', 'Dog', 'Poodle', '2018-05-09', 'Female', 'White', 10);

INSERT INTO appointments(appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2023-01-05', 'Health Checkup'),
(2, 2, '2023-01-10', 'Vaccination'),
(3, 3, '2023-02-02', 'Injury Check (Sprained Leg)'),
(4, 4, '2023-02-15', 'Dental Cleaning'),
(5, 5, '2023-03-10', 'Skin Infection Treatment'),
(6, 6, '2023-03-10', 'Flea Infestation Treatment'),
(7, 7, '2023-04-12', 'Vaccination'),
(8, 8, '2023-04-18', 'Spaying Surgery'),
(9, 9, '2023-05-02', 'Allergic Reaction Check'),
(10, 10, '2023-05-20', 'Eye Infection (Conjunctivitis)');
INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@example.com'),
(5, 'Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Carmen', 'Fernandez', 'Ophthalmology Specialist', '333-222-1111', 'carmen@example.com'),
(7, 'Diego', 'Ramirez', 'Exotic Animals Specialist', '777-111-2222', 'diego@example.com'),
(8, 'Isabella', 'Cruz', 'Internal Medicine Specialist', '888-444-5555', 'isabella@example.com'),
(9, 'Rafael', 'Lopez', 'Dental Specialist', '222-333-4444', 'rafael@example.com'),
(10, 'Elena', 'Mendoza', 'Emergency Care Specialist', '444-555-6666', 'elena@example.com');
INSERT INTO invoices(invoiceid, appointid, totalamount, paymenttime)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');
INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES  
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Food-related allergy; prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE owners
ADD registereddate DATE;
ALTER TABLE payments
RENAME COLUMN paymentdate TO paymenttime;
DELETE FROM appointments
WHERE animalid = 5;
UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE doctorid = 4;
SELECT DISTINCT species
FROM animals;
SELECT SUM(totalamount) AS total_sales
FROM invoices;
SELECT COUNT(*) AS total_appointments
FROM appointments a
JOIN animals an ON a.animalid = an.animalid
JOIN owners o ON an.ownerid = o.ownerid
WHERE o.ofirstname = 'Maria';
SELECT an.name, COUNT(*) AS total_appointments
FROM appointments a
JOIN animals an ON a.animalid = an.animalid
GROUP BY an.name
ORDER BY total_appointments DESC
LIMIT 1;