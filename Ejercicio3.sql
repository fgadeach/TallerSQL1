ALTER SESSION SET CURRENT_SCHEMA = PARRANDEROS; 
SELECT id, nombre,(Select count(id_bebedor) from gustan g where  g.id_bebedor=bebedores.id) + (Select count(id_bebedor) from frecuentan g where  g.id_bebedor=bebedores.id)+1 as APARICIONES,
ciudad from Bebedores
ORDER BY APARICIONES DESC, CIUDAD ASC
FETCH FIRST 10 ROWS ONLY;