create or replace
view psk_pf.categorias as
select
g.	nombre grupo ,
sg.nombre subgrupo
from
	adminpurofm.grupos g
left join adminpurofm.subgrupos sg on
	g.codigo = sg.codigo


	
	