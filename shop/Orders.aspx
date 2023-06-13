<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="shop.Orders" %>

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
            width: 529px;
        }
        .auto-style3 {
            width: 226px;
        }
        .auto-style4 {
            width: 287px;
        }
        .auto-style5 {
            width: 287px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 287px;
            height: 21px;
        }
        .auto-style9 {
            width: 287px;
            height: 26px;
        }
        .auto-style11 {
            height: 23px;
            width: 4px;
        }
        .auto-style12 {
            width: 4px;
        }
        .auto-style13 {
            height: 21px;
            width: 4px;
        }
        .auto-style14 {
            height: 26px;
            width: 4px;
        }
        .auto-style15 {
            width: 31px;
        }
        .auto-style16 {
            height: 23px;
            width: 31px;
        }
        .auto-style17 {
            height: 21px;
            width: 31px;
        }
        .auto-style18 {
            height: 26px;
            width: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">Магазин спортивных товаров</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6" colspan="2" style="background-color: #FF3300">Заказы</td>
                <td class="auto-style11" style="background-color: #FF3300">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Количество товаров</td>
                <td class="auto-style16">
                    <asp:TextBox ID="count" runat="server" Width="159px"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Цена</td>
                <td class="auto-style18">
                    <asp:TextBox ID="cost" runat="server" Width="157px"></asp:TextBox>
                </td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style7">Клиент</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="clients" runat="server" DataSourceID="SqlDataSource2" DataTextField="id_client" DataValueField="id_client" OnSelectedIndexChanged="clients_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" SelectCommand="SELECT [id_client], [Surname], [Name], [LastName] FROM [Client]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Сотрудник</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="employees" runat="server" DataSourceID="SqlDataSource3" DataTextField="id_emp" DataValueField="id_emp" OnSelectedIndexChanged="employees_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" SelectCommand="SELECT [id_emp] FROM [Employee]" OnSelecting="SqlDataSource3_Selecting"></asp:SqlDataSource>
                </td>
                <td class="auto-style12">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Товар</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="products" runat="server" DataSourceID="SqlDataSource4" DataTextField="id_prod" DataValueField="id_prod" OnSelectedIndexChanged="products_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" SelectCommand="SELECT [id_prod] FROM [Product]" OnSelecting="SqlDataSource4_Selecting"></asp:SqlDataSource>
                </td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style15" rowspan="2">
                    <asp:Button ID="btn_add" runat="server" Height="47px" OnClick="btn_add_Click" Text="Добавить" Width="168px" />
                </td>
                <td class="auto-style12" rowspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_order" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Height="235px" Width="499px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="id_order" HeaderText="Код заказа" ReadOnly="True" SortExpression="id_order" />
                <asp:BoundField DataField="count" HeaderText="Количество товаров" SortExpression="count" />
                <asp:BoundField DataField="cost" HeaderText="Стоимость" SortExpression="cost" />
                <asp:BoundField DataField="id_client" HeaderText="Код клиента" SortExpression="id_client" />
                <asp:BoundField DataField="id_emp" HeaderText="Код сотрудника" SortExpression="id_emp" />
                <asp:BoundField DataField="id_prod" HeaderText="Код поставщика" SortExpression="id_prod" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" DeleteCommand="DELETE FROM [Order] WHERE [id_order] = @id_order" InsertCommand="INSERT INTO [Order] ([count], [cost], [id_client], [id_emp], [id_prod]) VALUES (@count, @cost, @id_client, @id_emp, @id_prod)" ProviderName="<%$ ConnectionStrings:sportshopConnectionString1.ProviderName %>" SelectCommand="SELECT [id_order], [count], [cost], [id_client], [id_emp], [id_prod] FROM [Order]" UpdateCommand="UPDATE [Order] SET [count] = @count, [cost] = @cost, [id_client] = @id_client, [id_emp] = @id_emp, [id_prod] = @id_prod WHERE [id_order] = @id_order">
            <DeleteParameters>
                <asp:Parameter Name="id_order" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="count" Type="Int32" />
                <asp:Parameter Name="cost" Type="Double" />
                <asp:Parameter Name="id_client" Type="Int32" />
                <asp:Parameter Name="id_emp" Type="Int32" />
                <asp:Parameter Name="id_prod" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="count" Type="Int32" />
                <asp:Parameter Name="cost" Type="Double" />
                <asp:Parameter Name="id_client" Type="Int32" />
                <asp:Parameter Name="id_emp" Type="Int32" />
                <asp:Parameter Name="id_prod" Type="Int32" />
                <asp:Parameter Name="id_order" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btn_menu" runat="server" OnClick="btn_menu_Click" Text="В главное меню" Width="107px" />
        <asp:Button ID="btn_next" runat="server" OnClick="btn_next_Click" Text="Далее" Width="101px" />
        <asp:Button ID="btn_exit" runat="server" OnClick="btn_exit_Click" Text="Назад" Width="100px" />
    </form>
</body>
</html>
