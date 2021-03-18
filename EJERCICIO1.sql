ALTER SESSION SET CURRENT_SCHEMA = PARRANDEROS; 
Select Ciudad, Count(presupuesto) as Presupuesto_Alto,
( SELECT COUNT(*) FROM Bares b WHERE c.ciudad = b.ciudad and presupuesto='Bajo') as Presupuesto_Bajo From Bares c
Where presupuesto = 'Alto'
GROUP BY ciudad;
