using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace Negocio
{
    public class NegocioSession
    {
        public static DataTable CrearCarrito()
        {
            DataTable dt = new DataTable();
            //el DataTable de la cesta tendrá
            //tres campos: PU_Pro, Categoria, Descripcion
            DataColumn dc = new DataColumn("PU_Pro", System.Type.GetType("System.String"));
            dt.Columns.Add(dc);
            dc = new DataColumn("Categoria", System.Type.GetType("System.String"));
            dt.Columns.Add(dc);
            dc = new DataColumn("Descripcion", System.Type.GetType("System.String"));
            dt.Columns.Add(dc);
            return dt;
        }

        // public void AgregarCarrito(DataTable Carrito, int id, string nombre, string des)
        public void AgregarCarrito(DataTable Carrito, string id, string nombre, string des)
        {
            DataRow dr = Carrito.NewRow();
            dr["PU_Pro"] = id;
            dr["Categoria"] = nombre;
            dr["Descripcion"] = des;
            Carrito.Rows.Add(dr);
        }
    }
}
