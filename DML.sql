-- \copy localidades (iddpto, nombredpto, idmunicipio, nombremunicipio) FROM '/home/camper/Documentos/localidades.xlsx - Sheet1.csv' DELIMITER ',' CSV HEADER;
-- Con este comando se realiza las inserciones a la tabla localidades.

UPDATE localidades
SET iddepartamento = 0
WHERE iddepartamento IS NULL;


insert into departamento(id, nombre_departamento)
	select distinct iddepartamento, nombre_departamento from localidades 
	order by nombre_departamento ASC;
	
insert into municipio(id,nombre_municipio,id_departamento)
	select distinct idmunicipio, nombre_municipio, iddepartamento from localidades 
	order by nombre_municipio ASC; 