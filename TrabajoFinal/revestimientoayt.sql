

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
Metodo_captacion VARCHAR(20)NOT NULL,
Dni CHAR(8)NOT NULL,
Direccion VARCHAR (20) NOT NULL,
Usuario_Cli CHAR(8)NOT NULL,

CONSTRAINT PK_Clientes PRIMARY KEY  (Dni)
      
  
  )
  
create TABLE Cuentas(

Correo VARCHAR (20) NOT NULL,
Pass_Cue CHAR(8)NOT NULL,
Dni CHAR (8) NOT NULL,
Alias CHAR(8)NOT NULL,
CP_Cue CHAR(8)NOT NULL,
Nivel_cuenta  bit ,--boleano

CONSTRAINT PK_Cuentas PRIMARY KEY  (Correo),


CONSTRAINT FK_Cuentas_clientes foreign KEY  (Dni) references  Clientes (dni)

)


  

  
   CREATE TABLE Ventas (
  Num_Doc_Com char(8) NOT NULL,
Total  DECIMAL(8,2) DEFAULT '0,00',
 Alias char(8) NOT NULL,
Fecha  smalldatetime  default getdate(),
   CONSTRAINT PK_Ventas PRIMARY KEY  (Num_Doc_Com),


    )
   
  
 create table Detalle (
  Num_Doc_Det  char(8) not null,
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
     CONSTRAINT PK_Productos PRIMARY KEY  ( Cod_Art_Pro)
    )
       CREATE TABLE Proveedores (
   Cuit_Pro char(8) NOT NULL,
 Razon_Social char(8) NOT NULL,
 Contacto char(8) NOT NULL,
 Direccion char(8) NOT NULL,
 cbu char(8) NOT NULL,
    CONSTRAINT PK_Proveedores PRIMARY KEY  ( Cuit_Pro)
    )
    
    
       CREATE TABLE Compra  (
  Cod_compra char(8) NOT NULL,
Total  DECIMAL(8,2) DEFAULT '0,00',
 cuit_proveedor char(8) NOT NULL,
Fecha  smalldatetime  default getdate(),
   CONSTRAINT PK_Compra PRIMARY KEY  (Cod_compra),
   CONSTRAINT FK_Compra_Proveedores foreign KEY  (cuit_proveedor) references  Proveedores (Cuit_Pro)

    )
    
     create table Detalle_compra (
  Num_Doc_Det  char(8) not null,
Cantidad char(8) NOT NULL,
 PU_Det DECIMAL(8,2) DEFAULT '0,00',
 
  Cod_Art_Det char(8) NOT NULL,

  CONSTRAINT PK_Detalle_compra PRIMARY KEY  ( Cod_Art_Det,Num_Doc_Det)
    )
    