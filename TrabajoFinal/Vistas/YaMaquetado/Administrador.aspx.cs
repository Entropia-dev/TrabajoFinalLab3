﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vistas
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Alias"] != null)
            {
                HyperLink3.NavigateUrl = "~/YaMaquetado/Cuenta.aspx";
                lblMensaje.Text = Session["Alias"].ToString();
                lblTipo.Text = " Bienvenido admin ";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            this.Session["Alias"] = null;
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_Productos.aspx");
        }
    }
}