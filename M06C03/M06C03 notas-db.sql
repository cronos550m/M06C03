/* ALTER TABLE `USUARIOS` DISABLE KEYS */
/* SET FOREIGN_KEY_CHECKS=0 */
/* ALTER TABLE tabla DROP FOREIGN KEY constraint (como borrar un FK)*/

CREATE DATABASE  IF NOT EXISTS `notas-db`;
USE `notas-db`;


CREATE TABLE `USUARIOS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `idNotas` INT NOT NULL,
  `Contrasena` VARCHAR(30) NOT NULL,
  `Email` VARCHAR(50) not NULL,
   PRIMARY KEY (id)
  /*FOREIGN KEY (idNotas) REFERENCES notas(id)*/
);

ALTER TABLE USUARIOS
ADD FOREIGN KEY (idNotas) REFERENCES NOTAS(id)

INSERT INTO `usuarios` VALUES (1, "Carlos", 1, "1234", "carlos@notas.com"),(2, "Luis", 2, "1234", "luis@notas.com"),(3, "Alberto", DEFAULT, "1234", "alberto@notas.com"),(DEFAULT, "Alfonso", DEFAULT, "1234", "alfonso@notas.com"),(DEFAULT, "Sergio", DEFAULT, "1234", "sergio@notas.com"),(DEFAULT, "Francisco", DEFAULT, "1234", "francisco@notas.com");


CREATE TABLE `NOTAS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idCategorias` INT NOT NULL,
  `idNotascategorias` INT NOT NULL,
  `titulo` VARCHAR(100) NOT NULL,
  `FechaCreacion` DATE NOT NULL,
  `FechaUltMod` DATETIME NOT NULL,
  `descripcion` TEXT NOT NULL,
  `BorrarONoBorrar` TINYINT NOT NULL,
   PRIMARY KEY (id)
 /*FOREIGN KEY (idNotascategorias) REFERENCES notascategorias(id)*/
 /*FOREIGN KEY (idCategorias) REFERENCES categorias(id)*/
);


ALTER TABLE NOTAS
ADD FOREIGN KEY (idNotascategorias) REFERENCES notascategorias(id);
ALTER TABLE NOTAS
ADD FOREIGN KEY (idCategorias) REFERENCES categorias(id);




INSERT INTO `NOTAS` VALUES (1, 1, 1, "Nota1", '2021-10-12', '2021-10-12 10:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0'),(2, 2, 2, "Nota2", '2021-10-12', '2021-10-12 10:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim d est laborum.', '0'),(3, 3, 3, "Nota3", '2021-10-12', '2021-10-12 10:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0'),(4, 4, 4, "Nota4", '2021-10-12', '2021-10-12 10:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id es aborum.', '0'),(5, 5, 5, "Nota5", '2021-10-12', '2021-10-12 10:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0'),(6, 6, 6, "Nota6", '2021-10-12', '2021-10-12 10:10:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '0');


CREATE TABLE `NOTASCATEGORIAS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `idCategorias` INT NOT NULL,
  `idNotas` INT NOT NULL,
   PRIMARY KEY (id)
 /*FOREIGN KEY (idCategorias) REFERENCES categorias(id)*/
 /*FOREIGN KEY (idNotas) REFERENCES notas(id)*/
);

ALTER TABLE NOTASCATEGORIAS
ADD FOREIGN KEY (idCategorias) REFERENCES categorias(id);
ALTER TABLE NOTASCATEGORIAS
ADD FOREIGN KEY (idNotas) REFERENCES notas(id);

INSERT INTO `NOTASCATEGORIAS` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,2,3),(8,4,2),(9,3,5),(10,6,2);



CREATE TABLE `CATEGORIAS` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Categoria` VARCHAR(25) NOT NULL,
   PRIMARY KEY (id)
);


INSERT INTO `CATEGORIAS` VALUES (1, 'Musica'),(2, 'Cine'),(3, 'Teatro'),(4, 'Actualidad'),(5, 'Historia'),(6, 'Social');


/*
select categorias.Categoria, notas.titulo, notas.descripcion, usuarios.Nombre 
from notascategorias
inner join categorias ON notascategorias.idCategorias = categorias.id
inner join notas on notascategorias.idNotas = notas.id
inner join usuarios on notas.id = usuarios.idNotas
*/