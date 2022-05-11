CREATE TABLE `Producto` (
	`Codigo_Producto` int NOT NULL,
	`Descripcion_Producto` varchar(255) NOT NULL,
	PRIMARY KEY (`Codigo_Producto`)
);

CREATE TABLE `Pais_declarante` (
	`Codigo_Pais` int NOT NULL,
	`Pais` varchar(255) NOT NULL,
	`Codigo_Region` int NOT NULL,
	PRIMARY KEY (`Codigo_Pais`)
);


CREATE TABLE `sub_continentes_declarante` (
	`Codigo_sub_continente` int NOT NULL,
	`Nombre_sub_continente` varchar(255) NOT NULL,
	`codigo_continente` int NOT NULL,
	PRIMARY KEY (`Codigo_sub_continente`)
);

CREATE TABLE `Tiempo` (
	`Year_Code` int NOT NULL,
	`Year` int NOT NULL,
	PRIMARY KEY (`Year_Code`)
);

CREATE TABLE `hechos_exportaciones` (
	`Codigo_pais_declarant` int NOT NULL,
	`Codigo_pais_socio` int NOT NULL,
	`Codigo_Producto` int NOT NULL,
	`Codigo_elemento` int NOT NULL,
	`codigo_ano` int NOT NULL,
	`Valor` int NOT NULL
);

CREATE TABLE `elemento` (
	`Codigo_elemento` int NOT NULL,
	`elemento` varchar(255) NOT NULL,
	`unidad` varchar(255) NOT NULL,
	PRIMARY KEY (`Codigo_elemento`)
);

CREATE TABLE `continentes_declarante` (
	`Codigo_continente` int NOT NULL,
	`Nombre_contiente` varchar(255) NOT NULL,
	PRIMARY KEY (`Codigo_continente`)
);

CREATE TABLE `Pais_socio` (
	`Codigo_Pais` int NOT NULL,
	`Pais` varchar(255) NOT NULL,
	`Codigo_Region` int NOT NULL,
	PRIMARY KEY (`Codigo_Pais`)
);

CREATE TABLE `hechos_importaciones` (
	`Codigo_pais_declarant` int NOT NULL,
	`Codigo_pais_socio` int NOT NULL,
	`Codigo_Producto` int NOT NULL,
	`Codigo_elemento` int NOT NULL,
	`codigo_ano` int NOT NULL,
	`Valor` int NOT NULL
);

CREATE TABLE `continentes_socio` (
	`Codigo_continente` int NOT NULL,
	`Nombre_contiente` varchar(255) NOT NULL,
	PRIMARY KEY (`Codigo_continente`)
);

CREATE TABLE `sub_continentes_socio` (
	`Codigo_sub_continente` int NOT NULL,
	`Nombre_sub_continente` varchar(255) NOT NULL,
	`codigo_continente` int NOT NULL,
	PRIMARY KEY (`Codigo_sub_continente`)
);

ALTER TABLE `Pais_declarante` ADD CONSTRAINT `Pais_declarante_fk0` FOREIGN KEY (`Codigo_Region`) REFERENCES `sub_continentes_declarante`(`Codigo_sub_continente`);

ALTER TABLE `sub_continentes_declarante` ADD CONSTRAINT `sub_continentes_declarante_fk0` FOREIGN KEY (`codigo_continente`) REFERENCES `continentes_declarante`(`Codigo_continente`);

ALTER TABLE `hechos_exportaciones` ADD CONSTRAINT `hechos_exportaciones_fk0` FOREIGN KEY (`Codigo_pais_declarant`) REFERENCES `Pais_declarante`(`Codigo_Pais`);

ALTER TABLE `hechos_exportaciones` ADD CONSTRAINT `hechos_exportaciones_fk1` FOREIGN KEY (`Codigo_pais_socio`) REFERENCES `Pais_socio`(`Codigo_Pais`);

ALTER TABLE `hechos_exportaciones` ADD CONSTRAINT `hechos_exportaciones_fk2` FOREIGN KEY (`Codigo_Producto`) REFERENCES `Producto`(`Codigo_Producto`);

ALTER TABLE `hechos_exportaciones` ADD CONSTRAINT `hechos_exportaciones_fk3` FOREIGN KEY (`Codigo_elemento`) REFERENCES `elemento`(`Codigo_elemento`);

ALTER TABLE `hechos_exportaciones` ADD CONSTRAINT `hechos_exportaciones_fk4` FOREIGN KEY (`codigo_ano`) REFERENCES `Tiempo`(`Year_Code`);

ALTER TABLE `Pais_socio` ADD CONSTRAINT `Pais_socio_fk0` FOREIGN KEY (`Codigo_Region`) REFERENCES `sub_continentes_socio`(`Codigo_sub_continente`);

ALTER TABLE `hechos_importaciones` ADD CONSTRAINT `hechos_importaciones_fk0` FOREIGN KEY (`Codigo_pais_declarant`) REFERENCES `Pais_declarante`(`Codigo_Pais`);

ALTER TABLE `hechos_importaciones` ADD CONSTRAINT `hechos_importaciones_fk1` FOREIGN KEY (`Codigo_pais_socio`) REFERENCES `Pais_socio`(`Codigo_Pais`);

ALTER TABLE `hechos_importaciones` ADD CONSTRAINT `hechos_importaciones_fk2` FOREIGN KEY (`Codigo_Producto`) REFERENCES `Producto`(`Codigo_Producto`);

ALTER TABLE `hechos_importaciones` ADD CONSTRAINT `hechos_importaciones_fk3` FOREIGN KEY (`Codigo_elemento`) REFERENCES `elemento`(`Codigo_elemento`);

ALTER TABLE `hechos_importaciones` ADD CONSTRAINT `hechos_importaciones_fk4` FOREIGN KEY (`codigo_ano`) REFERENCES `Tiempo`(`Year_Code`);

ALTER TABLE `sub_continentes_socio` ADD CONSTRAINT `sub_continentes_socio_fk0` FOREIGN KEY (`codigo_continente`) REFERENCES `continentes_socio`(`Codigo_continente`);












