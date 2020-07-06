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
            if (Session["Alias"] != null)
            {
                HyperLink3.NavigateUrl = "~/YaMaquetado/Cuenta.aspx";
                lblMensaje.Text = Session["Alias"].ToString();
            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}