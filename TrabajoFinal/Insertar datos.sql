--insertar datos 
use Revestimientoayt
INSERT INTO clientes  (Correo_Cli,Nombre,Apellido,Fecha_Nac,Sexo,Metodo_captacion,Dni,Direccion,Usuario_Cli)
VALUES('juan@gmail.com','juan','Meza','4/5/1998','Hombre','a','40333333','avenida123','juan5'),('rocio@gmail.com','rocio','chavez','24/7/1999','mujer','b','42222222','calle13','rocioch')
GO

INSERT INTO cuentas (Correo,Pass_Cue,Dni,Alias,CP_Cue,Nivel_cuenta)
VALUES('juan@gmail.com','pass1','40333333','juan5','cp01',1),('rocio@gmail.com','pass2','42222222','rocioch','cp02',0)
go

INSERT INTO ventas (Total,Alias)
VALUES(10000,'juan5'),(9000,'rocioch')
GO
INSERT INTO Detalle ( Num_Doc_Det,Cantidad,PU_Det,Cod_Art_Det)
VALUES(1,10,1000,'plac2'),(2,3,3000,'pint02')
GO


INSERT INTO Productos (Cod_Art_Pro,PU_Pro,Stock,Descripcion,Categoria)
VALUES('plac2',1000,200,'placa60x15negro0.63 m2','placa'),('pint',3000,200,'pintura blanca 20L','pintura')
INSERT INTO Proveedores (Cuit_Pro,Razon_Social,Contacto,Direccion,cbu)
VALUES('prov22','EASY','RAMON','LOSANDES 69','222222'),('prov14','ALBA','ROMINA','BELGRANO 2O20','333333')

INSERT INTO Compra (Total,cuit_proveedor)
VALUES(100000,'prov22'),(90000,'prov14')
GO
INSERT INTO Detalle_compra(Num_Doc_Det,Cantidad,PU_Det,Cod_Art_Det)
VALUES(1,125,800,'plac2'),(2,80,1125,'pint02')

select* from clientes
select* from Cuentas
select* from Ventas
select* from Detalle
select* from Productos
select* from Proveedores
select* from Compra
select* from Detalle_compra