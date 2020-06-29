using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;


namespace Vistas
{
    public partial class Admin_presupuestos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Presupuestos pre = new Presupuestos();
            NegocioProducto np = new NegocioProducto();
        }
    }
}