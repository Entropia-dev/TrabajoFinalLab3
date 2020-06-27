
create database Revestimientoayt

GO 

USE  Revestimientoayt
GO
CREATE TABLE Cuentas(

Correo VARCHAR (20) NOT NULL,
Pass_Cue CHAR(8)NOT NULL,
Num_Doc_Cue CHAR(8)NOT NULL,
Usuario_Cue CHAR(8)NOT NULL,
CP_Cue CHAR(8)NOT NULL,


CONSTRAINT PK_Cuentas PRIMARY KEY  (Correo)



)

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

CONSTRAINT PK_Clientes PRIMARY KEY  (Correo_Cli)
      
  
  )
  
 CREATE TABLE Sesion (
 Usurio_Ses CHAR(8) NOT NULL,
  Correo_Ses VARCHAR(20),
   CONSTRAINT PK_Sesion PRIMARY KEY  (Usurio_Ses)
  ) 
  
   CREATE TABLE Ventas (
  Num_Doc_Com char(8) NOT NULL,
Total  DECIMAL(8,2) DEFAULT '0,00',
 Nom_Usu_Com char(8) NOT NULL,
 Cod_Cli char(8) NOT NULL,
 Id char(8) NOT NULL,
   CONSTRAINT PK_Ventas PRIMARY KEY  (Num_Doc_Com)
    )
   
  
 create table Detalle (
  Num_Doc_Det  char(8) not null,
Cantidad char(8) NOT NULL,
 PU_Det DECIMAL(8,2) DEFAULT '0,00',
 Subtotal DECIMAL(8,2) DEFAULT '0,00',
  Cod_Art_Det char(8) NOT NULL,
   CONSTRAINT PK_Detalle PRIMARY KEY  ( Num_Doc_Det)

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
    CONSTRAINT PK_Proveedores PRIMARY KEY  (  Cuit_Pro)
    )
    