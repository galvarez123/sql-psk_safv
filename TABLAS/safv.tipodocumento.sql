DROP TABLE IF EXISTS safv.tipodoc;
CREATE TABLE safv.tipodoc (
  tipodoc varchar(3) NOT NULL DEFAULT ' ',
  descripcion varchar(100) DEFAULT ' ',
  tabla varchar(50) DEFAULT ' ',
  pskloud varchar(50) DEFAULT ' ',
  notas longtext,
  CONSTRAINT PK_tipodoc PRIMARY KEY (tipodoc,tabla)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='innodb free: 7168 kb';
