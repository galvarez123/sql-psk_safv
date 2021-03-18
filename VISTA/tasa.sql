create or replace
view psk_pf.tasa as
select
	simbolo,
	cotizacion,
	fecharegistro,
	coalesce(t.usuario ,'') usuario
from
monedas m
join monedas_varianza v on
v.codigo = m.codigo 
left join tranuser t on t.clave ='TASA' and 
date(t.fecha)=date(v.fecharegistro)
and substring( hora,1,5)= substring( v.fecharegistro,12,5)
order by FECHAREGISTRO desc limit 1

	
	