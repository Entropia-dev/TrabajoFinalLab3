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

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean estado = false;
            estado = neg.agregarCliente(txtDni.Text, txtNombre.Text, txtApellido.Text, txtDireccion.Text, txtGenero.Text, txtAlias.Text, txtCorreo.Text);
            if (estado == true)
            {
                lblMensaje.Text = "completado con exito";
            }
            else {
                lblMensaje.Text = "No se pudo agregar Cliente";
            }
        }
    }
}