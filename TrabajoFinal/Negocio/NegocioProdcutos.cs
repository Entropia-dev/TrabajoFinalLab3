using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Dao;
using System.Data;

namespace Negocio
{
    public class NegocioProducto
    {
        public Boolean altaProducto(float pu)
        {
            return true;
        }
        public bool actualizarProducto(string s_Idproc, decimal Precio, int stock, string s_imagen)
        {
            int cant_flias = 0;
            Productos Cue = new Productos();
            Cue.set_codigo_producto(s_Idproc);
            Cue.set_precio_producto(Precio);
            Cue.set_Stock(stock);

            Cue.set_url_imagen(s_imagen);


            DaoProducto dao = new DaoProducto();
            if (dao.existeProducto(Cue) == true)
            {
                cant_flias = dao.ActualizarProducto(Cue);
            }
            if (cant_flias == 1)
            {
                return true;
            }
            else
                return false;


        }
        public bool agregarProducto(string s_Idproc, decimal Precio, int stock,string categoria ,string descripcion , string s_imagen)
        {
            int cant_flias = 0;

    
            Productos Cue = new Productos();
            Cue.set_codigo_producto(s_Idproc);
            Cue.set_precio_producto(Precio);
            Cue.set_Stock(stock);
            Cue.set_categoria(categoria);
            Cue.set_nombre_producto(descripcion);

            Cue.set_url_imagen(s_imagen);



            DaoProducto dao = new DaoProducto();
            if (dao.existeProducto(Cue) == true)
            {
                cant_flias = dao.agregarProducto(Cue);
            }
            if (cant_flias == 1)
            {
                return true;
            }
            else
                return false;

        }

        public DataTable GenerarTabla_Productos()

        {
            DaoProducto tabla = new DaoProducto();
            DataTable glibros = tabla.getTablaCategorias();
            return glibros;

        }

        public bool eliminarProducto(string idProducto)
        {
            //Validar id existente 
            int cant_flias = 0;
            DaoProducto dao = new DaoProducto();
            Productos cat = new Productos();
            cat.set_codigo_producto(idProducto);
            if (dao.existeProducto(cat))
            {
                cant_flias = dao.eliminarProducto(cat);
            }

            if (cant_flias == 1)
            {
                return true;
            }
            else
                return false;
        }

    }
}
