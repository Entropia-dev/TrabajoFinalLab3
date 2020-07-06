using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class admin_ventas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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