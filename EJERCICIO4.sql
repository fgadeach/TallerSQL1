ALTER SESSION SET CURRENT_SCHEMA = PARRANDEROS; 
SELECT Ciudad, Count(id_bar) as Numero_Bares From bares b, sirven s, bebidas beb
where b.id = s.id_bar
and beb.id = s.id_bebida
and beb.tipo = 1
and beb.grado_alcohol BETWEEN 8 and 10
Group by Ciudad
Order By Numero_Bares DESC
FETCH FIRST 1 ROWS ONLY;