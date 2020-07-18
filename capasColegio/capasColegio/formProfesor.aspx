<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formProfesor.aspx.cs" Inherits="capasColegio.formProfesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblCP" runat="server" Text="Crear Profesor"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp" runat="server" Text="Verificar ID." OnClick="btnveridp_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomp" runat="server" Text="Nombre: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomp" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltelp" runat="server" Text="Telefono: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="telp" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCP" runat="server" Text="Crear" OnClick="btnCP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblCP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblRP" runat="server" Text="Leer Profesor"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp1" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp1" runat="server" Text="Verificar ID." OnClick="btnveridp1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnRP" runat="server" Text="Leer" OnClick="btnRP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblRP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblUP" runat="server" Text="Actualizar Profesor"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidpviejo" runat="server" Text="ID Viejo: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idpviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridpviejo" runat="server" Text="Verificar ID." OnClick="btnveridpviejo_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridpviejo" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp3" runat="server" Text="Nuevo ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp3" runat="server" Text="Verificar ID." OnClick="btnveridp3_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp3" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomp3" runat="server" Text="Nuevo Nombre: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomp3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltelp3" runat="server" Text="Nuevo Telefono: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="telp3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUP" runat="server" Text="Actualizar" OnClick="btnUP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblUP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblDP" runat="server" Text="Borrar Profesor"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidp4" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idp4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridp4" runat="server" Text="Verificar ID." OnClick="btnveridp4_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridp4" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnDP" runat="server" Text="Borrar" OnClick="btnDP_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblDP1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
