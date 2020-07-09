using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace TrabajoIntegradorLab3
{
    public partial class Login : System.Web.UI.Page
    {
        NegocioCuenta neg = new NegocioCuenta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            Boolean estado = false;
            estado = neg.validarCuenta(txtAlias.Text, txtContrasenia.Text);
            if (estado == true)
            {
                Session["Alias"] = txtAlias.Text;
                Boolean estadocue = false;
                estadocue = neg.devolvertipo_cuenta(Session["Alias"].ToString());
                if (estadocue == true)
                {


                    Response.Redirect("Administrador.aspx");
                }
                else
                {


                    Response.Redirect("Cuenta.aspx");
                }


            }
            else
            {

                lblMensaje.Text = "No se pudo ingresar";

            }
        }
    }
}