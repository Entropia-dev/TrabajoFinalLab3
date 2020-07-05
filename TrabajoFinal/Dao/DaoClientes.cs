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
     public class DaoClientes
    {


        AccesoDatos ds = new AccesoDatos();
        public Clientes  getProducto(Clientes pro)
        {
            DataTable tabla = ds.ObtenerTabla("Clientes", "Select * from Clientes where Dni=" + pro.get_Dni());
            //pro.set_codigo_producto(Convert.ToInt32(tabla.Rows[0][0].ToString()));
            pro.set_email_cuenta(tabla.Rows[0][1].ToString());
            pro.set_Nombre(tabla.Rows[0][2].ToString());
            pro.set_Apellido(tabla.Rows[0][3].ToString());
            pro.set_sexo(tabla.Rows[0][4].ToString());
            pro.set_Usuario_Cli(tabla.Rows[0][5].ToString());
            pro.set_Dni(tabla.Rows[0][6].ToString());
            pro.set_Direccion(tabla.Rows[0][7].ToString());
            pro.set_Usuario_Cli(tabla.Rows[0][8].ToString());
        
            return pro;
        }

        public Boolean existeCliente(Clientes pro)
        {
            String consulta = "Select * from Clientes where Dni='" + pro.get_Dni() + "'";
            return ds.existe(consulta);
        }

        public DataTable getTablaClientes()
        {
            // List<Producto> lista = new List<Producto>();
            DataTable tabla = ds.ObtenerTabla("Clientes", "Select * from Clientes");
            return tabla;
        }
        //No usar
        public int eliminarCliente(Clientes pro)
        {
            SqlCommand comando = new SqlCommand();
            ArmarParametrosClienteEliminar(ref comando, pro);
            return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarProducto");
        }

        
                public int agregarCliente(Clientes pro)
                {

            SqlCommand comando = new SqlCommand();
                    ArmarParametrosClienteAgregar(ref comando, pro);
                    return ds.EjecutarProcedimientoAlmacenado(comando, "spinsertarcliente");
                }
                
        private void ArmarParametrosClienteEliminar(ref SqlCommand Comando, Clientes pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@Dni", SqlDbType.Int);
            SqlParametros.Value = pro.get_Dni();
        }

        private void ArmarParametrosClienteAgregar(ref SqlCommand Comando, Clientes pro)
        {
            SqlParameter SqlParametros = new SqlParameter();
            SqlParametros = Comando.Parameters.Add("@correo_cli ", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_email_cuenta();
            SqlParametros = Comando.Parameters.Add("@nombre", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Nombre();
            SqlParametros = Comando.Parameters.Add("@apellido", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Apellido();
            SqlParametros = Comando.Parameters.Add("@sexo", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_sexo();
            SqlParametros = Comando.Parameters.Add("@Dni  ", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Dni();
            SqlParametros = Comando.Parameters.Add("@Direccion ", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Direccion();
            SqlParametros = Comando.Parameters.Add("@Usuario_Cli ", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Usuario_Cli();
     

        }




    }

}