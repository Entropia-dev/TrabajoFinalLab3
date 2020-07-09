using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Negocio;

namespace Vistas.YaMaquetado
{
    public partial class VerCarrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Alias"] != null)
            {
                HyperLink3.NavigateUrl = "~/YaMaquetado/Cuenta.aspx";
                lblmensaje.Text = Session["Alias"].ToString();
            }
            GvCarrito.DataSource = (DataTable)this.Session["carrito"];
            GvCarrito.DataBind();
        }
        //Limpia el carrito
        protected void Button2_Click(object sender, EventArgs e)
        {
            this.Session["carrito"] = null;
            Response.Redirect("VerCarrito.aspx");
        }
        //Realiza la compra
        protected void Button1_Click(object sender, EventArgs e)
        {
            NegocioComprar ng = new NegocioComprar();
            string pu = GvCarrito.Rows[0].Cells[0].Text;

            ng.getCompra(Session["Alias"].ToString(), decimal.Parse(pu));
        }
    }
}