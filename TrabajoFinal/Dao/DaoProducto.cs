using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using System.Data;
using System.Data.SqlClient;


namespace Dao
{
    public class DaoProducto
    {
        AccesoDatos ds = new AccesoDatos();
        public Productos getProducto(Productos pro)
        {
            DataTable tabla = ds.ObtenerTabla("Productos", "Select * from Productos where IdProducto=" + pro.get_codigo_producto());
            //pro.set_codigo_producto(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            pro.set_codigo_producto(tabla.Rows[0][1].ToString());
            pro.set_precio_producto(Convert.ToInt32(tabla.Rows[0][2].ToString()));
            pro.set_Stock(Convert.ToInt32(tabla.Rows[0][3].ToString()));
            pro.set_categoria(tabla.Rows[0][4].ToString());
            pro.set_nombre_producto(tabla.Rows[0][5].ToString());
            pro.set_url_imagen(tabla.Rows[0][6].ToString());
            return pro;
        }
        //public DataTable ObtenerTabla(String Nombre, String Sql)
        //{
        //    DataSet ds = new DataSet();
        //    AccesoDatos datos = new AccesoDatos();
        //    SqlDataAdapter adp = datos.ObtenerAdaptador(Sql);
        //    adp.Fill(ds, Nombre);
        //    return ds.Tables[Nombre];
        //}
        public int ActualizarProducto(Productos pro)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductomodificar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spActualizarProductos");
        }

        public Boolean existeProducto(Productos pro)
        {
            String consulta = "Select * from Productos where Cod_Art_Pro='" + pro.get_codigo_producto() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaCategorias()
        {
            // List<Producto> lista = new List<Producto>();
            DataTable tabla = ds.ObtenerTabla("Productos", "Select * from Productos");
            return tabla;
        }

        public int eliminarProducto(Productos pro)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductoEliminar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "speliminarproc");
        }


        public int agregarProducto(Productos pro)
        {

            //pro.set_codigo_producto(ds.ObtenerMaximo("SELECT max(idProducto) FROM Producto") + 1);
            SqlCommand comando = new SqlCommand();
            ArmarParametrosProductoAgregar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spinsertarprod");
        }

        private void ArmarParametrosProductoEliminar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Cod_art_pro", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_codigo_producto();
        }
        private void ArmarParametrosProductomodificar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Cod_art_pro", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_codigo_producto();
            SqlParametros = Comando.Parameters.Add("@PU_Pro", SqlDbType.Decimal);
            SqlParametros.Value = pro.get_precio_producto();
            SqlParametros = Comando.Parameters.Add("@stock", SqlDbType.Int);
            SqlParametros.Value = pro.get_stock();
            SqlParametros = Comando.Parameters.Add("@Url_imagen", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_url_imagen();

        }

        private void ArmarParametrosProductoAgregar(ref SqlCommand Comando, Productos pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Cod_art_pro", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_codigo_producto();
            SqlParametros = Comando.Parameters.Add("@PU_Pro", SqlDbType.Decimal);
            SqlParametros.Value = pro.get_precio_producto();
            SqlParametros = Comando.Parameters.Add("@stock ", SqlDbType.Int);
            SqlParametros.Value = pro.get_stock();
            SqlParametros = Comando.Parameters.Add("@descripcion", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_nombre_producto();
            SqlParametros = Comando.Parameters.Add("@categoria ", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_nombre_producto();
            SqlParametros = Comando.Parameters.Add("@Url_imagen", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_url_imagen();


        }

        //public bool EliminarProducto(Productos lib)
        //{
        //    SqlCommand Comando = new SqlCommand();
        //    ArmarParametrosProductoEliminar(ref Comando, lib);
        //    AccesoDatos ad = new AccesoDatos();
        //    int FilasInsertadas = ad.EjecutarProcedimientoAlmacenado(Comando, "spEliminarProducto");
        //    if (FilasInsertadas == 1)
        //        return true;
        //    else
        //        return false;
        //}


    }
}
