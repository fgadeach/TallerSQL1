ALTER SESSION SET CURRENT_SCHEMA = PARRANDEROS; 
Select id, nombre, tipo, Count(nombre) as contador from bebidas beb
inner join Gustan g on g.id_bebida = beb.id and beb.grado_alcohol>0
inner join (SELECT id as identificador from bebedores beb
Where (Select Count(id_bebedor) from frecuentan, bares where beb.id=id_bebedor and bares.ciudad!=beb.ciudad)- (Select Count(id_bebedor) from frecuentan, 
bares where beb.id=id_bebedor and bares.ciudad=beb.ciudad)>0) on g.id_bebedor = identificador
GROUP BY id, nombre, tipo
Order by contador DESC
FETCH FIRST 10 ROWS ONLY;
