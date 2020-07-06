<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="TrabajoIntegradorLab3.Productos" %>

<!DOCTYPE html>

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
            width: 1066px;
        }
        .auto-style4 {
            margin-left: 10px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
        }
    </style>
</head>

<body>

    <form id="form1" runat="server">

    <div id="Contenedor" class="auto-style3">

        <header>
            <h1 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenidos a A&TI Revestimientos
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </h1>
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
                <h2>Nuestros productos:</h2>
                <p>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" GroupItemCount="2" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                       <%-- <AlternatingItemTemplate>
                            <td runat="server" style="background-color: #FFFFFF;color: #284775;">PU_Pro:
                                <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                                <br />Categoria:
                                <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                <br />Url_imagen:
                                <asp:Label ID="Url_imagenLabel" runat="server" Text='<%# Eval("Url_imagen") %>' />
                                <br />Descripcion:
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                <br /></td>
                        </AlternatingItemTemplate>--%>
                        <EditItemTemplate>
                            <td runat="server" style="background-color: #999999;">PU_Pro:
                                <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                                <br />Categoria:
                                <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                                <br />Url_imagen:
                                <asp:TextBox ID="Url_imagenTextBox" runat="server" Text='<%# Bind("Url_imagen") %>' />
                                <br />Descripcion:
                                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                <br />
                                </td>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No se han devuelto datos.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
<td runat="server" />
                        </EmptyItemTemplate>
                        <GroupTemplate>
                            <tr id="itemPlaceholderContainer" runat="server">
                                <td id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <InsertItemTemplate>
                            <td runat="server" style="">PU_Pro:
                                <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                                <br />Categoria:
                                <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                                <br />Url_imagen:
                                <asp:TextBox ID="Url_imagenTextBox" runat="server" Text='<%# Bind("Url_imagen") %>' />
                                <br />Descripcion:
                                <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                <br />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                <br />
                                </td>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <td runat="server" style="background-color: #E0FFFF;color: #333333;">PU_Pro:
                                <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                                <br />Categoria:
                                <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                <br />Url_imagen:
                                <asp:Label ID="Url_imagenLabel" runat="server" Text='<%# Eval("Url_imagen") %>' />
                                <br />Descripcion:
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                <br /></td>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="groupPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="4">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                <asp:NumericPagerField />
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">PU_Pro:
                                <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                                <br />Categoria:
                                <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                <br />Url_imagen:
                                <asp:Label ID="Url_imagenLabel" runat="server" Text='<%# Eval("Url_imagen") %>' />
                                <br />Descripcion:
                                <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                <br /></td>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT [PU_Pro], [Categoria], [Url_imagen], [Descripcion] FROM [Productos]"></asp:SqlDataSource>
                </p>
            </article>
        </section>
        <aside class="auto-style4">
              
            <h2 class="auto-style5">Nuevos productos</h2>
            <p class="auto-style5">&nbsp;</p>
            <p class="auto-style7">Vea todos nuestros mas nuevos productos en Nuestro apartado de </p>
            <p class="auto-style7">
                <asp:HyperLink ID="Productos_2" runat="server" NavigateUrl="~/Productos.aspx">Productos</asp:HyperLink>
                .</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
            <p class="auto-style7">&nbsp;</p>
         
        </aside>

        <footer>
            <h2 class="auto-style5">Diseñamos para que puedas disfrutar</h2>
        </footer>

    </div>

    </form>

</body>
</html>
