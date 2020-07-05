
--delete
drop database Revestimientoayt
create database Revestimientoayt

GO 

USE  Revestimientoayt
GO


 CREATE TABLE Clientes (
Correo_Cli  VARCHAR (20) NOT NULL,
Nombre char(12) NOT NULL,
 Apellido char(20) NOT NULL,
Fecha_Nac  smalldatetime  default getdate(),
Sexo CHAR(8)NOT NULL,
Metodo_captacion VARCHAR(20),
Dni CHAR(8)NOT NULL,
Direccion VARCHAR (20) NOT NULL,
Usuario_Cli CHAR(8)NOT NULL,

CONSTRAINT PK_Clientes PRIMARY KEY  (Dni)
      
  
  )
  
create TABLE Cuentas(

Correo VARCHAR (20) NOT NULL,
Pass_Cue VARCHAR(20)NOT NULL,
Dni CHAR (8) NOT NULL,
Alias CHAR(20)NOT NULL,
CP_Cue CHAR(8),
Nivel_cuenta  int ,

CONSTRAINT PK_Cuentas PRIMARY KEY  (Correo),


CONSTRAINT FK_Cuentas_clientes foreign KEY  (Dni) references  Clientes (dni)

)


  

  
   CREATE TABLE Ventas (
  Num_Doc_Com  int IDENTITY (1,1) NOT NULL,
Total  DECIMAL(8,2) DEFAULT '0,00',
 Alias char(8) NOT NULL,
Fecha  smalldatetime  default getdate(),
   CONSTRAINT PK_Ventas PRIMARY KEY  (Num_Doc_Com),


    )
   
  
 create table Detalle (
  Num_Doc_Det int not null,
Cantidad char(8) NOT NULL,
 PU_Det DECIMAL(8,2) DEFAULT '0,00',
   Cod_Art_Det char(8) NOT NULL,

  CONSTRAINT PK_Detalle PRIMARY KEY  ( Cod_Art_Det,Num_Doc_Det)
    )
    
   CREATE TABLE Productos (
   Cod_Art_Pro char(8) NOT NULL,
 PU_Pro DECIMAL(8,2) DEFAULT '0,00',
 Stock int  NOT NULL,
  Categoria char(8) not null,
  Descripcion varchar(30) not null,
     CONSTRAINT PK_Productos PRIMARY KEY  ( Cod_Art_Pro)
    )
       CREATE TABLE Proveedores (
   Cuit_Pro char(8) NOT NULL,
 Razon_Social char(8) NOT NULL,
 Contacto char(8) NOT NULL,
 Direccion VARCHAR (20) NOT NULL,
 cbu char(8) NOT NULL,
    CONSTRAINT PK_Proveedores PRIMARY KEY  ( Cuit_Pro)
    )
    
    
       CREATE TABLE Compra  (
  Cod_compra int IDENTITY (1,1) NOT NULL,
Total  DECIMAL(8,2) DEFAULT '0,00',
 cuit_proveedor char(8) NOT NULL,
Fecha  smalldatetime  default getdate(),
   CONSTRAINT PK_Compra PRIMARY KEY  (Cod_compra),
   CONSTRAINT FK_Compra_Proveedores foreign KEY  (cuit_proveedor) references  Proveedores (Cuit_Pro)

    )
    
     create table Detalle_compra (
  Num_Doc_Det  int NOT NULL,
Cantidad char(8) NOT NULL,
 PU_Det DECIMAL(8,2) DEFAULT '0,00',
 
  Cod_Art_Det char(8) NOT NULL,

  CONSTRAINT PK_Detalle_compra PRIMARY KEY  ( Cod_Art_Det,Num_Doc_Det)
  )
   create table Franquicias(
   
     Id_Sucursal char(8)not null,
      NombreSucursal  varchar (50) not null,
      DescripcionSucursal varchar (50) not null,
      HorarioSucursal varchar(50) not null,
      ProvinciaSucursal varchar (50) not null,
      DireccionSucursal varchar (50) not null,
      CONSTRAINT PK_Franquicia PRIMARY KEY  ( Id_Sucursal) 
    )
 go
 
 
 ;

CREATE PROCEDURE spinsertarprod
(
@PU_Pro Decimal,
@Cod_art_pro decimal,
@stock int,
@categoria char(30),
@descripcion varchar(30)
)
AS
INSERT INTO Productos
(
PU_Pro,
Cod_Art_Pro,
Stock,
Categoria,
Descripcion
)
VALUES
(
@PU_Pro,
@Cod_art_pro,
@stock,
@categoria,
@descripcion
)RETURNgoCREATE PROCEDURE spinsertarcuenta
(
@correo VARCHAR(20),
@pass_cue VARCHAR(20),
@dni CHAR(8),
@cp_cue char(8),
@Alias char(8),
)
AS
INSERT INTO Cuentas
(
Correo,
Pass_Cue,
Dni,
CP_Cue,
Alias
)
VALUES
(
@correo,
@pass_cue,
@dni,
@pass_cue,
@nivel_cue
)RETURNgoCREATE PROCEDURE spinsertarcuenta
(
@correo VARCHAR(20),
@pass_cue VARCHAR(20),
@dni CHAR(8),
@cp_cue char(8),
@nivel_cue bit
)
AS
INSERT INTO Cuentas
(
Correo,
Pass_Cue,
Dni,
CP_Cue,
Nivel_cuenta
)
VALUES
(
@correo,
@pass_cue,
@dni,
@pass_cue,
@nivel_cue
)RETURNgoCREATE PROCEDURE spinsertarcliente
(
@correo_cli VARCHAR(20),
@nombre VARCHAR(20),
@apellido CHAR(8),
@fecha_nac char(8),
@sexo char,
@metodo_cap varchar(20),
@Dni CHAR(8),
@Direccion VARCHAR (20) NOT NULL,
@Usuario_Cli CHAR(8)NOT NULL
)
AS
INSERT INTO Clientes
(
Correo_Cli,
Nombre,
Apellido,
Fecha_Nac,
Sexo,
Metodo_captacion,
Dni,
Direccion,
Usuario_Cli
)
VALUES
(
@correo_cli,
@nombre,
@apellido,
@fecha_nac,
@sexo,
@metodo_cap,
@Dni,
@Direccion,
@Usuario_Cli
)RETURNgo