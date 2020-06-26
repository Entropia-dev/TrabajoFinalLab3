using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Cuentas
    {
        //escribo todos los campos que va a tener la entidad.

        string id; //completado
        string correo_electronico; //completado
        string contrasenia;//completado
        int nivel; //completado

        //declaro un constructor vacio.

        public Cuentas() { }

        // declaro los sets y los gets.

        public int get_nivel_cuenta() {
            return nivel;
        }
        
        public void set_nivel_cuenta(int nuevo_nivel_cuenta)
        {
            this.nivel = nuevo_nivel_cuenta;
        }

        public string get_id_cuenta()
        {
            return id;
        }

        public void set_id_cuenta(string nuevo_id)
        {
            this.id = nuevo_id;
        }

        public void set_email_cuenta(string nuevo_email)
        {
            this.correo_electronico = nuevo_email;
        }

        public string get_email_cuenta()
        {
            return correo_electronico;
        }

        public void  set_contrasenia(string nueva_contrasenia) {

            this.contrasenia = nueva_contrasenia;
        }

        public string get_contrasenia()
        {
            return this.contrasenia;
        }
    }
}
