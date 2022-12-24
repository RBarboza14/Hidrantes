CREATE TABLE hidrantes(
    id SERIAL PRIMARY KEY,
    nombre varchar(30) NOT NULL,
    calle int,
    avenida int,
    caudal int
);

DELIMITER //
CREATE PROCEDURE hidrantes_crear (in_nombre varchar(30), in_calle int, in_avenida int, in_caudal int) 
BEGIN
  INSERT INTO hidrantes(nombre, calle, avenida, caudal)
  VALUES(in_nombre, in_calle, in_avenida, in_caudal);
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE hidrantes_eliminar (in_id int) 
BEGIN
  DELETE FROM hidrantes WHERE id = in_id;
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE hidrantes_obtener ()
BEGIN
  SELECT h.id, h.nombre, h.calle, h.avenida, h.caudal 
  FROM hidrantes h;
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE hidrantes_obtener_id (in_id int)
BEGIN
  SELECT h.id, h.nombre, h.calle, h.avenida, h.caudal 
  FROM hidrantes h
  WHERE h.id = in_id;
END;
// DELIMITER ;

DELIMITER //
CREATE PROCEDURE hidrantes_modificar (in_id int, in_nombre varchar(30), in_calle int, in_avenida int, in_caudal int) 
BEGIN
  UPDATE hidrantes
  SET nombre = in_nombre, calle = in_calle, avenida = in_avenida, caudal = in_caudal
  WHERE id = in_id;
END;

// DELIMITER ;

DELIMITER //
CREATE PROCEDURE hidrantes_modificar_latlon (in_id int, in_nombre varchar(30), in_calle int, in_avenida int, in_caudal int, in_latitud float, in_longitud float) 
BEGIN
  UPDATE hidrantes
  SET nombre = in_nombre, calle = in_calle, avenida = in_avenida, caudal = in_caudal
  WHERE id = in_id;
END;
// DELIMITER ;

INSERT INTO hidrantes(nombre, calle, avenida, caudal)
VALUES
('Parque', 1, 5, 25), 
('Museo', 4, 2, 25), 
('Taller', 8, 4, 25), 
('Galeria', 2, 8, 25), 
('Launch', 7, 2, 25), 
('Policia', 3, 9, 25), 
('Fuente', 9, 6, 25)