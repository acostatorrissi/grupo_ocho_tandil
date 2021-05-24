CREATE TABLE Pedido (
    id_pedido int  NOT NULL,
    nombre varchar(200)  NOT NULL,
    apellido varchar(200)  NOT NULL,
    direccion varchar(200)  NOT NULL,
    telefono varchar(50)  NOT NULL,
    imagen_src varchar(500)  NOT NULL,
    franja_horaria varchar(50)  NOT NULL,
    volumen varchar(50)  NOT NULL,
    CONSTRAINT Pedido_pk PRIMARY KEY (id_pedido)
);

CREATE TABLE material (
    nombre varchar(100)  NOT NULL,
    imagen_src varchar(200)  NOT NULL,
    descripcion varchar(2000)  NOT NULL,
    CONSTRAINT material_pk PRIMARY KEY (nombre)
);

-- End of file.

