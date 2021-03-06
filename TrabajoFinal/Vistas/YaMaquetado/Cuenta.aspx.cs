﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
namespace Vistas
{
    public partial class Cuenta : System.Web.UI.Page
    {
        NegocioCuenta neg = new NegocioCuenta();

        protected void Page_Load(object sender, EventArgs e)
        {

            lblTipo.Text = " Bienvenido Cliente ";


            if (Session["Alias"] != null)
            {
                HyperLink3.NavigateUrl = "~/YaMaquetado/Cuenta.aspx";

                lblmensaje.Text = Session["Alias"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModificarContraseña.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["Alias"] = null;
            Response.Redirect("Login.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("historial_compra.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("VerCarrito.aspx");
        }
    }
}