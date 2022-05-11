select * from continentes_declarante

#insert into continentes_declarante
select codigo_grupo_de_paises,grupo_de_paises from stg2_grupo_pais  
where Codigo_grupo_de_paises  in (5100,5200,5300,5400,5500,5600)
group by codigo_grupo_de_paises,grupo_de_paises
order by Codigo_grupo_de_paises

#insert into continentes_socio
select codigo_grupo_de_paises,grupo_de_paises from stg2_grupo_pais  
where Codigo_grupo_de_paises  in (5100,5200,5300,5400,5500,5600)
group by codigo_grupo_de_paises,grupo_de_paises
order by Codigo_grupo_de_paises

truncate table continentes_socio
select * from continentes_declarante

truncate table sub_continentes_socio
select * from sub_continentes_declarante
#(5204,5207,5203,5206,5100,5300,5400,5500,5600)

#insert into sub_continentes_socio
select codigo_grupo_de_paises as Codigo_sub_continente
,grupo_de_paises as Nombre_sub_continente
,0  codigo_continente
 from stg2_grupo_pais  
where Codigo_grupo_de_paises  in (5204,5207,5203,5206,5100,5300,5400,5500,5600)
group by codigo_grupo_de_paises,grupo_de_paises
order by Codigo_grupo_de_paises


select * from sub_continentes_socio

