-- ==============================
-- Hospital Management System DB
-- ==============================

-- 1️⃣ Create Database
CREATE DATABASE IF NOT EXISTS Hospital_management;
USE Hospital_management;

-- 2️⃣ Create Doctors Table
CREATE TABLE IF NOT EXISTS Doctors (
    doctorID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255),
    contactinformation VARCHAR(255)
);

-- 3️⃣ Create Patients Table
CREATE TABLE IF NOT EXISTS Patients (
    patientID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    gender VARCHAR(10),
    DateOfBirth DATE,
    address VARCHAR(255),
    phonenumber VARCHAR(20)
);

-- 4️⃣ Create Appointments Table
CREATE TABLE IF NOT EXISTS Appointments (
    appointmentID INT AUTO_INCREMENT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    FOREIGN KEY (PatientID) REFERENCES Patients(patientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(doctorID)
);

-- 5️⃣ Create Appointment History Table
CREATE TABLE IF NOT EXISTS AppointmentHist (
    appointmentID INT,
    PatientID INT,
    DoctorID INT,
    AppointmentDate DATE,
    AppointmentTime TIME,
    FOREIGN KEY (PatientID) REFERENCES Patients(patientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(doctorID)
);

-- 6️⃣ Insert Sample Doctors
INSERT INTO Doctors (name, specialization, contactinformation) VALUES 
('Dr. Sharma', 'Cardiology', '9999999999'),
('Dr. Singh', 'Neurology', '8888888888'),
('Dr. Verma', 'Orthopedics', '7777777777');

-- 7️⃣ Insert Sample Patients
INSERT INTO Patients (name, gender, DateOfBirth, address, phonenumber) VALUES
('Rishika', 'Female', '2005-02-28', 'Amaravati', '7777777777'),
('Ankit', 'Male', '2003-05-12', 'Hyderabad', '6666666666'),
('Simran', 'Female', '2004-08-15', 'Bangalore', '5555555555');
