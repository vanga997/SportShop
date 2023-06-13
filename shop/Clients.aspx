<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="shop.Clients" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Клиенты</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            width: 369px;
        }
        .auto-style5 {
            width: 233px;
        }
        .auto-style6 {
            width: 369px;
            height: 26px;
        }
        .auto-style7 {
            width: 233px;
            height: 26px;
        }
        .auto-style8 {
            width: 369px;
            height: 30px;
        }
        .auto-style9 {
            width: 233px;
            height: 30px;
        }
        .auto-style11 {
            width: 369px;
            height: 23px;
        }
        .auto-style13 {
            margin-top: 0px;
        }
        .auto-style14 {
            width: 369px;
            height: 33px;
        }
        .auto-style15 {
            width: 233px;
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" style="background-color: #CCFFFF"></td>
                    <td class="auto-style5" style="font-family: 'Microsoft YaHei Light'; background-color: #CCFFFF">Магазин спортивных товаров</td>
                    <td rowspan="10">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" DeleteCommand="DELETE FROM [Client] WHERE [id_client] = @id_client" InsertCommand="INSERT INTO [Client] ([Surname], [Name], [LastName], [BirthDate], [email], [address], [phone]) VALUES (@Surname, @Name, @LastName, @BirthDate, @email, @address, @phone)" ProviderName="<%$ ConnectionStrings:sportshopConnectionString1.ProviderName %>" SelectCommand="SELECT [id_client], [Surname], [Name], [LastName], [BirthDate], [email], [address], [phone] FROM [Client]" UpdateCommand="UPDATE [Client] SET [Surname] = @Surname, [Name] = @Name, [LastName] = @LastName, [BirthDate] = @BirthDate, [email] = @email, [address] = @address, [phone] = @phone WHERE [id_client] = @id_client">
            <DeleteParameters>
                <asp:Parameter Name="id_client" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phone" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Surname" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="BirthDate" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phone" Type="Int32" />
                <asp:Parameter Name="id_client" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_client" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Height="298px" Width="529px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style13">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id_client" HeaderText="Код клиента" ReadOnly="True" SortExpression="id_client" />
                <asp:BoundField DataField="Surname" HeaderText="Фамилия" SortExpression="Surname" />
                <asp:BoundField DataField="Name" HeaderText="Имя" SortExpression="Name" />
                <asp:BoundField DataField="LastName" HeaderText="Отчество" SortExpression="LastName" />
                <asp:BoundField DataField="BirthDate" HeaderText="Дата рождения" SortExpression="BirthDate" />
                <asp:BoundField DataField="email" HeaderText="Электронная почта" SortExpression="email" />
                <asp:BoundField DataField="address" HeaderText="Адрес" SortExpression="address" />
                <asp:BoundField DataField="phone" HeaderText="Номер телефона" SortExpression="phone" />
            </Columns>
        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11" style="background-color: #CCFFFF; font-family: 'Microsoft YaHei UI';">Клиенты</td>
                    <td class="auto-style5" rowspan="2" style="background-color: #CCFFFF"></td>
                </tr>
                <tr>
                    <td class="auto-style11" style="background-color: #CCFFFF"></td>
                </tr>
                <tr>
                    <td class="auto-style14" style="background-color: #CCFFFF">Фамилия</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="surname" runat="server" Width="227px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="background-color: #CCFFFF">Имя</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="name" runat="server" Width="227px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="background-color: #CCFFFF">Отчество</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="lastname" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" style="background-color: #CCFFFF">Дата рождения</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="birthdate" runat="server" Width="227px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #CCFFFF">E-Mail</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="email" runat="server" Width="227px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #CCFFFF">Адрес</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="address" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" style="background-color: #CCFFFF">Номер телефона</td>
                    <td class="auto-style9">
                        <asp:TextBox ID="phone" runat="server" Width="226px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" style="background-color: #CCFFFF">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btn_add" runat="server" Text="Добавить" Width="233px" OnClick="btn_add_Click1" Height="44px" />
                    </td>
                    <td style="background-color: #CCFFFF">
                        <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td style="background-color: #CCFFFF">
                    <asp:Button ID="btn_menu" runat="server" OnClick="btn_menu_Click" Text="В меню" Width="116px" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCFFFF">
                    <asp:Button ID="btn_next" runat="server" OnClick="btn_next_Click" Text="Далее" Width="116px" />
                </td>
            </tr>
            <tr>
                <td style="background-color: #CCFFFF">
                    <asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="Назад" Width="116px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
