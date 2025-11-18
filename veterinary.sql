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
