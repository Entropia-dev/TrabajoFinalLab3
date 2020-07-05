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
    public class DaoCuenta
    {

            AccesoDatos ds = new AccesoDatos();
            public Cuentas getCuenta(Cuentas cue)
            {
                DataTable tabla = ds.ObtenerTabla("Cuentas", "Select * from Cuentas where Correo =" + cue.get_email_cuenta());
                //pro.set_codigo_producto(Convert.ToInt32(tabla.Rows[0][0].ToString()));
                cue.set_email_cuenta(tabla.Rows[0][1].ToString());
                cue.set_contrasenia(tabla.Rows[0][2].ToString());
            cue.set_Dni(tabla.Rows[0][3].ToString());
            cue.set_Alias(tabla.Rows[0][4].ToString());


            return cue;
            }

            public Boolean existeCuenta(Cuentas pro)
            {
                String consulta = "Select * from Cuentas where Alias ='" + pro.get_Alias() + "'";
                return ds.existe(consulta);
            }

            public DataTable getTablaCategorias()
            {
                // List<Producto> lista = new List<Producto>();
                DataTable tabla = ds.ObtenerTabla("Cuentas", "Select * from Cuentas");
                return tabla;
            }
        /*
            public int eliminarCuenta(Cuentas pro)
            {
                SqlCommand comando = new SqlCommand();
                ArmarParametrosProductoEliminar(ref comando, pro);
                return ds.EjecutarProcedimientoAlmacenado(comando, "spEliminarCuentas");
            }*

            */
                    public int agregarCuenta(Cuentas pro)
                    {

                       // pro.get_email_cuenta(ds.ObtenerMaximo("SELECT max(idProducto) FROM Producto") + 1);
                        SqlCommand comando = new SqlCommand();
                        ArmarParametrosCuentasAgregar(ref comando, pro);
                        return ds.EjecutarProcedimientoAlmacenado(comando, "spinsertarcuenta");
                    }
                    
            private void ArmarParametrosCuentasEliminar(ref SqlCommand Comando, Cuentas pro)
            {
                SqlParameter SqlParametros = new SqlParameter();
                SqlParametros = Comando.Parameters.Add("@correo ", SqlDbType.Int);
                SqlParametros.Value = pro.get_email_cuenta();
            }

            private void ArmarParametrosCuentasAgregar(ref SqlCommand Comando, Cuentas pro)
            {
                SqlParameter SqlParametros = new SqlParameter();
                SqlParametros = Comando.Parameters.Add("@correo", SqlDbType.VarChar);
                SqlParametros.Value = pro.get_email_cuenta();
                SqlParametros = Comando.Parameters.Add("@pass_cue", SqlDbType.VarChar);
                SqlParametros.Value = pro.get_contrasenia();
            SqlParametros = Comando.Parameters.Add("@dni ", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Dni();
            SqlParametros = Comando.Parameters.Add("@Alias", SqlDbType.VarChar);
            SqlParametros.Value = pro.get_Alias();
        
         
       }



        
    }
}
