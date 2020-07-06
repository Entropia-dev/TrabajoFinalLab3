<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuracion.aspx.cs" Inherits="TrabajoIntegradorLab3.Configuracion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
*{
    margin: 0px;
    padding: 0px;
}

        .auto-style1 {
            width: 997px;
            height: 68px;
        }
        
header h1{
    height: 150px;
}

nav{
    height:60px;

}

        .auto-style2 {
            text-align: left;
            margin-left: 160px;
        }
    
nav h2{
    font-size:30px;
    text-align:center;
}

#contenido{
    width:700px;
    height:500px;
    float:left;
    margin-top:10px;
    margin-right:10px;
    margin-bottom:10px;
}

aside{
width:270px;
height:500px;
margin-top:10px;
float:right;
}

footer{
    clear:both;
}</style>
</head>
<body>
<!DOCTYPE html>

    <link href="StyleSheet1.css" rel="stylesheet" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Home</title>
    <style type="text/css">

        .auto-style1 {
            width: 997px;
            height: 68px;
        }
        .auto-style2 {
            text-align: left;
            margin-left: 160px;
        }
        .auto-style3 {
            width: 1031px;
            height: 489px;
        }
        .auto-style4 {
            width: 997px;
            margin-right: 587px;
        }
    </style>
    <form id="form2" runat="server">
        <div id="Contenedor">
            <header>
                <h1 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenidos a A&amp;TI Revestimientos</h1>
            </header>
            <nav class="auto-style4">
                <h2 class="auto-style2">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/YaMaquetado/Home.aspx">Home</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YaMaquetado/Clientes.aspx">Clientes</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/YaMaquetado/Franquisias.aspx">Franquicias</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/YaMaquetado/Login.aspx">Cuenta</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YaMaquetado/Productos.aspx">Productos</asp:HyperLink>
                    &nbsp;</h2>
            </nav>
            <section id="contenido" class="auto-style3">
                <article>
                    <h2>Usted ha ingresado como:</h2>
                    <p>
                        &nbsp;</p>
                    <p>
                        Usuario:&nbsp;&nbsp; UsuarioDePrueba.</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        Correo Electronico: Edev@soluciones.com</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        Tipo de cuenta: Cliente</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        <asp:Button ID="Button1" runat="server" Text="actualizar contraseña" Width="197px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Salir de mi cuenta" Width="203px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Text="Ver mi carrito" />
                    </p>
                    <p>
                        &nbsp;</p>
                </article>
            </section>
            <aside>
              
            <h2 class="auto-style5">Nuevos productos</h2>
            <p class="auto-style5">&nbsp;</p>
            <p class="auto-style7">Vea todos nuestros mas nuevos productos en Nuestro apartado de </p>
            <p class="auto-style7">
                <asp:HyperLink ID="Productos_2" runat="server" NavigateUrl="~/Productos.aspx">Productos</asp:HyperLink>
                .</p>
            <p class="auto-style7">&nbsp;</p>
            </aside>
        </div>
    </form>
    </body>
</html>
