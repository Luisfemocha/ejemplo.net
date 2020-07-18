<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formCurso.aspx.cs" Inherits="capasColegio.formCurso" %>

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
                        <asp:Label ID="lblCC" runat="server" Text="Crear Curso"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomc" runat="server" Text="Nombre: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblencargado" runat="server" Text="Encargado: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="encargado" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnverencargado" runat="server" Text="Verificar Encargado." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblverencargado" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCC" runat="server" Text="Crear" />
                    </td>
                    <td>
                        <asp:Label ID="lblCC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblRC" runat="server" Text="Leer Curso"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidc1" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idc1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridc1" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridc1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnRC" runat="server" Text="Leer" />
                    </td>
                    <td>
                        <asp:Label ID="lblRC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblUC" runat="server" Text="Actualizar Curso"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidcviejo" runat="server" Text="ID Viejo: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idcviejo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridcviejo" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridcviejo" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblnomc3" runat="server" Text="Nuevo Nombre: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="nomc3" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblencargado3" runat="server" Text="Nuevo Encargado: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="encargado3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnverencargado3" runat="server" Text="Verificar Encargado." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblverencargado3" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUC" runat="server" Text="Actualizar" />
                    </td>
                    <td>
                        <asp:Label ID="lblUC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <hr />
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblDC" runat="server" Text="Borrar Curso"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblidc4" runat="server" Text="ID: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="idc4" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnveridc4" runat="server" Text="Verificar ID." />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblveridc4" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnDC" runat="server" Text="Borrar" />
                    </td>
                    <td>
                        <asp:Label ID="lblDC1" runat="server" Text=""></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
