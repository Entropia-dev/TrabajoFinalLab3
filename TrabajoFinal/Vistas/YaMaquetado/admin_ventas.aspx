<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_ventas.aspx.cs" Inherits="Vistas.admin_ventas" %>

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
            <h1 class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Bienvenidos a A&TI Revestimientos</h1>
        </header>

        <nav>
            <h2 class="auto-style2">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YaMaquetado/Clientes.aspx">Clientes</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/YaMaquetado/Franquisias.aspx">Franquicias</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx.cs">Cuenta</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YaMaquetado/Productos.aspx">Productos</asp:HyperLink>
&nbsp;</h2>
        </nav>

        <section id="contenido">
            <article>
                <h2>Nuestras ventas fueron:</h2>
                <p>
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="Conector_ventas" DataKeyNames="Num_Doc_Com">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                </td>
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel1" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>No se han devuelto datos.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                </td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AliasTextBox" runat="server" Text='<%# Bind("Alias") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="FechaTextBox" runat="server" Text='<%# Bind("Fecha") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th runat="server">Num_Doc_Com</th>
                                                <th runat="server">Total</th>
                                                <th runat="server">Alias</th>
                                                <th runat="server">Fecha</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server">
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
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Label ID="Num_Doc_ComLabel" runat="server" Text='<%# Eval("Num_Doc_Com") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AliasLabel" runat="server" Text='<%# Eval("Alias") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="FechaLabel" runat="server" Text='<%# Eval("Fecha") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="Conector_ventas" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Ventas]"></asp:SqlDataSource>
                </p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>&nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>&nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>&nbsp;</p>
                <p>
                    &nbsp;</p>
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
