create or replace
view safv.existencia as
select
	a.agencia,
	a.codigo ,
	g.nombre as grupo ,
	sg.nombre  as subgrupo ,
	a.nombre ,
	referencia ,
	marca,
	existencia,
	preciofin1,
	a.discont 
from
	backup.articulo a
join backup.grupos g on
	g.codigo = a.grupo
	and g.agencia = a.agencia
join backup.subgrupos sg on
	a.subgrupo = sg.subcodigo
	
	and a.grupo = sg.codigo
	and sg.agencia = a.agencia