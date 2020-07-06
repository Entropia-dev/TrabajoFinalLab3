<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TrabajoIntegradorLab3.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel ="stylesheet" href ="StyleSheet1.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
            text-align: center;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

    <div id="Contenedor">

        <header>
            <h1 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenidos a A&TI Revestimientos</h1>
        </header>

        <nav>
            <h2 class="auto-style2">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/YaMaquetado/Home.aspx">Home</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YaMaquetado/Clientes.aspx">Clientes</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/YaMaquetado/Franquisias.aspx">Franquicias</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/YaMaquetado/Login.aspx">Cuenta</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YaMaquetado/Productos.aspx">Productos</asp:HyperLink>
&nbsp;</h2>
        </nav>

        <section id="contenido">
            <article>
                <h2>&nbsp;</h2>
                <h5 style="box-sizing: border-box; font-family: Montserrat; margin: 0px; padding: 0px; border: 0px; text-decoration: none; transition: color 0.5s ease 0s, background-color 0.5s ease 0s, border-color 0.5s ease 0s, text-shadow 0.5s ease 0s, opacity 0.5s ease 0s, margin 0.5s ease 0s; color: rgb(0, 0, 0); font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Placas Antihumedad Ultima Generación</h5>
                <p style="box-sizing: border-box; font-family: Montserrat; margin: 15px 0px 0px; padding: 0px; border: 0px; text-decoration: none; transition: color 0.5s ease 0s, background-color 0.5s ease 0s, border-color 0.5s ease 0s, text-shadow 0.5s ease 0s, opacity 0.5s ease 0s, margin 0.5s ease 0s; font-size: 18px; color: rgb(45, 45, 45); line-height: 36px; font-weight: 400; letter-spacing: normal; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;">
                    REVESTIMIENTOS TRANSPIRABLES CONTRA LA HUMEDAD.<br style="box-sizing: border-box; font-family: Montserrat; margin: 0px; padding: 0px; border: 0px; text-decoration: none; transition: color 0.5s ease 0s, background-color 0.5s ease 0s, border-color 0.5s ease 0s, text-shadow 0.5s ease 0s, opacity 0.5s ease 0s, margin 0.5s ease 0s;" />
                    Todas las piezas están tratadas con aceites siliconados y aditivos, lo que las hace más resistentes a la humedad.<br style="box-sizing: border-box; font-family: Montserrat; margin: 0px; padding: 0px; border: 0px; text-decoration: none; transition: color 0.5s ease 0s, background-color 0.5s ease 0s, border-color 0.5s ease 0s, text-shadow 0.5s ease 0s, opacity 0.5s ease 0s, margin 0.5s ease 0s;" />
                    INSTALACIÓN LIVIANA Y SENCILLA: Permite la aplicación en seco, obras más rápidas, más limpias y menos gente. Los productos son de primera calidad, respetan el medio ambiente, utilizando materias primas y procesos industriales sostenibles.<span>&nbsp;</span><strong style="box-sizing: border-box; font-weight: bold; font-family: Montserrat; margin: 0px; padding: 0px; border: 0px; text-decoration: none; transition: color 0.5s ease 0s, background-color 0.5s ease 0s, border-color 0.5s ease 0s, text-shadow 0.5s ease 0s, opacity 0.5s ease 0s, margin 0.5s ease 0s;">SOMOS FABRICANTES</strong></p>
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

        <footer>
            <h2 class="auto-style3">Diseñamos para que puedas disfrutar</h2>
        </footer>

    </div>

    </form>

</body>
</html>
