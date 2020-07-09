using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas.YaMaquetado
{
    public partial class historial_compra : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmensaje.Text = this.Session["Alias"].ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}