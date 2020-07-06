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
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/YaMaquetado/Home.aspx">Home</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/YaMaquetado/Clientes.aspx">Clientes</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/YaMaquetado/Franquisias.aspx">Franquicias</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/YaMaquetado/Login.aspx">Cuenta</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/YaMaquetado/Productos.aspx">Productos</asp:HyperLink>
&nbsp;</h2>
        </nav>

        <section id="contenido">
            <article>
                <h2 class="auto-style4">Registre su cuenta aqui</h2>
                <p class="auto-style6">
                    &nbsp;</p>
                <p class="auto-style4">Nombre:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" ErrorMessage="Complete su nombre"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Apellido<asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtApellido" ErrorMessage="Complete su apellido"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Genero:<asp:TextBox ID="txtGenero" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtGenero" ErrorMessage="Complete su genero"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Como nos conocio:<asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </p>
                <p class="auto-style4">Ingrese un alias para su cuenta:<asp:TextBox ID="txtAlias" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAlias" ErrorMessage="Complete su alias"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Ingrese su dni:<asp:TextBox ID="txtDni" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDni" ErrorMessage="Complete su dni"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Correo electronico:<asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Complete su correo"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Direccion:<asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Complete su direccion"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Contraseña:<asp:TextBox ID="txtContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Complete su contraseña"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">Repita su contrasña<asp:TextBox ID="txtRepContraseña" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtContraseña" ErrorMessage="Repita su contraseña"></asp:RequiredFieldValidator>
                </p>
                <p class="auto-style4">&nbsp;</p>
                <p class="auto-style5">
                    <asp:Button ID="btnRegistrarse" runat="server" Text="Registrarse" OnClick="Button1_Click" />
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </p>
            </article>
        </section>

        <aside>
            <h2>Publicidad</h2>
            <p>&nbsp;</p>
            <span style="color: rgb(68, 68, 68); font-family: Nunito, sans-serif, google; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Las Placas Antihumedad Hidroseco son un revestimiento Antihumedad que absorbe la humedad y la microevapora de forma gradual e imperceptible, impide la formación de hongos y salitre transformando los ambientes en un espacio seco y muy saludable. Nuestros revestimientos unen el buen gusto y la solución permanente a problemas de humedad con garantía de 10 años. Son la solución definitiva a la humedad de cimientos, humedad ascendente o humedad por capilaridad.</span></aside>

        <footer>
            <h2 class="auto-style3">Diseñamos para que puedas disfrutar</h2>
        </footer>

    </div>

    </form>

</body>
</html>
