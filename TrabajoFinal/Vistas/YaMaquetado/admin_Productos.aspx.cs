using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class admin_Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (IsPostBack == false)
            {
                cargarGridView();
            }
        }

        protected void grdProductos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public void cargarGridView()
        {
            NegocioProducto neg = new NegocioProducto();

            grdProductos.DataSource = neg.GenerarTabla_Productos();
            grdProductos.DataBind();
        }

        protected void grdProductos_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            String s_codpro = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblit_Cod_pro")).Text;
            String s_pu = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblit_pu")).Text;
            String s_stock = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblit_Stock")).Text;
            String s_categoria = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblit_categoria")).Text;
            String s_descripcion = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblit_Descipcion")).Text;
            String s_imagen = ((Label)grdProductos.Rows[e.NewSelectedIndex].FindControl("lblit_imagen")).Text;

            //lblSelecciono.Text = s_codpro;
        }

        protected void grdProductos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            String s_codpro = ((Label)grdProductos.Rows[e.RowIndex].FindControl("lblit_Cod_pro")).Text;
            bool estado = false;
            NegocioProducto proc = new NegocioProducto();
            lblSelecciono.Text = s_codpro;
            estado = proc.eliminarProducto(s_codpro);
            //if(estado == true)
            //{
            //    lblSelecciono.Text = "EL PRODUCTO "+s_codpro+" FUE eliminado";
            //}
            //else
            //{
            //    lblSelecciono.Text = "NO SE PUDO ELIMINAR ";
            //}


            cargarGridView();
        }

        protected void grdProductos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grdProductos.EditIndex = e.NewEditIndex;
            cargarGridView();
        }

        protected void grdProductos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grdProductos.EditIndex = -1;
            cargarGridView();
        }

        protected void grdProductos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Buscar los datos del edititemplate
            String s_Idproc = ((Label)grdProductos.Rows[e.RowIndex].FindControl("lblet_Cod_pro")).Text;
            String s_pu = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txtEi_PU_Pro")).Text;
            String s_stock = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txt_Stock")).Text;
            //String s_categoria = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txtet_Categoria")).Text;
            //String s_descripcion = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("txtei_Descripcion")).Text;
            String s_imagen = ((TextBox)grdProductos.Rows[e.RowIndex].FindControl("TextBox1")).Text;


            NegocioProducto neg = new NegocioProducto();

            //lblSelecciono.Text = s_Idproc + s_pu + s_stock + s_imagen;
            int stock = Convert.ToInt32(s_stock);
            bool estado = false;
            decimal Precio = Convert.ToDecimal(s_pu);

            estado = neg.actualizarProducto(s_Idproc, Precio, stock, s_imagen);
            if (estado == true)
            {
                lblSelecciono.Text = "SE Actaulizo el producto corrrectamente ";
            }
            else
            {
                lblSelecciono.Text = "NO SE PUDO ACTUALIZAR ";
            }

            //GestionLibros glibros = new GestionLibros();
            //glibros.ActualizarLibro(lib);

            grdProductos.EditIndex = -1;
            cargarGridView();
        }

        protected void grdProductos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdProductos.PageIndex = e.NewPageIndex;
            cargarGridView();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            NegocioProducto neg = new NegocioProducto();
            int stock = Convert.ToInt32(TxtStock.Text);
            bool estado = false;
            decimal Precio = Convert.ToDecimal(txtprecio.Text);
            estado = neg.agregarProducto(txtcodpro.Text, Precio, stock, txtcategoria.Text, txtcategoria.Text, txtImagen.Text);
                if(estado == true)
            {
                lblSelecciono.Text = "se agrego producto";
            }
                else
            {
                lblSelecciono.Text = "NO se agrego producto";
            }
        }
    }
}