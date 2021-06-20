<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClinicaInfo.aspx.cs" Inherits="ProyectoH.ClinicaInfo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="width: 97%">
        <tr>
            <td colspan="4" style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="height: 23px">
                <asp:Label ID="Label10" runat="server" Text="Información de las Clínicas"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 539px">&nbsp;</td>
            <td style="width: 382px">&nbsp;</td>
            <td style="width: 79px">&nbsp;</td>
            <td rowspan="14" style="width: 372px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="16px" Width="484px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-left: 0px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                        <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                        <asp:BoundField DataField="Sitio_Web" HeaderText="Sitio_Web" SortExpression="Sitio_Web" />
                        <asp:BoundField DataField="Horario_Atencion" HeaderText="Horario_Atencion" SortExpression="Horario_Atencion" />
                        <asp:BoundField DataField="Provincia" HeaderText="Provincia" SortExpression="Provincia" />
                        <asp:BoundField DataField="Distrito" HeaderText="Distrito" SortExpression="Distrito" />
                        <asp:BoundField DataField="Canton" HeaderText="Canton" SortExpression="Canton" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString %>" SelectCommand="SELECT * FROM [CLINICA]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label1" runat="server" Text="Id Clinica:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="txtId" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label2" runat="server" Text="Nombre Clinica:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtNombre" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label3" runat="server" Text="Correo electronico:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtCorreo" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label4" runat="server" Text="Sitio Web"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtSitio" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label5" runat="server" Text="Telefono:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtNum" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label6" runat="server" Text="Direccion:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtDir" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label7" runat="server" Text="Provincia:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtProv" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label8" runat="server" Text="Canton:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtCanton" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label9" runat="server" Text="Distrito:"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtDis" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">
                <asp:Label ID="Label11" runat="server" Text="Horario"></asp:Label>
            </td>
            <td style="width: 382px">
                <asp:TextBox ID="TxtHorario" runat="server" Width="300px"></asp:TextBox>
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">&nbsp;</td>
            <td style="width: 382px">&nbsp;</td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">&nbsp;</td>
            <td style="width: 382px">
                <asp:Button ID="Button1" runat="server" Text="Agregar" Width="75px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Editar" Width="73px" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Eliminar" Width="73px" OnClick="Button3_Click" />
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 539px">&nbsp;</td>
            <td style="width: 382px">
                <asp:Button ID="Button4" runat="server" Text="Cancelar" Width="182px" />
            </td>
            <td style="width: 79px">&nbsp;</td>
        </tr>
    </table>
    <br /><br />

</asp:Content>



