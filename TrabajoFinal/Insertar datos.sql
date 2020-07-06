--insertar datos la fecha de nacimiento necesita el formato aaaa-mm-dd hs-mn-ss 
use Revestimientoayt
INSERT INTO clientes  (Correo_Cli,Nombre,Apellido,Fecha_Nac,Sexo,Metodo_captacion,Dni,Direccion,Usuario_Cli)
VALUES('juan@gmail.com','juan','Meza','1955-12-13 00:00:00','Hombre','a','40333333','avenida123','juan5'),('rocio@gmail.com','rocio','chavez','1955-12-13 12:43:00','mujer','b','42222222','calle13','rocioch')
GO
--los clientes tienen que existir previamente a la cuenta
INSERT INTO cuentas (Correo,Pass_Cue,Dni,Alias,CP_Cue,Nivel_cuenta)
VALUES('juan@gmail.com','pass1','40333333','juan5','cp01',1),('rocio@gmail.com','pass2','42222222','rocioch','cp02',0)
go

--las ventas tienen que existir previamente al detalle 
INSERT INTO ventas (Total,Alias)
VALUES(10000,'juan5'),(9000,'rocioch')
GO
INSERT INTO Detalle ( Num_Doc_Det,Cantidad,PU_Det,Cod_Art_Det)
VALUES(1,10,1000,'plac2'),(2,3,3000,'pint02')
GO


INSERT INTO Productos (Cod_Art_Pro,PU_Pro,Stock,Descripcion,Categoria,Url_imagen)
VALUES('cie2',1000,200,'cielorrasox15blanco.o63m2','cielorraso','~/Vistas/Imagenes/cielorrasos.jpg'),
('Pin2',3000,200,'pinturablanca20litros','pintura','~/Vistas/Imagenes//Pintura blanca.jpg'),
('Pin3',3000,200,'pintturanegra20litros','pintura','~/Vistas/Imagenes/Pintura negra.jpg'),
('plac2',1000,200,'placax15piedra.063m2','placa','~/Vistas/Imagenes/modelo piedra.jpg'),
('plac3',1000,200,'placax15adoquin.063m2','placa','~/Vistas/Imagenes/placa adoquin.jpg'),
('plac4',1000,200,'placax15Marmol.063m2','placa','~/Vistas/Imagenes/placa Marmol.jpg'),
('plac5',1000,200,'placax15murete .063m2','placa','~/Vistas/Imagenes/placa murete .jpg'),
('plac6',1000,200,'placax15ubeda .063m2','placa','~/Vistas/Imagenes/placa ubeda.jpg'),
('plac7',1000,200,'placax15blancas.063m2','placa','~/Vistas/Imagenes/placas blancas.jpg'),
('plac8',1000,200,'placax15blancas.063m2','placa','~/Vistas/Imagenes/placas blancas.jpg')
INSERT INTO Proveedores (Cuit_Pro,Razon_Social,Contacto,Direccion,cbu)
VALUES('prov22','EASY','RAMON','LOSANDES 69','222222'),('prov14','ALBA','ROMINA','BELGRANO 2O20','333333')

INSERT INTO Compra (Total,cuit_proveedor)
VALUES(100000,'prov22'),(90000,'prov14')
GO
INSERT INTO Detalle_compra(Num_Doc_Det,Cantidad,PU_Det,Cod_Art_Det)
VALUES(1,125,800,'plac2'),(2,80,1125,'pint02')


INSERT INTO Franquicias(Id_Sucursal,NombreSucursal,DescripcionSucursal,HorarioSucursal,ProvinciaSucursal,DireccionSucursal)
VALUES('suc04','Revestimiento a&t(Talar) ','Venta de placas pinturas y accesorios antihumedad','8:00 a 17:00 hs','Buenos aires ','hipolito yrigoyen 1623'),
('suc05','Revestimiento a&t(Benavidez) ','Venta de placas pinturas y accesorios antihumedad','8:00 a 17:00 hs','Buenos aires ','Chilavert 69')
--consultas de seleccion

select* from clientes
select* from Cuentas
select* from Ventas
select* from Detalle
select* from Productos
select* from Proveedores
select* from Compra
select* from Detalle_compra