using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{

    //escribo todos los campos que va a tener la entidad.


    public class Detalle_Ventas
    {
        string codigo_articulo; //completado
        int nro_venta;  //completado     
        string descripcion; //completado
        decimal cantidad; //completado
        decimal precio_producto;//completado
        //declaro un constructor vacio

        public Detalle_Ventas()
        {

        }

        public void set_codigo_articulo(string nuevo_codigo_articulo)
        {
            this.codigo_articulo = nuevo_codigo_articulo;
        }

        public string get_codigo_articulo()
        {
            return this.codigo_articulo;
        }

        public void set_nro_venta(int nuevo_nro_venta)
        {
            this.nro_venta = nuevo_nro_venta;
        }

        public int get_nro_venta()
        {
            return this.nro_venta;
        }

        public void set_cantidad(decimal nueva_cantidad)
        {
            this.cantidad = nueva_cantidad;
        }

        public decimal get_cantidad()
        {
            return this.cantidad;
        }

        public void set_precio_producto(decimal nuevo_precio_producto)
        {
            this.precio_producto = nuevo_precio_producto;
        }


    }

   
}
