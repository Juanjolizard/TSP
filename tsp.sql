--ejercicio travelling sales problem (ejercicio postgis ch16)
select seq, tsp.id1, p.id, p.plant as central  
from pgr_TSP('select id, lon as x,lat as y from ch16.spain_nuclear_plants',
	   1,
	   7) as tsp inner join ch16.spain_nuclear_plants as p on
	   tsp.id2 = p.id;

--del algoritmo pgr_tsp se extrae una matriz de costes (seq, id1, id2, cost)
donde se obtiene una secuencia de emparejamientos, puntos de inicio, punto final y coste.
La finalidad del problema es ir de una central nuclear a otra hasta llegar a la central final, recorriendo la mínima distancia.