<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Vistas.Registro" %>

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
        .auto-style4 {
            text-align: justify;
        }
        .auto-style5 {
            text-align: justify;
            margin-left: 80px;
        }
        .auto-style6 {
            text-align: justify;
            margin-left: 320px;
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
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YaMaquetado/Clientes.aspx">Clientes</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/YaMaquetado/Franquisias.aspx">Franquicias</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/login.aspx.cs">Cuenta</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YaMaquetado/Productos.aspx">Productos</asp:HyperLink>
&nbsp;</h2>
        </nav>

        <section id="contenido">
            <article>
                <h2 class="auto-style4">Registre su cuenta aqui</h2>
                <p class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Nombre:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Apellido<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Genero:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Como nos conocio:<asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </p>
                <p class="auto-style4">Ingrese un alias para su cuenta:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Ingrese su dni:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Correo electronico:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Direccion:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Contraseña:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">Repita su contrasña<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </p>
                <p class="auto-style4">&nbsp;</p>
                <p class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Registrarse" OnClick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </p>
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
            <h2 class="auto-style3">Diseñamos para que puedas disfrutar</h2>
        </footer>

    </div>

    </form>

</body>
</html>
