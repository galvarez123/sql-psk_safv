DROP TABLE IF EXISTS safv.orden_detalle;

CREATE TABLE safv.orden_detalle (
  agencia varchar(3) NOT NULL ,
  tipodoc varchar(3) NOT NULL,
  documento varchar(8)NOT NULL ,
  codcliente varchar(20) NOT NULL ,
  fechaemi date NOT NULL ,  
  grupo varchar(6) ,
  subgrupo varchar(6) ,
  codigo varchar(25) NOT NULL,
  nombre varchar(150) ,
  preciounit double(20,7) ,
  dsctounit double(20,7) ,
  preciofin double(20,7) ,
  cantidad double(20,7) ,
  montoneto double(20,7) ,
  montototal double(20,7) ,
  fechadoc date ,
  impuesto1 double(20,7) ,
  vendedor varchar(8) ,
  emisor varchar(8) ,
  unidad varchar(25) ,
  notas longtext,
  baseimpo1 double(20,7) ,
  lote varchar(30) ,
  se_imprimio double(4,0) ,
  fechayhora datetime NOT NULL ,
  PRIMARY KEY opermv_ppal (agencia,tipodoc,documento,codcliente,fechaemi,codigo),
  KEY opermv_documento_idx (documento,tipodoc),
  KEY codigoart (codigo),
  KEY cliente (codcliente)
) 


