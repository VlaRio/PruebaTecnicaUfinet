-- Crear la tabla Country
CREATE TABLE Country (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    isoCode NVARCHAR(2),
    population INT
);

-- Crear la tabla Restaurant
CREATE TABLE Restaurant (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    type NVARCHAR(50),
    countryId INT,
    FOREIGN KEY (countryId) REFERENCES Country(id)
);

-- Crear la tabla Hotel
CREATE TABLE Hotel (
    id INT PRIMARY KEY,
    name NVARCHAR(255),
    stars INT,
    countryId INT,
    FOREIGN KEY (countryId) REFERENCES Country(id)
);