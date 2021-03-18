DROP TABLE IF EXISTS safv.agencias;
CREATE TABLE safv.agencias (
  agencia varchar(3) NOT NULL DEFAULT ' ',
  nombre varchar(50) DEFAULT ' ',
  endpoint varchar(100) DEFAULT ' ',
  coordenadas varchar(50) DEFAULT ' ',
  activo int DEFAULT 0,
  
  CONSTRAINT PK_agencia PRIMARY KEY (agencia)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='innodb free: 7168 kb';
