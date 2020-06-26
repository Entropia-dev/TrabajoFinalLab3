using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Franquicias
    {
        //escribo todos los campos que va a tener la entidad.

        string direccion;   //completado
        string responsable_sucursal;//completado
        string zona_sucursal; //completado
        int codigo_sucursal; //completado

        //declaro un constructor vacio.

        public Franquicias() { }

        public void set_direccion(string nueva_direccion)
        {
            this.direccion = nueva_direccion;
        }

        public string get_dirreccion()
        {
            return this.direccion;
        }

        public void set_responsable_sucursal(string nuevo_responsable)
        {
            this.responsable_sucursal = nuevo_responsable;
        }

        public string get_responsable_sucursal()
        {
            return responsable_sucursal;
        }

        public void set_zona(string n_zona_sucursal)
        {
            this.zona_sucursal = n_zona_sucursal;
        }

        public string get_zona()
        {
            return this.zona_sucursal;
        }

        public void set_codigo_sucursal(int nuevo_codigo)
        {
            this.codigo_sucursal = nuevo_codigo;
        }

        public int get_codigo_sucursal()
        {
            return this.codigo_sucursal;
        }
    }
}
