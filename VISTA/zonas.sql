create or replace
view psk_pf.zonas as
select
	left(zona,3) as agencia ,
	substring( zona,5) as zona,
	b.subsector as sector,
	s.codigo as id_zona,
	b.subcodigo  as id_sector
from
	adminpurofm.sectores s
 join adminpurofm.subsectores b on s.codigo =b.codigo ;