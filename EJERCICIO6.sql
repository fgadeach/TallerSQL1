ALTER SESSION SET CURRENT_SCHEMA = PARRANDEROS; 
Select Ciudad, nombre, Count(s.id_bebida) contador from bares
Inner join sirven s on bares.id = s.id_bar
Inner join (SELECT beb.id idn from bebidas beb WHERE beb.grado_alcohol BETWEEN 5 and 10) on s.id_bebida = idn
Having count(s.id_bebida) between 5 and 10
GROUP BY Ciudad,nombre
Order by contador DESC; 