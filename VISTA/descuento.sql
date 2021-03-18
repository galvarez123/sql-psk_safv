create or replace
view psk_pf.descuento as
select
	o.idoferta,
	titulo ,
	fechadesde,
	fechahasta ,
	dias_semana,
	horadesde,
	horahasta,
	codigoart,
	case
		when precioneto_normal>0 then (precioneto_normal-precio_oferta_neto)/ precioneto_normal
		else 0
	end as descuento
from
	adminpurofm.ofertasti o
join adminpurofm.ofertasmv o2 on
	o.idoferta = o2.idoferta
where
	current_date() between fechadesde and fechahasta 

	
	