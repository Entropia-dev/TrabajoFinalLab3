using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;



namespace TrabajoIntegradorLab3
{

    public partial class ModificarContraseña : System.Web.UI.Page
    {
        NegocioCuenta neg = new NegocioCuenta();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Alias"] != null)
            {
                HyperLink3.NavigateUrl = "~/YaMaquetado/Cuenta.aspx";
                lblMensaje.Text = Session["Alias"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.ModificarContraseña(txtAlias.Text, TxtContraseña.Text, txtNueva.Text);
            if (estado == true)
            {
                lblMensaje2.Text = "se modifico la contraseña";
            }
            else
            {
                lblMensaje2.Text = "nose modifico la contraseña";
            }
        }
    }
}