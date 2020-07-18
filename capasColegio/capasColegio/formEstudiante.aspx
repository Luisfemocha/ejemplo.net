<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formEstudiante.aspx.cs" Inherits="capasColegio.formEstudiante" %>

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
                        <asp:Label ID="lblCE" runat="server" Text="Crear Estudiante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveride" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnome" runat="server" Text="Nombre: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltele" runat="server" Text="Telefono: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tele" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcursoe" runat="server" Text="Curso: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="crusoe" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnvercursoe" runat="server" Text="Verificar Curso." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblvercursoe" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCE" runat="server" Text="Crear" />
                    </td>
                    <td>
                        <asp:Label ID="lblCE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblRE" runat="server" Text="Leer Estudiante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide1" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride1" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveride1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnRE" runat="server" Text="Leer" />
                    </td>
                    <td>
                        <asp:Label ID="lblRE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblUE" runat="server" Text="Actualizar Estudiante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblideviejo" runat="server" Text="ID Viejo: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ideviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnverideviejo" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblverideviejo" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide3" runat="server" Text="Nuevo ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride3" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveride3" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnome3" runat="server" Text="Nuevo Nombre: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nome3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbltele3" runat="server" Text="Nuevo Telefono: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tele3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblcursoe3" runat="server" Text="Nuevo Curso: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="cursoe3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnvercursoe3" runat="server" Text="Verificar Curso." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblvercursoe3" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUE" runat="server" Text="Actualizar" />
                    </td>
                    <td>
                        <asp:Label ID="lblUE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblDE" runat="server" Text="Borrar Estudiante"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblide4" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ide4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveride4" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveride4" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnDE" runat="server" Text="Borrar" />
                    </td>
                    <td>
                        <asp:Label ID="lblDE1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
