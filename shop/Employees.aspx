<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="shop.Employees" %>

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
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            width: 61px;
        }
        .auto-style6 {
            height: 26px;
            width: 61px;
        }
        .container {
            width: 100%;
            max-width: 100%;
            //padding: 0 15px;
            //margin: 0 auto;
            font-family: 'Microsoft YaHei';
            font-size: 22pt;
            text-align:center;
            background-color:wheat;
            flex: 1 0 auto;
        }
    </style>
</head>
<body style="height: 1080px; width: 1920px; background-color:">
    <form id="form1" runat="server">
        <header>
            <div class="container">
                <p>
                    <h1>Магазин спортивных товаров</h1>
                </p>
            </div>
        </header>
        <table class="auto-style1">
            
            <tr>
                <td colspan="3" style="font-size: 20pt; font-style: italic; font-family: 'Microsoft YaHei Light'; background-color: #66FFFF;" class="auto-style4">Сотрудники</td>
            </tr>
            <tr>
                <td style="font-size: 20pt" class="auto-style5">Фамилия</td>
                <td>
                    <asp:TextBox ID="surname" runat="server" Width="152px"></asp:TextBox>
                </td>
                <td rowspan="7">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_emp" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." Height="257px" Width="605px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="id_emp" HeaderText="id_emp" InsertVisible="False" ReadOnly="True" SortExpression="id_emp" />
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Post" HeaderText="Post" SortExpression="Post" />
                <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
        </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="font-size: 20pt" class="auto-style5">Имя</td>
                <td>
                    <asp:TextBox ID="name" runat="server" Width="155px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: 20pt" class="auto-style5">Отчество</td>
                <td>
                    <asp:TextBox ID="lastname" runat="server" Width="154px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: 20pt">Должность</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="post_list" runat="server" OnSelectedIndexChanged="post_list_SelectedIndexChanged">
                        <asp:ListItem>Администратор</asp:ListItem>
                        <asp:ListItem>Менеджер</asp:ListItem>
                        <asp:ListItem>Продавец</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-size: 20pt">Логин</td>
                <td class="auto-style3">
                    <asp:TextBox ID="login" runat="server" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: 20pt" class="auto-style5">Пароль</td>
                <td>
                    <asp:TextBox ID="password" runat="server" Width="151px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn_add" runat="server" Height="40px" OnClick="btn_add_Click" Text="Добавить" Width="156px" />
                </td>
            </tr>
        </table>
        <div>
                    <asp:Label ID="Message" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sportshopConnectionString1 %>" SelectCommand="SELECT DISTINCT * FROM [Employee]">
        </asp:SqlDataSource>
        <asp:Button ID="btn_menu" runat="server" Height="49px" OnClick="btn_menu_Click" Text="В главное меню" Width="116px" />
        <asp:Button ID="btn_next" runat="server" Height="49px" OnClick="btn_next_Click" Text="Далее" Width="120px" />
        <asp:Button ID="btn_back" runat="server" Height="49px" OnClick="btn_back_Click" Text="Назад" Width="109px" />
    </form>
</body>
</html>
