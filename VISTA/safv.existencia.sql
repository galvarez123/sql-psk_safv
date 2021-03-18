create or replace
view psk_pf.existencia as
select
	e.almacen ,
	a.codigo,
	g.nombre as grupo ,
	sg.nombre as subgrupo ,
	controlado ,
	case
		when trim(A.detalles) = '' then a.nombre
		else A.detalles
	end as nombre ,
	referencia ,
	marca,
	a.hashtag as etiquetas,
	a.contraindi as descripcion,
	campo1 as principio,
	coalesce (e.existencia,
	0) existencia,
	preciofin1 as precio,
	a.discont as descontinuado,
	a.codigotipoprod as destacado,
	' ' as descuento,
	I.codalternativo as barras,
	case
	when campo10!=0
	then round((campo9/campo10) *(1+(trim(campo2)/100 )),2)
	else 0
	end as precio2,
	' ' as descuento2
from
	adminpurofm.articulo a
left join adminpurofm.existenc e on
	e.codigo = a.codigo
left join adminpurofm.grupos g on
	g.codigo = a.grupo
left join adminpurofm.subgrupos sg on
	a.subgrupo = sg.subcodigo
	and a.grupo = sg.codigo
left join adminpurofm.invcodalternativo i on
	I.codigo = A.codigo
	and I.agencia = 'CDB'


	
	