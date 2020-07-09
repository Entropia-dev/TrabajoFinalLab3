<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_Productos.aspx.cs" Inherits="Vistas.admin_Productos" %>

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
                <h2>Nuestros productos en venta son:</h2>
                <p>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Cod_Art_Pro" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FAFAD2; color: #284775;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                                </td>
                                <td>
                                    <asp:Label ID="Cod_Art_ProLabel" runat="server" Text='<%# Eval("Cod_Art_Pro") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Url_imagenLabel" runat="server" Text='<%# Eval("Url_imagen") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #FFCC66; color: #000080;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                </td>
                                <td>
                                    <asp:Label ID="Cod_Art_ProLabel1" runat="server" Text='<%# Eval("Cod_Art_Pro") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Url_imagenTextBox" runat="server" Text='<%# Bind("Url_imagen") %>' />
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
                                <td>
                                    <asp:TextBox ID="Cod_Art_ProTextBox" runat="server" Text='<%# Bind("Cod_Art_Pro") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PU_ProTextBox" runat="server" Text='<%# Bind("PU_Pro") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CategoriaTextBox" runat="server" Text='<%# Bind("Categoria") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="DescripcionTextBox" runat="server" Text='<%# Bind("Descripcion") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="Url_imagenTextBox" runat="server" Text='<%# Bind("Url_imagen") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #FFFBD6; color: #333333;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                                </td>
                                <td>
                                    <asp:Label ID="Cod_Art_ProLabel" runat="server" Text='<%# Eval("Cod_Art_Pro") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Url_imagenLabel" runat="server" Text='<%# Eval("Url_imagen") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table runat="server">
                                <tr runat="server">
                                    <td runat="server">
                                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr runat="server" style="background-color: #FFFBD6; color: #333333;">
                                                <th runat="server"></th>
                                                <th runat="server">Cod_Art_Pro</th>
                                                <th runat="server">PU_Pro</th>
                                                <th runat="server">Stock</th>
                                                <th runat="server">Categoria</th>
                                                <th runat="server">Descripcion</th>
                                                <th runat="server">Url_imagen</th>
                                            </tr>
                                            <tr id="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr runat="server">
                                    <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333">
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
                            <tr style="background-color: #FFCC66; font-weight: bold;color: #000080;">
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" />
                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Editar" />
                                </td>
                                <td>
                                    <asp:Label ID="Cod_Art_ProLabel" runat="server" Text='<%# Eval("Cod_Art_Pro") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PU_ProLabel" runat="server" Text='<%# Eval("PU_Pro") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CategoriaLabel" runat="server" Text='<%# Eval("Categoria") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="Url_imagenLabel" runat="server" Text='<%# Eval("Url_imagen") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RevestimientoaytConnectionString %>" SelectCommand="SELECT * FROM [Productos]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Productos] WHERE [Cod_Art_Pro] = @original_Cod_Art_Pro AND (([PU_Pro] = @original_PU_Pro) OR ([PU_Pro] IS NULL AND @original_PU_Pro IS NULL)) AND [Stock] = @original_Stock AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([Url_imagen] = @original_Url_imagen) OR ([Url_imagen] IS NULL AND @original_Url_imagen IS NULL))" InsertCommand="INSERT INTO [Productos] ([Cod_Art_Pro], [PU_Pro], [Stock], [Categoria], [Descripcion], [Url_imagen]) VALUES (@Cod_Art_Pro, @PU_Pro, @Stock, @Categoria, @Descripcion, @Url_imagen)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Productos] SET [PU_Pro] = @PU_Pro, [Stock] = @Stock, [Categoria] = @Categoria, [Descripcion] = @Descripcion, [Url_imagen] = @Url_imagen WHERE [Cod_Art_Pro] = @original_Cod_Art_Pro AND (([PU_Pro] = @original_PU_Pro) OR ([PU_Pro] IS NULL AND @original_PU_Pro IS NULL)) AND [Stock] = @original_Stock AND (([Categoria] = @original_Categoria) OR ([Categoria] IS NULL AND @original_Categoria IS NULL)) AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([Url_imagen] = @original_Url_imagen) OR ([Url_imagen] IS NULL AND @original_Url_imagen IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Cod_Art_Pro" Type="String" />
                            <asp:Parameter Name="original_PU_Pro" Type="Decimal" />
                            <asp:Parameter Name="original_Stock" Type="Int32" />
                            <asp:Parameter Name="original_Categoria" Type="String" />
                            <asp:Parameter Name="original_Descripcion" Type="String" />
                            <asp:Parameter Name="original_Url_imagen" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Cod_Art_Pro" Type="String" />
                            <asp:Parameter Name="PU_Pro" Type="Decimal" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="Categoria" Type="String" />
                            <asp:Parameter Name="Descripcion" Type="String" />
                            <asp:Parameter Name="Url_imagen" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="PU_Pro" Type="Decimal" />
                            <asp:Parameter Name="Stock" Type="Int32" />
                            <asp:Parameter Name="Categoria" Type="String" />
                            <asp:Parameter Name="Descripcion" Type="String" />
                            <asp:Parameter Name="Url_imagen" Type="String" />
                            <asp:Parameter Name="original_Cod_Art_Pro" Type="String" />
                            <asp:Parameter Name="original_PU_Pro" Type="Decimal" />
                            <asp:Parameter Name="original_Stock" Type="Int32" />
                            <asp:Parameter Name="original_Categoria" Type="String" />
                            <asp:Parameter Name="original_Descripcion" Type="String" />
                            <asp:Parameter Name="original_Url_imagen" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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
             <h2 class="auto-style5">&nbsp;</h2>
       
            <p class="auto-style5">&nbsp;</p>
            <p class="auto-style7"> </p>
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
            <h2 class="auto-style5"></h2>
        </footer>

    </div>

    </form>

</body>
</html>
