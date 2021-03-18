ALTER SESSION SET CURRENT_SCHEMA = PARRANDEROS; 
SELECT aux.nombre, aux.hor, aux.conteo FROM
(SELECT horario hor, bar.nombre, COUNT(horario) AS Conteo
FROM Frecuentan f
Inner Join Bares bar on bar.id = f.id_bar
Inner Join Bebedores beb on bar.ciudad != beb.ciudad and beb.id=f.id_bebedor
Inner Join Gustan g on beb.id = g.id_bebedor 
Inner Join bebidas b on b.id = g.id_bebida and b.nombre = '&jj'
Group By bar.nombre, horario
Order By conteo DESC) AUX;