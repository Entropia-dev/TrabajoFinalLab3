using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Entidades;

namespace Vistas
{
    public partial class Registro : System.Web.UI.Page
    {
        NegocioClientes neg = new NegocioClientes();
        NegocioCuenta neg2 = new NegocioCuenta();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.agregarCliente(txtDni.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text, txtGenero.Text, txtAlias.Text, txtCorreo.Text);
         
            Boolean estado2 = false;
            estado2 = neg2.agregarcuentas(txtCorreo.Text, txtContraseña.Text, txtDni.Text, txtAlias.Text);
            if (estado2 == true && estado==true )
            {
                lblMensaje.Text = "completado con exito";
                Session["Alias"] = txtAlias;

                Response.Redirect("Cuenta.aspx");
            }
            else
            {
                lblMensaje.Text = "No se pudo agregar ";
            }
        }
    }
}