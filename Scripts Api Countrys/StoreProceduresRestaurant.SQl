-- Crear Restaurante
CREATE PROCEDURE InsertRestaurant
    @id INT,
    @name NVARCHAR(255),
    @type NVARCHAR(50),
    @country_id INT
AS
BEGIN
    INSERT INTO Restaurant (id, name, type, country_id)
    VALUES (@id, @name, @type, @country_id);
END;

--Ver todos los Restaurantees
CREATE PROCEDURE GetAllRestaurants
AS
BEGIN
    SELECT * FROM Restaurant;
END;

--Ver Restaurante por ID
CREATE PROCEDURE GetRestaurantById
    @id INT
AS
BEGIN
    SELECT * FROM Restaurant WHERE id = @id;
END;

--Actualizar Restaurante
CREATE PROCEDURE UpdateRestaurant
    @id INT,
    @name NVARCHAR(255),
    @type NVARCHAR(50),
    @country_id INT
AS
BEGIN
    UPDATE Restaurant
    SET name = @name, type = @type, country_id = @country_id
    WHERE id = @id;
END;

--Eliminar Restaurante
CREATE PROCEDURE DeleteRestaurant
    @id INT
AS
BEGIN
    DELETE FROM Restaurant WHERE id = @id;
END;