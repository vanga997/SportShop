<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Providers.aspx.cs" Inherits="shop.Providers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 401px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            height: 38px;
        }
        .auto-style6 {
            margin-bottom: 0px;
        }
        .auto-style7 {
            width: 237px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #FFFFFF">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">Магазин спортивных товаров</td>
                <td class="auto-style4"></td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5" colspan="3" style="background-color: #FF3300">Поставщики</td>
            </tr>
            <tr>
                <td colspan="3" style="background-color: #FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td>Название компании</td>
                <td class="auto-style7">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td rowspan="6">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_provider" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Height="235px" Width="605px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id_provider" HeaderText="Код поставщика" ReadOnly="True" SortExpression="id_provider" />
                <asp:BoundField DataField="NameComp" HeaderText="Название компании" SortExpression="NameComp" />
                <asp:BoundField DataField="telephone" HeaderText="Номер телефона" SortExpression="telephone" />
                <asp:BoundField DataField="address" HeaderText="Адрес" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="Электронная почта" SortExpression="email" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>Номер телефона</td>
                <td class="auto-style7">
                    <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Адрес</td>
                <td class="auto-style7">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>E-Mail</td>
                <td class="auto-style7">
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td rowspan="2" class="auto-style7">
                    <asp:Button ID="btn_add" runat="server" Height="40px" OnClick="btn_add_Click" Text="Добавить" Width="125px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" DeleteCommand="DELETE FROM [Provider] WHERE [id_provider] = @id_provider" InsertCommand="INSERT INTO [Provider] ([NameComp], [telephone], [address], [email]) VALUES (@NameComp, @telephone, @address, @email)" ProviderName="<%$ ConnectionStrings:sportshopConnectionString1.ProviderName %>" SelectCommand="SELECT [id_provider], [NameComp], [telephone], [address], [email] FROM [Provider]" UpdateCommand="UPDATE [Provider] SET [NameComp] = @NameComp, [telephone] = @telephone, [address] = @address, [email] = @email WHERE [id_provider] = @id_provider">
            <DeleteParameters>
                <asp:Parameter Name="id_provider" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="NameComp" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NameComp" Type="String" />
                <asp:Parameter Name="telephone" Type="Int32" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="id_provider" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btn_menu" runat="server" OnClick="btn_menu_Click" Text="В главное меню" />
        <asp:Button ID="btn_next" runat="server" CssClass="auto-style6" OnClick="Button2_Click" Text="Далее" Width="92px" />
        <asp:Button ID="btn_back" runat="server" OnClick="Button3_Click" Text="Назад" Width="90px" />
    </form>
</body>
</html>
