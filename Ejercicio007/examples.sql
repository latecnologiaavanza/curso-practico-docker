CREATE DATABASE prueba_volumen;

USE prueba_volumen;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO usuarios (nombre, email) VALUES ('Christian', 'christian@gmail.com'), ('Maria', 'maria@gmail.com');

SELECT * FROM usuarios;