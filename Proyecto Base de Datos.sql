CREATE TABLE trabajadores(
trabajador_id serial primary key not null,
nombre varchar not null,
apellido varchar not null,
numero_telefono bigint not null
)

CREATE TABLE pedidos(
pedido_id serial primary key not null,
hora_pedido time not null,
hora_entrega time not null
)

CREATE TABLE comidas(
comida_id serial primary key not null,
precio int not null,
ingredientes varchar not null
)

CREATE TABLE clientes(
cliente_id serial primary key not null,
nombre varchar not null,
apellido varchar not null,
numero_telefono bigint not null
)

CREATE TABLE pedidos_encargados(
pedido_encargado_id serial primary key not null,
id_trabajador INT REFERENCES trabajadores(trabajador_id),
id_pedido INT REFERENCES pedidos(pedido_id),
id_comida INT REFERENCES comidas(comida_id),
id_cliente INT REFERENCES clientes(cliente_id)
)

SELECT * FROM trabajadores

INSERT INTO trabajadores (nombre, apellido, numero_telefono) 
VALUES 
    ('Pedro', 'Sánchez', 9987041500),
    ('Ana', 'Rodríguez', 9982324567),
    ('Luis', 'López', 9987212147),
    ('Laura', 'González', 9980124356),
    ('Miguel', 'Martínez',9986546782);

INSERT INTO pedidos (hora_pedido, hora_entrega)
VALUES 
    ('10:00:00', '12:00:00'),
    ('11:30:00', '13:45:00'),
    ('14:15:00', '15:30:00'),
    ('09:45:00', '11:15:00'),
    ('13:00:00', '14:30:00'),
    ('16:45:00', '18:00:00');

INSERT INTO comidas (precio, ingredientes)
VALUES 
    (10, 'Tomato, Mozzarella, Basil'),
    (15, 'Grilled Chicken, Lettuce, Tomato, Cheese, Ranch Dressing'),
    (8, 'Rice, Beans, Chicken, Cheese, Sour Cream'),
    (12, 'Pasta, Tomato Sauce, Ground Beef, Parmesan Cheese'),
    (18, 'Salmon, Asparagus, Lemon, Olive Oil'),
    (9, 'Lettuce, Tomato, Cucumber, Onion, Balsamic Dressing');
	
INSERT INTO clientes (nombre, apellido, numero_telefono)
VALUES 
    ('Pedro', 'Sánchez', 9985435462),
    ('Ana', 'Martínez', 9983245674),
    ('Luis', 'López', 9982121245),
    ('Laura', 'Fernández', 9986452643),
	('Elena', 'Gómez', 9983324565),
    ('Mario', 'Díaz', 9986564354),
    ('Sofía', 'Hernández', 9983465456),
    ('Diego', 'Pérez', 9987435664),
    ('Miguel', 'Ruiz', 9985466543);

INSERT INTO pedidos_encargados (id_trabajador, id_pedido, id_comida, id_cliente)
VALUES 
    (1, 1, 1, 1),  
    (2, 2, 3, 2),  
    (4, 3, 4, 4),  
    (1, 4, 1, 5),  
    (5, 5, 5, 6),  
    (3, 6, 2, 3);  



ALTER TABLE clientes
ADD correo varchar;

ALTER TABLE comidas
DROP COLUMN precio;

ALTER TABLE trabajadores
RENAME COLUMN apellidote TO apellido;

ALTER TABLE cliente
ALTER COLUMN telefono bigint;

DROP TABLE pedidos;

UPDATE clientes
SET nombre = 'pedro'
WHERE cliente_id = 9;

DELETE FROM clientes
WHERE cliente_id = 1;