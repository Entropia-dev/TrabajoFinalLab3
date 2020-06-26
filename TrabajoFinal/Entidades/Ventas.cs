using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Ventas
    {
        int dia; //terminado
        int mes; //la fecha tiene que ser remplazada por un datetime  //terminado
        int anio; //terminado 
        decimal importe;  //terminado
        string id_cuenta;  //terminado
        int nro_venta;  //terminado
        bool estado;  //terminado

        //declaro un contructor vacio
        public Ventas() { }

        public void set_dia(int nuevo_dia)
        {
            this.dia = nuevo_dia;
        }

        public void set_id_cuenta(string nueva_id)
        {
            this.id_cuenta = nueva_id;
        }

        public string get_id_cuenta()
        {
            return this.id_cuenta;
        }

        public int get_dia()
        {
            return this.dia;
        }

        public void set_mes(int nuevo_mes)
        {
            this.mes = nuevo_mes;
        }

        public int get_mes()
        {
            return this.mes;
        }
        public void set_anio(int nuevo_anio)
        {
            this.anio = nuevo_anio;
        }

        public int get_anio()
        {
            return this.anio;
        }

        public void set_importe(decimal nuevo_importe)
        {
            this.importe = nuevo_importe;
        }

        public decimal get_importe()
        {
            return this.importe;
        }

        public void set_nro_venta(int nuevo_nro)
        {
            this.nro_venta = nuevo_nro;
        }

        public int get_nro_cuenta()
        {
            return this.nro_venta;
        }

        public void set_estado (bool nuevo_estado)
        {
            this.estado = nuevo_estado;
        }
    }
}
