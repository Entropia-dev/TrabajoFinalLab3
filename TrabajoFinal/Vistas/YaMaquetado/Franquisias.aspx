﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Franquisias.aspx.cs" Inherits="TrabajoIntegradorLab3.Franquisias" %>

<!DOCTYPE html>

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <title>Franquicias</title>
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

    <link href="StyleSheet1.css" rel="stylesheet" />
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
  
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
    </head>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form2" runat="server">
        <div id="Contenedor">
            <header>
                <h1 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenidos a A&amp;TI Revestimientos
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </h1>
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
                    <h2>Nuestras sucursales:</h2>
                    <p>
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                            <AlternatingItemTemplate>
                                <li style="background-color: #FFF8DC;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />
                                    HorarioSucursal:
                                    <asp:Label ID="HorarioSucursalLabel" runat="server" Text='<%# Eval("HorarioSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:Label ID="DireccionSucursalLabel" runat="server" Text='<%# Eval("DireccionSucursal") %>' />
                                    <br />
                                    ProvinciaSucursal:
                                    <asp:Label ID="ProvinciaSucursalLabel" runat="server" Text='<%# Eval("ProvinciaSucursal") %>' />
                                    <br />
                                </li>
                            </AlternatingItemTemplate>
                            <EditItemTemplate>
                                <li style="background-color: #008A8C;color: #FFFFFF;">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />
                                    HorarioSucursal:
                                    <asp:TextBox ID="HorarioSucursalTextBox" runat="server" Text='<%# Bind("HorarioSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:TextBox ID="DireccionSucursalTextBox" runat="server" Text='<%# Bind("DireccionSucursal") %>' />
                                    <br />
                                    ProvinciaSucursal:
                                    <asp:TextBox ID="ProvinciaSucursalTextBox" runat="server" Text='<%# Bind("ProvinciaSucursal") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                </li>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                No se han devuelto datos.
                            </EmptyDataTemplate>
                            <InsertItemTemplate>
                                <li style="">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />HorarioSucursal:
                                    <asp:TextBox ID="HorarioSucursalTextBox" runat="server" Text='<%# Bind("HorarioSucursal") %>' />
                                    <br />DireccionSucursal:
                                    <asp:TextBox ID="DireccionSucursalTextBox" runat="server" Text='<%# Bind("DireccionSucursal") %>' />
                                    <br />ProvinciaSucursal:
                                    <asp:TextBox ID="ProvinciaSucursalTextBox" runat="server" Text='<%# Bind("ProvinciaSucursal") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                </li>
                            </InsertItemTemplate>
                            <ItemSeparatorTemplate>
<br />
                            </ItemSeparatorTemplate>
                            <ItemTemplate>
                                <li style="background-color: #DCDCDC;color: #000000;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />
                                    HorarioSucursal:
                                    <asp:Label ID="HorarioSucursalLabel" runat="server" Text='<%# Eval("HorarioSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:Label ID="DireccionSucursalLabel" runat="server" Text='<%# Eval("DireccionSucursal") %>' />
                                    <br />
                                    ProvinciaSucursal:
                                    <asp:Label ID="ProvinciaSucursalLabel" runat="server" Text='<%# Eval("ProvinciaSucursal") %>' />
                                    <br />
                                </li>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <li runat="server" id="itemPlaceholder" />
                                </ul>
                                <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                </div>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />
                                    HorarioSucursal:
                                    <asp:Label ID="HorarioSucursalLabel" runat="server" Text='<%# Eval("HorarioSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:Label ID="DireccionSucursalLabel" runat="server" Text='<%# Eval("DireccionSucursal") %>' />
                                    <br />
                                    ProvinciaSucursal:
                                    <asp:Label ID="ProvinciaSucursalLabel" runat="server" Text='<%# Eval("ProvinciaSucursal") %>' />
                                    <br />
                                </li>
                            </SelectedItemTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT [NombreSucursal], [DescripcionSucursal], [HorarioSucursal], [DireccionSucursal], [ProvinciaSucursal] FROM [Franquicias]"></asp:SqlDataSource>
                    </p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
                    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
            </aside>
        </div>
    </form>
    </body>
</html>
