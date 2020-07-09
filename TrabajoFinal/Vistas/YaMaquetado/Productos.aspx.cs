using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using System.Data;

namespace TrabajoIntegradorLab3
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Alias"] != null)
            {
                HyperLink3.NavigateUrl = "~/YaMaquetado/Cuenta.aspx";
                lblMensaje.Text = Session["Alias"].ToString();
            }
            if (this.Session["carrito"] == null)
            {
                this.Session["carrito"] = NegocioSession.CrearCarrito();
            }
            if (!IsPostBack)
            {
                Panel1.Visible = false;

            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "eventoClick")
            {
                NegocioSession vs = new NegocioSession();

                string text = e.CommandArgument.ToString();
                string id1 = text.Split('-')[0];
                string des = text.Split('-')[1];
                string nombre = text.Split('-')[2];

                vs.AgregarCarrito((DataTable)this.Session["carrito"], id1, nombre, des);
            }
        }
        //protected void Button3_Command(object sender, CommandEventArgs e)
        //{
        //    if (e.CommandName == "eventoClick")
        //    {
        //        NegocioSession vs = new NegocioSession();

        //        string text = e.CommandArgument.ToString();
        //        string id1 = text.Split('-')[0];
        //        string des = text.Split('-')[1];
        //        string nombre = text.Split('-')[2];

        //        vs.AgregarCarrito((DataTable)this.Session["carrito"], id1, nombre, des);
        //    }
        //}

    }
}