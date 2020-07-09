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
    public class DaoComprar
    {
        AccesoDatos con = new AccesoDatos();
        SqlCommand Comando = new SqlCommand();
        SqlParameter SqlParametros = new SqlParameter();

        public int agregarCompra(Ventas ven)
        {
            SqlParametros = Comando.Parameters.Add("@alias", SqlDbType.Char);
            SqlParametros.Value = ven.getAlias();
            SqlParametros = Comando.Parameters.Add("@pu", SqlDbType.Decimal);
            SqlParametros.Value = ven.get_importe();

            return con.EjecutarProcedimientoAlmacenado(Comando, "spComprar");
        }
    }
}
