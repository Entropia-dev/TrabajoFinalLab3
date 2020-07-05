using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Clientes
    {

        //escribo todos los campos que va a tener la entidad.


        String Correo_Cli;
        String Nombre;
        String Apellido;
        String Fecha_Nac;
        String Metodo_captacion;
        String Dni;
        String Direccion;
        String Usuario_Cli;
        String sexo;
            //declaro un constructor vacio.

            public Clientes() { }

        // declaro los sets y los gets.
        public void set_sexo(String Nuevo_sexo)
        {
            this.sexo = Nuevo_sexo;
        }
        public String get_sexo()
        {
            return sexo;
        }

        public void set_Fecha_Nac(String Nuevo_Fecha_Nac)
        {
            this.Fecha_Nac = Nuevo_Fecha_Nac;
        }
        public String get_Fecha_Nac()
        {
            return Fecha_Nac;
        }

        public void set_Usuario_Cli(String Nuevo_Usuario_Cli)
        {
            this.Usuario_Cli = Nuevo_Usuario_Cli;
        }
        public String get_Usuario_Cli()
        {
            return Usuario_Cli;
        }
        public void set_Metodo_captacion(String Nuevo_Metodo_captacion)
        {
            this.Metodo_captacion = Nuevo_Metodo_captacion;
        }
        public String get_Metodo_captacion()
        {
            return Metodo_captacion;
        }
        public void set_Direccion(String Nuevo_Direccion)
        {
            this.Direccion = Nuevo_Direccion;
        }
        public String get_Direccion()
        {
            return Direccion;
        }

        public void set_Apellido(String Nuevo_Direccion)
        {
            this.Apellido = Nuevo_Direccion;
        }

        public String get_Apellido()
        {
            return Apellido;
        }

        

        public String get_Nombre()
            {
                return Nombre;
            }

            public void set_Nombre(String Nuevo_Nombre)
            {
                this.Nombre = Nuevo_Nombre;
            }
            public String get_Dni()
            {
                return Dni;
            }

            public void set_Dni(String Nuevo_Dni)
            {
                this.Dni = Nuevo_Dni;
            }
            

            public void set_email_cuenta(string nuevo_email)
            {
                this.Correo_Cli = nuevo_email;
            }

            public string get_email_cuenta()
            {
                return Correo_Cli;
            }

          


        }
    }

