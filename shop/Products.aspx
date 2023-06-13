<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="shop.Products" %>

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
            width: 399px;
        }
        .auto-style3 {
            width: 398px;
        }
        .auto-style4 {
            height: 23px;
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
                <td colspan="3" style="background-color: #FF0000">Товары</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td colspan="2" class="auto-style4"></td>
            </tr>
            <tr>
                <td>Название товара</td>
                <td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td rowspan="9">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_prod" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Height="221px" Width="567px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_prod" HeaderText="Код товара" ReadOnly="True" SortExpression="id_prod" />
                <asp:BoundField DataField="Name" HeaderText="Название" SortExpression="Name" />
                <asp:BoundField DataField="Assignment" HeaderText="Назначение" SortExpression="Assignment" />
                <asp:BoundField DataField="Description" HeaderText="Описание" SortExpression="Description" />
                <asp:BoundField DataField="count" HeaderText="Количество в наличии" SortExpression="count" />
                <asp:BoundField DataField="cost" HeaderText="Цена за 1шт." SortExpression="cost" />
                <asp:BoundField DataField="id_provider" HeaderText="Код поставщика" SortExpression="id_provider" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>Назначение</td>
                <td>
                    <asp:DropDownList ID="assignment" runat="server" DataSourceID="SqlDataSource1" DataTextField="Assignment" DataValueField="Assignment">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Описание</td>
                <td>
                    <asp:TextBox ID="description" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Количество на складе</td>
                <td>
                    <asp:TextBox ID="count" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Цена</td>
                <td>
                    <asp:TextBox ID="cost" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Поставщик</td>
                <td>
                    <asp:DropDownList ID="provider" runat="server" DataSourceID="SqlDataSource2" DataTextField="NameComp" DataValueField="id_provider">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" SelectCommand="SELECT [id_provider], [NameComp] FROM [Provider]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td rowspan="2">
                    <asp:Button ID="btn_add" runat="server" Height="41px" OnClick="btn_add_Click" Text="Добавить" Width="131px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" DeleteCommand="DELETE FROM [Product] WHERE [id_prod] = @id_prod" InsertCommand="INSERT INTO [Product] ([Name], [Assignment], [Description], [count], [cost], [id_provider]) VALUES (@Name, @Assignment, @Description, @count, @cost, @id_provider)" ProviderName="<%$ ConnectionStrings:sportshopConnectionString1.ProviderName %>" SelectCommand="SELECT [id_prod], [Name], [Assignment], [Description], [count], [cost], [id_provider] FROM [Product]" UpdateCommand="UPDATE [Product] SET [Name] = @Name, [Assignment] = @Assignment, [Description] = @Description, [count] = @count, [cost] = @cost, [id_provider] = @id_provider WHERE [id_prod] = @id_prod">
            <DeleteParameters>
                <asp:Parameter Name="id_prod" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Assignment" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="count" Type="Int32" />
                <asp:Parameter Name="cost" Type="Double" />
                <asp:Parameter Name="id_provider" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Assignment" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="count" Type="Int32" />
                <asp:Parameter Name="cost" Type="Double" />
                <asp:Parameter Name="id_provider" Type="Int32" />
                <asp:Parameter Name="id_prod" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="В главное меню" />
        <asp:Button ID="btn_next" runat="server" OnClick="btn_next_Click" Text="Далее" Width="97px" />
        <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="Назад" Width="97px" />
    </form>
</body>
</html>
