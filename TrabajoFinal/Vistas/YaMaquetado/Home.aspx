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
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server">Clientes</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server">Franquicias</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx.cs">Cuenta</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server">Productos</asp:HyperLink>
&nbsp;</h2>
        </nav>

        <section id="contenido">
            <article>
                <h2>Contenido</h2>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
                <p>------</p>
            </article>
        </section>

        <aside>
            <h2>Publicidad</h2>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
            <p>------</p>
        </aside>

        <footer>
            <h2>Pie Pagina</h2>
        </footer>

    </div>

    </form>

</body>
</html>
