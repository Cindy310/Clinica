CREATE DATABASE Clinica;
GO
USE Clinica;
GO
CREATE TABLE Pacientes (
    id_paciente INT PRIMARY KEY IDENTITY(1,1),
    nombre VARCHAR(100),
    edad INT,
    correo VARCHAR(100)
);

CREATE TABLE Citas (
    id_cita INT PRIMARY KEY IDENTITY(1,1),
    fecha DATE,
    motivo VARCHAR(150),
    costo FLOAT,
    id_paciente INT,
    FOREIGN KEY (id_paciente) REFERENCES Pacientes(id_paciente)
);