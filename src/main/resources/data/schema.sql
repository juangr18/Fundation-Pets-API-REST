CREATE TABLE mascota (
  idmascota integer NOT NULL,
  nombre varchar(45) NOT NULL,
  tipo_mascota integer,
  propietario integer,
  PRIMARY KEY (idmascota)
)

CREATE TABLE propietario (
  idpropietario integer NOT NULL,
  nombre varchar(45) NOT NULL,
  direccion varchar(45) NOT NULL,
  telefono varchar(10) NOT NULL,
  correo varchar(60) NOT NULL,
  comentarios text NOT NULL,
  PRIMARY KEY (idpropietario)
)

CREATE TABLE tipo_mascota (
  idtipo_mascota integer NOT NULL,
  descripcion varchar(45) NOT NULL,
  PRIMARY KEY (idtipo_mascota)
)

ALTER TABLE mascota ADD CONSTRAINT mascota_fk0 FOREIGN KEY (idmascota) REFERENCES tipo_mascota (idtipo_mascota), ADD CONSTRAINT mascota_fk1 FOREIGN KEY (propietario) REFERENCES propietario (idpropietario);
