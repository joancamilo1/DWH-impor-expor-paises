
CREATE TABLE `stg1_elemento` (
	`Codigo_elemento` varchar(255),
	`elemento` varchar(255),
	`unidad` varchar(255)
);
CREATE TABLE `stg2_elemento` (
	`Codigo_elemento` varchar(255),
	`elemento` varchar(255),
	`unidad` varchar(255)
);

CREATE TABLE `stg1_tiempo` (
	`Year_Code` varchar(255),
	`Year` varchar(255)
);
CREATE TABLE `stg2_tiempo` (
	`Year_Code` varchar(255),
	`Year` varchar(255)
);

CREATE TABLE `stg0_grupo_pais` (
	`Codigo_grupo_de_Paises` varchar(255),
	`Grupo_de_paises` varchar(255),
	`Codigo_pais` varchar(255),
    `Pais` varchar(255)
);
CREATE TABLE `stg1_grupo_pais` (
	`Codigo_grupo_de_Paises` varchar(255),
	`Grupo_de_paises` varchar(255),
	`Codigo_pais` varchar(255),
    `Pais` varchar(255)
);


CREATE TABLE `stg1_Producto` (
	`Codigo_Producto` varchar(255) ,
	`Descripcion_Producto` varchar(255) 

);

CREATE TABLE `stg2_Producto` (
	`Codigo_Producto`varchar(255) ,
	`Descripcion_Producto` varchar(255) 

);




