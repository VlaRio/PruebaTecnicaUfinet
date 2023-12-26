
-- Crear Hotel
CREATE PROCEDURE InsertHotel
    @id INT,
    @name NVARCHAR(255),
    @stars INT,
    @country_id INT
AS
BEGIN
    INSERT INTO Hotel (id, name, stars, country_id)
    VALUES (@id, @name, @stars, @country_id);
END;

--Ver todo los Hoteles
CREATE PROCEDURE GetAllHotels
AS
BEGIN
    SELECT * FROM Hotel;
END;

--Ver Hotel por ID
CREATE PROCEDURE GetHotelById
    @id INT
AS
BEGIN
    SELECT * FROM Hotel WHERE id = @id;
END;


--Actualizar Hotel
CREATE PROCEDURE UpdateHotel
    @id INT,
    @name NVARCHAR(255),
    @stars INT,
    @country_id INT
AS
BEGIN
    UPDATE Hotel
    SET name = @name, stars = @stars, country_id = @country_id
    WHERE id = @id;
END;

--Eliminar Hotel
CREATE PROCEDURE DeleteHotel
    @id INT
AS
BEGIN
    DELETE FROM Hotel WHERE id = @id;
END;