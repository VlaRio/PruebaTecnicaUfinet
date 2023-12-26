
-- Crear país
CREATE PROCEDURE InsertCountry
    @id INT,
    @name NVARCHAR(255),
    @isoCode NVARCHAR(2),
    @population INT
AS
BEGIN
    INSERT INTO Country (id, name, isoCode, population)
    VALUES (@id, @name, @isoCode, @population);
END;

--Ver todo los paises
CREATE PROCEDURE GetAllCountries
AS
BEGIN
    SELECT * FROM Country;
END;

--Ver país por ID
CREATE PROCEDURE GetCountryById
    @id INT
AS
BEGIN
    SELECT * FROM Country WHERE id = @id;
END;


--Actualizar País
CREATE PROCEDURE UpdateCountry
    @id INT,
    @name NVARCHAR(255),
    @isoCode NVARCHAR(2),
    @population INT
AS
BEGIN
    UPDATE Country
    SET name = @name, isoCode = @isoCode, population = @population
    WHERE id = @id;
END;

--Eliminar País
CREATE PROCEDURE DeleteCountry
    @id INT
AS
BEGIN
    DELETE FROM Country WHERE id = @id;
END;