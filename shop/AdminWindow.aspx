<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminWindow.aspx.cs" Inherits="shop.MainWindow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Главное меню</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            margin-left: 80px;
            height: 22px;
            width: 1799px;
        }
        .auto-style11 {
            width: 221px;
            height: 30px;
        }
        .auto-style12 {
            width: 220px;
            text-align: center;
            height: 30px;
        }
        .auto-style14 {
            margin-left: 40px;
            height: 23px;
            }
        .auto-style16 {
            text-align: center;
            width: 1312px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            width: 100%;
            height: 105px;
        }
        .container {
            width: 100%;
            max-width: 100%;
            padding: 0 15px;
            margin: 0 auto;
            font-family: 'Microsoft YaHei';
            font-size: 22pt;
            text-align:center;
            background-color:wheat;
        }
        .footer {
            
            background-color:wheat;
            font-family: 'Microsoft YaHei';
            font-size: 18pt;
            width: 100%;
            font-style: italic;
            grid-row-start: 2;
            grid-row-end: 3;

        }
        
        .auto-style19 {
            max-width: 100%; //;
            padding: 0 15px;
//margin: 0 auto;
            font-family: 'Microsoft YaHei';
            font-size: 22pt;
            text-align: center;
            background-color: wheat;
        }
        
        .auto-style20 {
            width: 98%;
            max-width: 100%;
            padding: 0 15px;
            margin: 0 auto;
            font-family: 'Microsoft YaHei';
            font-size: 22pt;
            text-align: center;
            background-color: wheat;
        }
        
    </style>
</head>
<body style="width: 100%; height: 100%; background-color: chocolate">

    <header>
        <div class="auto-style20">
            <p>
                <td class="auto-style2" style="font-family: 'Microsoft YaHei'; font-size: 22pt; text-align:center">Магазин спортивных товаров</td> 
            </p>
                      
        </div>
    </header>

    <form id="form1" runat="server">
        <table class="auto-style1">
            
            <tr>
                <td class="auto-style5" style="font-size: 18pt;">Добро пожаловать,
                    <asp:Label ID="user_name" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
        <asp:Button ID="btn_exit" runat="server" OnClick="btn_exit_Click" Text="Выход" Width="122px" BackColor="#FFFFCC" BorderColor="White" Font-Bold="True" Font-Italic="False" Font-Names="Microsoft YaHei" Font-Overline="False" Font-Strikeout="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14" style="font-size: 18pt;" colspan="2">
                    <p class="auto-style16">
                        <asp:Label ID="adm_name" runat="server" Text="Label"></asp:Label>
                    </p>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2">Разделы сайта</td>
            </tr>
        </table>
        <table class="auto-style18">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="btn_client" runat="server" OnClick="btn_client_Click" Text="Клиенты" Width="278px" Height="38px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="btn_employee" runat="server" OnClick="btn_employee_Click" Text="Сотрудники" Width="299px" Height="38px" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="btn_order" runat="server" OnClick="btn_order_Click" Text="Заказы" Width="309px" Height="38px" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btn_product" runat="server" OnClick="btn_product_Click" Text="Товары" Width="230px" Height="38px" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="btn_prov" runat="server" OnClick="btn_prov_Click" Text="Поставщики" Width="304px" Height="38px" />
                </td>
            </tr>
        </table>
    <footer class="footer">
    </footer>                
    </form>
    
</body>
</html>
