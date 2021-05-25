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

INSERT INTO `material` (`nombre`, `imagen_src`, `descripcion`) VALUES
('Papel', 
 'https://www.elagoradiario.com/wp-content/uploads/2019/07/Monta%C3%B1a-de-papel-1140x600.jpg', 
 'Se aceptar cualquier tipo de papel (revistas, diarios, envoltorios, etc.). Se deberá entregar seco y sujetado con hilo.');

INSERT INTO `material` (`nombre`, `imagen_src`, `descripcion`) VALUES
('Envases plásticos', 
 'https://ichef.bbci.co.uk/news/640/cpsprodpb/C6DF/production/_97011905_gettyimages-103583960-1.jpg', 
 'Se aceptar plásticos derivados de botellas, (no se aceptarán envases de yogurt o queso blanco). Se deberá entregar limpias, secas y aplastadas.');




